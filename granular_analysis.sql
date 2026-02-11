1.	Customer Distribution by Card Category

SELECT card_category, COUNT(clientnum) AS Customer_Count 
FROM bank_churn_data 
GROUP BY card_category 
ORDER BY Customer_Count DESC;

2.	Average Balance by Income Level

SELECT income, AVG(balance) AS Avg_Balance 
FROM bank_churn_data 
GROUP BY income 
ORDER BY Avg_Balance DESC;


3.	Customers by Marital Status

SELECT marital_status, COUNT(clientnum) AS Customer_Count 
FROM bank_churn_data 
GROUP BY marital_status 
ORDER BY Customer_Count DESC;

4.	Customers Segmentation by Age Group

SELECT 
    CASE 
        WHEN customer_age BETWEEN 18 AND 25 THEN '18-25'
        WHEN customer_age BETWEEN 26 AND 35 THEN '26-35'
        WHEN customer_age BETWEEN 36 AND 45 THEN '36-45'
        WHEN customer_age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+' 
    END AS Age_Group,
    COUNT(clientnum) AS Total_Customers
FROM bank_churn_data
GROUP BY CASE 
        WHEN customer_age BETWEEN 18 AND 25 THEN '18-25'
        WHEN customer_age BETWEEN 26 AND 35 THEN '26-35'
        WHEN customer_age BETWEEN 36 AND 45 THEN '36-45'
        WHEN customer_age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+' 
    END
ORDER BY Total_Customers DESC;

