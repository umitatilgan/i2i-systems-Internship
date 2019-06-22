--Creating a report that displays the operators and their total subscriber.--

SELECT SUBSTR(PHONE_NUMBER,1,3),COUNT(SUBSTR(PHONE_NUMBER,1,3)) AS OPERATOR 
FROM EMPLOYEES 
GROUP BY SUBSTR(PHONE_NUMBER,1,3);
