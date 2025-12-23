-- RFM ANALYSIS (2011 ONLY, SQLITE SAFE)

WITH cleaned AS (
    SELECT
        "CustomerID",
        "Invoice",
        "InvoiceDate",
        "Quantity",
        "Price"
    FROM online_retail
    WHERE "CustomerID" IS NOT NULL
      AND "Quantity" > 0
      AND "Invoice" NOT LIKE 'C%'
      AND DATE("InvoiceDate") BETWEEN '2011-01-01' AND '2011-12-31'
),

rfm_base AS (
    SELECT
        "CustomerID" AS CustomerID,
        MAX("InvoiceDate") AS last_purchase_date,
        COUNT(DISTINCT "Invoice") AS frequency,
        SUM("Quantity" * "Price") AS monetary
    FROM cleaned
    GROUP BY "CustomerID"
),

analysis_date AS (
    SELECT MAX("InvoiceDate") AS max_date FROM cleaned
)

SELECT
    r.CustomerID,
    CAST(JULIANDAY(a.max_date) - JULIANDAY(r.last_purchase_date) AS INTEGER) AS recency,
    r.frequency,
    ROUND(r.monetary, 2) AS monetary
FROM rfm_base r
CROSS JOIN analysis_date a;
