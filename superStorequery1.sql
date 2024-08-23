SELECT * FROM [supermarket_sales - Sheet1];

--Total Sales in the supermarket
SELECT sum(Total) AS Total_sales FROM [supermarket_sales - Sheet1];

--Adding a new field known as Profit
ALTER TABLE [supermarket_sales - Sheet1] ADD Profit INT;
ALTER TABLE [supermarket_sales - Sheet1] ADD Profit FLOAT;

SET sql_safe_updates = 0;
--Calculating Profit
UPDATE [supermarket_sales - Sheet1] SET Profit = Unit_price * Quantity;

--Total Quantity in the supermarket
SELECT SUM(Quantity) AS Total_quantity FROM [supermarket_sales - Sheet1];

--Total Payment in the supermarket
SELECT payment, COUNT(payment) AS Total_payment FROM [supermarket_sales - Sheet1] GROUP BY Payment;

--Total Tax% in the supermarket
SELECT * FROM [supermarket_sales - Sheet1];
SELECT SUM(Tax_5) AS Total_Tax FROM [supermarket_sales - Sheet1];

--Gender by Total_sales
SELECT * FROM [supermarket_sales - Sheet1];
SELECT Gender, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY Gender ORDER BY Total_sales DESC;

--City by Total_sales
SELECT * FROM [supermarket_sales - Sheet1];
SELECT City, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY City ORDER BY Total_sales DESC;

--Branch by Total_sales
SELECT * FROM [supermarket_sales - Sheet1];
SELECT Branch, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY Branch ORDER BY Total_sales DESC;
--Product by Total_sales
SELECT * FROM [supermarket_sales - Sheet1];
SELECT Product_line, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY Product_line ORDER BY Total_sales DESC;

--Year by Total_sales
SELECT * FROM [supermarket_sales - Sheet1];
SELECT DATENAME(year, Date) AS Year, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY DATENAME(year, Date);

--Month by Total_sales
SELECT * FROM [supermarket_sales - Sheet1]; 
SELECT DATENAME(month, Date) AS Month, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY DATENAME(month, Date);

--Quarter by Total_sales
SELECT * FROM [supermarket_sales - Sheet1]; 
SELECT DATENAME(quarter, Date) AS Month, SUM(Total) AS Total_sales FROM [supermarket_sales - Sheet1] GROUP BY DATENAME(quarter, Date);

