1.	Highest Credit Utilization Customers (Top 10)

SELECT 
    clientnum, 
    customer_age, 
    income, 
    credit_limit, 
    utilization_ratio
FROM bank_churn_data
ORDER BY utilization_ratio DESC
    LIMIT 10;

2.	Customers with High Credit Limit but Low Balance (Top 10)

SELECT 
    clientnum, 
    customer_age, 
    income, 
    credit_limit, 
    balance, 
    ROUND((balance * 100.0 / credit_limit), 2) AS Balance_Percentage
FROM bank_churn_data
WHERE balance < (0.2 * credit_limit)
ORDER BY Balance_Percentage ASC
    LIMIT 10;

3.	Customers with the Longest Relationship (Top 10 by Tenure)

SELECT 
    clientnum, 
    customer_age, 
    months_on_book, 
    income, 
    balance
FROM bank_churn_data
ORDER BY months_on_book DESC
    LIMIT 10;

4.	Average Dependent Count by Income Group

SELECT 
    income, 
    ROUND(AVG(dependent_count), 2) AS Avg_Dependents
FROM bank_churn_data
GROUP BY income
ORDER BY Avg_Dependents DESC;

5.	Credit Utilization Index (High-Risk Customers)

SELECT 
    clientnum, 
    customer_age, 
    income, 
    credit_limit, 
    utilization_ratio,
    ROUND((utilization_ratio * 100.0), 2) AS Utilization_Percentage,
    CASE 
        WHEN utilization_ratio > 0.8 THEN 'High Risk'
        WHEN utilization_ratio BETWEEN 0.5 AND 0.8 THEN 'Moderate Risk'
        ELSE 'Low Risk' 
    END AS Risk_Level
FROM bank_churn_data
ORDER BY utilization_ratio DESC;

6.	Longest Relationship Customers (VIP Segmentation)

SELECT 
    clientnum, 
    customer_age, 
    months_on_book, 
    income, 
    balance, 
    credit_limit
FROM bank_churn_data
WHERE months_on_book > 53
ORDER BY balance DESC;


