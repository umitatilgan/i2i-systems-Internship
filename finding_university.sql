--Finding a university by entering a name--
DECLARE 
    Input_Name Student.First_Name%TYPE:='Ümit';
    University Student.Universty_Name%TYPE;
BEGIN
    SELECT Universty_Name INTO University FROM Student WHERE First_Name=Input_Name;
    DBMS_OUTPUT.PUT_LINE(University);
END;
/

--Finding a university by entering a name with procedure--

CREATE OR REPLACE PROCEDURE UNIVERSITY_SHOWING(
    INPUT_NAME Student.First_Name%TYPE )
IS
    UNIVERSITY Student.Universty_Name%TYPE;
BEGIN
    SELECT Universty_Name INTO UNIVERSITY FROM Student Where First_Name=INPUT_NAME;
    DBMS_OUTPUT.PUT_LINE(UNIVERSITY);
END;
/
EXEC UNIVERSITY_SHOWING('Ümit');
