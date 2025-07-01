select Gender, count(Gender) as TotalCount,
count(Gender) * 100.0 / (Select count(*) from stg_Churn) as Percentage
from stg_Churn
Group by Gender


select Contract, count(Contract) as TotalCount,
count(Contract) * 1.0 / (Select count(*) from stg_Churn) as Percentage
from stg_Churn
Group by Contract


select Customer_Status, count(Customer_Status) as TotalCount, sum(Total_Revenue) as TotalRev,
sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) *100 as RevPercentage
from stg_Churn
Group by Customer_Status




select State, count(State) as TotalCount,
count(State) * 100.0 / (Select count(*) from stg_Churn) as Percentage
from stg_Churn
Group by State
order by Percentage desc


select distinct Internet_Type
from stg_Churn

