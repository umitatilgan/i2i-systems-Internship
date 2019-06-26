CREATE OR REPLACE DIRECTORY CTEST AS 'C:\TEST';
GRANT READ,WRITE ON DIRECTORY CTEST TO PUBLIC; 
DECLARE
  out_File  UTL_FILE.FILE_TYPE;
BEGIN
DECLARE 
    emp_id EMPLOYEES.EMPLOYEE_ID%TYPE;
    emp_first_name EMPLOYEES.FIRST_NAME%TYPE;
    emp_last_name EMPLOYEES.LAST_NAME%TYPE;
    emp_dep_name DEPARTMENTS.DEPARTMENT_NAME%TYPE;
    number_employee NUMBER;
CURSOR EMPLOYEES_CURSOR IS
 SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,count(EMPLOYEE_ID) 
 FROM  EMPLOYEES  E INNER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID 
 group by EMPLOYEE_ID, FIRST_NAME,LAST_NAME, DEPARTMENT_NAME;
    BEGIN
      out_File := UTL_FILE.FOPEN('CTEST', 'testing.txt' , 'W');
        OPEN EMPLOYEES_CURSOR;
            LOOP
              FETCH EMPLOYEES_CURSOR INTO emp_id,emp_first_name,emp_last_name,emp_dep_name,number_employee;
              EXIT WHEN EMPLOYEES_CURSOR%NOTFOUND;
              UTL_FILE.PUT_LINE(out_file ,'ID => '|| emp_id  || 'First Name => ' ||  
              emp_first_name  ||  'Last Name => '  ||  emp_last_name  || 'Department Name => '  || emp_dep_name  );            
             END LOOP;
            UTL_FILE.PUT_LINE(out_file,'TOTAL  RECORD IS ' || number_employee);
        CLOSE EMPLOYEES_CURSOR;                  
      UTL_FILE.FCLOSE(out_file);
    END;
END;
/
