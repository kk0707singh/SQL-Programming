-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

SELECT * FROM Products
 
-- Example1: Add a column to categorize each product into category high, medium and low
SELECT 
*,
CASE 
    WHEN Price > 500 THEN  'High'
    WHEN Price <= 500 and Price >= 200 THEN 'Medium'
    ELSE 'Low'
END AS [High/Med/Low]
FROM Products

-- Example2: provide priority to each category and sort the data according to that priority
SELECT * FROM Products
ORDER BY
CASE 
    WHEN Category IN('Electronics') THEN 1
    WHEN Category IN('Furniture') THEN 2
    ELSE  3
END
-- same sol for above problem
SELECT * FROM Products
ORDER BY
CASE 
    WHEN Category IN('Electronics') THEN 1
    WHEN Category IN('Furniture') THEN 2
    WHEN Category = 'Accessories' THEN 3
END





-- nested case statement:
SELECT * FROM Products
-- Example1: we need to group the data based on col category and price into diff categories i.e Affordable and primium
SELECT 
*,
CASE 
    WHEN Category = 'Electronics' THEN
        case when Price>=300 then 'Primium electronics'
    ELSE  'Affordable electronics'
    END

    WHEN Category = 'Furniture' then
        case when price>=250 then 'Primium furniture'
        else 'Affordable furniture'
        end
else
        case when price>=25 then 'primium Accessories'
        else 'Affordable Accessories'
        END
END as[groups]
FROM Products


-- same sol for above problem
SELECT 
*,
CASE 
    WHEN Category = 'Electronics' THEN
        case when Price>=300 then 'Primium electronics'
    ELSE  'Affordable electronics'
    END

    WHEN Category = 'Furniture' then
        case when price>=250 then 'Primium furniture'
        else 'Affordable furniture'
        end
else
        case when price>=25 then 'primium Accessories'
        else 'Affordable Accessories'
        END
END as[groups]
FROM Products