SELECT * FROM dbo.engagement_data

SELECT EngagementID,ContentID,CampaignID,ProductID,UPPER(REPLACE(ContentType,'Socialmedia','Social Media')) as ContentType,LEFT(ViewsClicksCombined,CHARINDEX('-',ViewsClicksCombined) -1) as Views,
RIGHT(ViewsClicksCombined,LEN(ViewsClicksCombined)-CHARINDEX('-',ViewsClicksCombined)) as Clicks,Likes,FORMAT(CONVERT(DATE,EngagementDate),'dd.MM.yyy') as EngagementDate
	FROM dbo.engagement_data

	WHERE ContentType!='NewsLetter'