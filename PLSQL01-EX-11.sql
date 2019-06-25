--plsql with triangle construction--
DECLARE
PROCEDURE triangle(row_number IN NUMBER)
IS
BEGIN
    dbms_output.put_line('row_number = '|| row_number ||',  = ' );
    FOR i IN 1..row_number
    LOOP
    dbms_output.put_line(RPAD(' ', row_number - i) || RPAD('*', i * 2 - 1, '*') || RPAD(' ', row_number - i));
    END LOOP;
END  triangle;

BEGIN
 triangle(row_number=>5);
END;
