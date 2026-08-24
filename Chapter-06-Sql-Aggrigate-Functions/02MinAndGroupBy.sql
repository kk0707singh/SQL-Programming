SELECT * from Sales
SELECT min(quantity) as [min_quantity] FROM Sales

SELECT MIN(saleDate) as [min_sale_date] from Sales

SELECT min(PaymentMethod) as [min_payment_method] from Sales

-- min with GROUP BY: show minimum total amnt for each storeID
SELECT storeID, min(totalamount) as [min_t_amnt] FROM Sales
GROUP BY StoreID