CREATE VIEW vw_ChurnData AS
SELECT * 
FROM dbo.prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');


create view vw_JoinData as 
SELECT * 
FROM dbo.prod_Churn
WHERE Customer_Status ='Joined';

