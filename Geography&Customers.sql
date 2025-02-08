SELECT * FROM dbo.geography

SELECT * FROM dbo.customers


SELECT c.CustomerID,c.CustomerName,c.Email,c.Gender,c.age,g.Country,g.City FROM dbo.customers as c

	LEFT JOIN  dbo.geography g  ON c.GeographyID=g.GeographyID