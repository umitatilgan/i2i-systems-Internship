SELECT E1.EMPLOYEE_ID,E2.EMPLOYEE_ID MANAGER_ID  FROM HR.EMPLOYEES E1 
INNER JOIN HR.EMPLOYEES E2 
ON E2.EMPLOYEE_ID=E1.MANAGER_ID;