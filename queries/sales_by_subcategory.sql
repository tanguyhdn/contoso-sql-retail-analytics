-- Sales by Product Subcategory
-- Description: Calculates total revenue by product subcategory.

SELECT
    Subcategory,
    SUM(SalesAmount) AS TotalRevenue
FROM vw_CleanedSales
GROUP BY Subcategory
ORDER BY TotalRevenue DESC;