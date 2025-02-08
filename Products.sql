SELECT * FROM dbo.products

--******************************************************


SELECT ProductID,ProductName,Price,
CASE 
	
	WHEN Price<50 then 'Low'
	WHEN Price BETWEEN 50 AND 200 then 'Medium'
	ELSE 'High'

END AS PriceCategory



FROM dbo.products 



