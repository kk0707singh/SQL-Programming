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
