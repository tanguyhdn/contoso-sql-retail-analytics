-- Profit by Store
-- Description: Calculates total profit earned by each store.

USE ContosoRetailDW;

SELECT
    StoreName,
    SUM(Profit) AS TotalProfit
FROM vw_CleanedSales
GROUP BY StoreName
ORDER BY TotalProfit DESC;
