CREATE TABLE EMP(
EMPLOYEE_ID	NUMBER(6,0),
FIRST_NAME	VARCHAR2(20 BYTE),
LAST_NAME	VARCHAR2(25 BYTE),
EMAIL	VARCHAR2(25 BYTE),
PHONE_NUMBER	VARCHAR2(20 BYTE),
HIRE_DATE	DATE,
);
 INSERT INTO EMP(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE) 
 VALUES(250,'Erman','İbrişim','erman@ibrişim','5556783245','3.10.2019');

SELECT * FROM EMP;

DROP TABLE EMP;
