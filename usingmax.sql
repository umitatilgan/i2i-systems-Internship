--An SQL query that selects first name of the employee with highest employee id.--
SELECT FIRST_NAME FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID=(SELECT MAX(EMPLOYEE_ID) FROM HR.EMPLOYEES);
