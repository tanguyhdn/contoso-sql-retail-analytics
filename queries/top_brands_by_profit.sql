-- Top 10 Brands by Total Profit
-- Description: Lists the most profitable product brands.

SELECT TOP 10
    BrandName,
    SUM(Profit) AS TotalProfit
FROM vw_CleanedSales
GROUP BY BrandName
ORDER BY TotalProfit DESC;
