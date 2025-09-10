WITH PriceUnits AS (
    SELECT
        u.product_id,
        u.purchase_date,
        u.units,
        p.price
    FROM
        unitssold u
        JOIN products p ON u.product_id = p.product_id
    WHERE
        u.purchase_date BETWEEN p.start_date AND p.end_date
),
TotalRevenue AS (
    SELECT
        product_id,
        SUM(units * price) AS total_revenue,
        SUM(units) AS total_units
    FROM
        PriceUnits
    GROUP BY
        product_id
),
AllProducts AS (
    SELECT DISTINCT product_id
    FROM products
)

SELECT
    ap.product_id,
    ROUND(COALESCE(tr.total_revenue, 0) / COALESCE(NULLIF(tr.total_units, 0), 0), 2) AS average_price
FROM
    AllProducts ap
    LEFT JOIN TotalRevenue tr ON ap.product_id = tr.product_id
ORDER BY
    ap.product_id;
