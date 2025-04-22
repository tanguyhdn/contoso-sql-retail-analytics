-- Monthly Revenue Trend
-- Description: Tracks total sales revenue per month.

USE ContosoRetailDW;

SELECT
    LEFT(OrderDate, 7) AS Month,
    SUM(SalesAmount) AS MonthlyRevenue
FROM vw_CleanedSales
GROUP BY LEFT(OrderDate, 7)
ORDER BY Month;
