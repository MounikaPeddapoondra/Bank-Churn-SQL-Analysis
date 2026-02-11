1.	Total Customers:
SELECT COUNT(clientnum) AS Total_Customers FROM bank_churn_data;

2.	Average Utilization Ratio:
SELECT ROUND(AVG(utilization_ratio), 2) AS Avg_Utilization 
FROM bank_churn_data;

3.	Average Credit Limit:
SELECT ROUND(AVG(credit_limit),2) AS Avg_Credit_Limit FROM bank_churn_data;

4.	Average Age:
SELECT AVG(customer_age) AS Avg_Age FROM bank_churn_data;
 


