--Creating a procedure that displays date's day with name print_day--
CREATE OR REPLACE PROCEDURE print_day(INPUT_TIME VARCHAR2)
AS
X VARCHAR2(50);
BEGIN
   X:=TO_CHAR(TO_DATE(INPUT_TIME,'YYYYMMDD'),'DAY');
   DBMS_OUTPUT.PUT_LINE(X);
END;
/

BEGIN
print_day('19960225');
END;
/
