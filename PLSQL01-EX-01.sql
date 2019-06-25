DECLARE 
    first_number NUMBER(3) := 0; 
BEGIN
    WHILE first_number <= 20 LOOP 
        dbms_output.Put_line(first_number); 
        first_number := first_number + 2; 
    END LOOP; 
END;
