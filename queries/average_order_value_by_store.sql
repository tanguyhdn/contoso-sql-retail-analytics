-- Average Order Value by Store
-- Description: Calculates average revenue per order per store.

SELECT
    StoreName,
    COUNT(DISTINCT SalesKey) AS TotalOrders,
    SUM(SalesAmount) AS TotalRevenue,
    ROUND(SUM(SalesAmount) / COUNT(DISTINCT SalesKey), 2) AS AvgOrderValue
FROM vw_CleanedSales
GROUP BY StoreName
ORDER BY AvgOrderValue DESC;
