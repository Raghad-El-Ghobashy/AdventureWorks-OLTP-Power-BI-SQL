

-- Creating Fact Table using VIEWs

CREATE VIEW Fact_Sales

AS

SELECT 

       SOH.SalesOrderID
	  ,SOH.SalesPersonID
	  ,SOH.TerritoryID
	  ,SOH.ShipMethodID
	  ,SOD.SalesOrderDetailID
	  ,SOD.ProductID
	  ,SOD.LineTotal
	  ,SOD.OrderQty
	  ,SOD.UnitPrice
      ,SOH.OrderDate
      ,SOH.DueDate
      ,SOH.ShipDate
	  ,SOH.SubTotal
	  ,SOH.TaxAmt
	  ,SOH.Freight
	  ,SOH.TotalDue
	  ,SOH.Status AS StatusID
	  ,(SOD.LineTotal * SOH.Freight) / SOH.SubTotal AS Total_Freight
	  ,(SOD.LineTotal * SOH.TaxAmt) / SOH.SubTotal AS Total_Tax

FROM 
         [Sales].[SalesOrderDetail] AS SOD
LEFT JOIN
         [Sales].[SalesOrderHeader] AS SOH

ON SOD.SalesOrderID = SOH.SalesOrderID





--- Creating Product Dimension using VIEWs

CREATE VIEW Dim_Product

AS
  SELECT 
         P.ProductID,
		 P.Name AS ProductName,
		 P.ProductSubcategoryID,
		 P.Color,
		 P.Class,
		 P.Style,
		 P.ProductLine,
		 S.Name AS SubCategory,
		 S.ProductCategoryID,
		 C.Name AS Category
     
FROM [Production].[Product] AS P
LEFT JOIN [Production].[ProductSubcategory] AS S
ON P.ProductSubcategoryID = S.ProductSubcategoryID
LEFT JOIN [Production].[ProductCategory] AS C
ON S.ProductCategoryID = C.ProductCategoryID




--- Creating SalesPerson Dimension using VIEWs

CREATE VIEW Dim_Sales_Person

AS
  SELECT 
         P.BusinessEntityID AS SalesPersonID,
		 P.FirstName + ' ' + P.LastName AS FullName ,
		 SP.SalesLastYear,
		 SP.SalesYTD,
		 SP.Bonus,
		 PS.TerritoryID,
		 PS.Name AS SalesPersonTerritory
     
FROM [Person].[Person] AS P
LEFT JOIN [Sales].[SalesPerson] AS SP
ON P.BusinessEntityID = SP.BusinessEntityID
LEFT JOIN [Person].[StateProvince] AS PS
ON SP.TerritoryID = PS.TerritoryID




-- Creating Territory Dimension using VIEWs

CREATE VIEW Dim_Territory

AS

SELECT [TerritoryID]
      ,[Name] AS TerritoryName
      ,[CountryRegionCode]
      ,[Group] AS Region
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[CostYTD]
      ,[CostLastYear]
FROM [Sales].[SalesTerritory]



--- Creating ShipMethod Dimension using VIEWs

CREATE VIEW Dim_Ship_Method

AS
  SELECT 
         SH.ShipMethodID,
		 SH.Name AS ShipMethod
     
FROM [Purchasing].[ShipMethod] AS SH



SELECT 1 StatusId, [dbo].[ufnGetSalesOrderStatusText](1)
UNION ALL
SELECT 2 StatusId, [dbo].[ufnGetSalesOrderStatusText](2)
UNION ALL
SELECT 3 StatusId, [dbo].[ufnGetSalesOrderStatusText](3)

CREATE VIEW Dim_Status
AS
WITH CTE 
AS
(
SELECT 1 StatusId, [dbo].[ufnGetSalesOrderStatusText](1) AS StatusName
UNION ALL
SELECT StatusId + 1, [dbo].[ufnGetSalesOrderStatusText](StatusId + 1) AS StatusName
FROM CTE
WHERE StatusId < 6
) 
SELECT * FROM CTE