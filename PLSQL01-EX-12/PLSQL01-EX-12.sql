SET SERVEROUT ON

CREATE OR REPLACE PROCEDURE rich_man(emp_id OUT HR.EMPLOYEES.EMPLOYEE_ID % TYPE,
                                    emp_name OUT HR.EMPLOYEES.FIRST_NAME % TYPE,
                                    emp_salary OUT HR.EMPLOYEES.SALARY % TYPE)
IS
BEGIN
SELECT EMPLOYEE_ID,FIRST_NAME,SALARY INTO emp_id,emp_name,emp_salary
FROM HR.EMPLOYEES
WHERE SALARY=(SELECT MAX(SALARY) FROM HR.EMPLOYEES);
    DBMS_OUTPUT.PUT_LINE('Name of Richest Employee  in Company =>>'||emp_name );
    DBMS_OUTPUT.PUT_LINE('Salary of Richest Employee  in Company =>> '||emp_salary );
    DBMS_OUTPUT.PUT_LINE('salary of Richest Employee  in Company=>> '|| 5*emp_salary );
END;
/

DECLARE emp_id HR.EMPLOYEES.EMPLOYEE_ID % TYPE;
        emp_name HR.EMPLOYEES.FIRST_NAME % TYPE;
        emp_salary HR.EMPLOYEES.SALARY % TYPE;
        
        BEGIN
        rich_man(emp_id,emp_name,emp_salary);
        END;
        /
