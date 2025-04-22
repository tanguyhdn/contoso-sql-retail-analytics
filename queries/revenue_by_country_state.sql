-- Revenue by Country and State
-- Description: Aggregates revenue by geographic location.

USE ContosoRetailDW;

SELECT
    RegionCountryName AS Country,
    StateProvinceName,
    SUM(SalesAmount) AS Revenue
FROM vw_CleanedSales
GROUP BY RegionCountryName, StateProvinceName
ORDER BY Revenue DESC;
