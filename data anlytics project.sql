SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    AVG(Discount) AS Average_Discount
FROM Orders;
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT 
    [Product Name],
    SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY [Product Name]
ORDER BY Total_Sales DESC
LIMIT 5;
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM Orders
GROUP BY Category;
SELECT 
    AVG(Sales / NULLIF(Quantity, 0)) AS Average_Price,
    MAX(Sales / NULLIF(Quantity, 0)) AS Max_Price,
    MIN(Sales / NULLIF(Quantity, 0)) AS Min_Price
FROM Orders;
