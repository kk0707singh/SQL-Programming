SELECT * from Sales

SELECT SUM(Quantity) as total_quant from Sales


SELECT sum(Quantity) as total_quntity, sum(TotalAmount) as sumofamnt from Sales


SELECT avg(Quantity) as avg_quant from Sales


SELECT avg(Quantity) as avg_quant, avg(TotalAmount) as avgtotalamnt from Sales



-- sum of quantity, sum of total amount, avg of quantity, avg of total amount for each distinct product:
SELECT
ProductID,
sum(Quantity) as TotalQuantity,
sum(TotalAmount) as sumOfAmount,
avg(Quantity) as AvgQuantitySold,
avg(TotalAmount) as avgAmount
FROM Sales
 
GROUP BY ProductID


-- sum of quantity sum of amount avg of quantity and avg of amount for distinct values 
-- of product id and store id
SELECT
ProductID,
storeID,
SUM(Quantity) as TotalQuntity,
SUM(TotalAmount) as sumtotalAmnt,
AVG(Quantity) as avgQuantity,
AVG(TotalAmount) as avgTotalAmount
from Sales
GROUP BY ProductID, StoreID


-- count:
SELECT * FROM dbo.Sales

SELECT COUNT(*) [no of rows] FROM dbo.Sales

SELECT COUNT(paymentmethod) [no of records] from dbo.Sales

SELECT count(DISTINCT ProductID) [distinct prods] from Sales

SELECT PaymentMethod,COUNT(DISTINCT paymentmethod) [distinct pay mode] from Sales
GROUP BY PaymentMethod


SELECT PaymentMethod,COUNT(paymentmethod) [pay mode] from Sales
GROUP BY PaymentMethod


SELECT PaymentMethod,COUNT(*) [pay mode] from Sales
GROUP BY PaymentMethod
