--A report that displays all employees, and indicate with the words Yes or No whether they receive a commission--

SELECT LAST_NAME,SALARY,
DECODE(COMMISSION_PCT, NULL, 'NO','YES')
COMMISSION
FROM EMPLOYEES;
