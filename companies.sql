SELECT company_name,revenue
FROM companies;

SELECT company_name
FROM companies
WHERE industry='MANUFACTURING';

SELECT AVG(training_budget)
FROM companies;

SELECT company_name,no_employees
FROM companies
ORDER BY no_employees DESC;

SELECT company_name
FROM companies
WHERE revenue > 5000000;