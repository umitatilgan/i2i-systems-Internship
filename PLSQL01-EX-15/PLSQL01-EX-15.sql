--Creating a procedure that displays date's day with name print_day--
CREATE OR REPLACE PROCEDURE print_day(INPUT_TIME VARCHAR2)
AS
OUT_DAY VARCHAR2(50);
BEGIN
   OUT_DAY:=TO_CHAR(TO_DATE(INPUT_TIME,'YYYYMMDD'),'DAY');
   DBMS_OUTPUT.PUT_LINE(OUT_DAY);
END;
/

BEGIN
print_day('19960225');
END;
/
