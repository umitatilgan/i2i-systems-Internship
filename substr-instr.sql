DECLARE Number_of_First INT;
  String_name VARCHAR(10);
BEGIN
  SELECT INSTR('Ümitasd#AKL','#')INTO Number_of_First FROM DUAL;
  BEGIN
    SELECT SUBSTR('Ümitasd#A',1,Number_of_First-1) INTO String_name FROM DUAL;
  DBMS_OUTPUT.PUT_LINE(String_name);
  END;
END;
/
