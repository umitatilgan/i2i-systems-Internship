--Creating a report that displays department id, first name, salary and rank of employee’s--
--salary in own department.--

SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,
DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY) AS RANKING 
FROM HR.EMPLOYEES;
