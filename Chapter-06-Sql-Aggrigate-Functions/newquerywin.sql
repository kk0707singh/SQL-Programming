
-- for max & groupby query
SELECT * FROM dbo.Sales

SELECT MAX(TotalAmount) FROM Sales
SELECT MAX(TotalAmount) as [maximum_value] FROM Sales


SELECT MAX(SaleDate) as [max salesdate] FROM Sales

SELECT max(PaymentMethod) as [maxPayMethod] from Sales

-- maximum quantity sold for each product id using group by
SELECT ProductID, MAX(Quantity) [max_quzntity] FROM Sales
GROUP BY ProductID


SELECT * from Sales
-- maximum total amount for all distinct date in sale date column:
SELECT SaleDate, MAX(TotalAmount) AS [max_total_amnt] FROM Sales
GROUP BY SaleDate