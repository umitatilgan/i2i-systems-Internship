--QUESTION1--
UPDATE HR.EMPLOYEES
SET MAX_SALARY=(SELECT MAX(SALARY) FROM HR.EMPLOYEES);

DELETE FROM HR.EMPLOYEES E WHERE SALARY=(SELECT MIN(SALARY) FROM HR.EMPLOYEES);

--QUESTION2--

CREATE INDEX DPR_NAME_IDX
ON HR.DEPARTMENTS(DEPARTMENT_NAME);

DROP INDEX DPR_NAME_IDX;

ALTER TABLE HR.EMPLOYEES
ADD CONSTRAINT CNSTR_SALARY
CHECK (SALARY >= 1000 AND SALARY <= 100000);

ALTER TABLE HR.EMPLOYEES
DISABLE CONSTRAINT CNSTR_SALARY;

ALTER TABLE HR.EMPLOYEES
ENABLE CONSTRAINT CNSTR_SALARY;

ALTER TABLE HR.EMPLOYEES
DROP CONSTRAINT CNSTR_SALARY;

--QUESTION3--

CREATE TABLE EMPLOYEES_TABLE
AS (SELECT * FROM HR.EMPLOYEES);

MERGE INTO EMPLOYEES_TABLE E USING 
(SELECT DEPARTMENT_ID,DEPARTMENT_NAME FROM HR.DEPARTMENTS) D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHEN MATCHED THEN
UPDATE SET
E.DEPARTMENT_NAME=D.DEPARTMENT_NAME;

--QUESTION5--

--COMMIT--
--The COMMIT statement to make changes permanent save to a database
during the current transaction and visible to other users--

--EXAMPLE--

BEGIN
    UPDATE emp_information SET emp_dept='Web Developer'
        WHERE emp_name='Saulin';
    COMMIT;
END;
/

--ROLLBACK--
--The ROLLBACK statement ends the current transaction and undoes any changes made during 
--that transaction. If you make a mistake, such as deleting the wrong row from a table,
--a rollback restores the original data. If you cannot finish a transaction 
--because an exception is raised or a SQL statement fails, a rollback lets you take corrective action 
--and perhaps start over.

--EXAMPLE
DECLARE
   emp_id  emp.empno%TYPE;
BEGIN
   SAVEPOINT dup_found;
   UPDATE emp SET eno=1 
        WHERE empname = 'Forbs ross'
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      ROLLBACK TO dup_found;
END;
/
