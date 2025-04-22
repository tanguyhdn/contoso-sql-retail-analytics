-- View: vw_CleanedSales
-- Description:
-- This view combines in-store sales data from the FactSales table with relevant dimension tables to produce a clean dataset for analysis.

USE ContosoRetailDW;
GO

CREATE OR ALTER VIEW vw_CleanedSales AS
SELECT
    fs.SalesKey,
    d.FullDateLabel AS OrderDate,
    ps.ProductSubcategoryName AS Subcategory,
    p.ProductName AS ProductName,
    p.BrandName,
    s.StoreName,
    g.CityName,
    g.StateProvinceName,
    g.RegionCountryName,
    fs.SalesAmount,
    fs.TotalCost,
    fs.SalesAmount - fs.TotalCost AS Profit,
    fs.SalesQuantity
FROM FactSales fs
JOIN DimDate d ON fs.DateKey = d.DateKey
JOIN DimProduct p ON fs.ProductKey = p.ProductKey
JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN DimStore s ON fs.StoreKey = s.StoreKey
JOIN DimGeography g ON s.GeographyKey = g.GeographyKey
WHERE fs.SalesAmount > 0;
