SELECT * FROM Sales

-- total sales, avg sale, total quantity and avg quantity for each distinct product
SELECT
ProductID,
SUM(TotalAmount) as total_sales,
SUM(Quantity) as total_quantity,
AVG(TotalAmount) as avgtotalAmount,
AVG(Quantity) as Avg_quantity
FROM Sales

GROUP BY ProductID
HAVING SUM(TotalAmount)<700 and SUM(Quantity) = 21


-- having and where difference
SELECT * FROM Sales
WHERE TotalAmount>=161

SELECT ProductID, SUM(TotalAmount) [sumsales] FROM Sales
GROUP BY ProductID
HAVING SUM(TotalAmount)<700


SELECT ProductID, SUM(TotalAmount) [sumofsales] FROM Sales
WHERE TotalAmount>=161
GROUP BY ProductID
HAVING SUM(TotalAmount)>=250
ORDER BY ProductID DESC



SELECT ProductID, SUM(TotalAmount) [sumofsales] FROM Sales
WHERE TotalAmount>=161
GROUP BY ProductID
HAVING SUM(TotalAmount)>=250
ORDER BY SUM(TotalAmount) ASC