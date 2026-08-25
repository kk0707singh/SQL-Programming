SELECT * FROM dbo.Sales

SELECT PaymentMethod, SUM(TotalAmount) as sumSales FROM Sales
GROUP BY PaymentMethod


SELECT ProductID, PaymentMethod, SUM(TotalAmount) as total FROM dbo.Sales
GROUP BY ProductID, PaymentMethod
ORDER BY ProductID