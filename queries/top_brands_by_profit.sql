-- Top 10 Brands by Total Profit
-- Description: Lists the most profitable product brands.

USE ContosoRetailDW;
GO

SELECT TOP 10
    BrandName,
    SUM(Profit) AS TotalProfit
FROM vw_CleanedSales
GROUP BY BrandName
ORDER BY TotalProfit DESC;
