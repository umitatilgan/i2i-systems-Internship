CREATE OR REPLACE PACKAGE HRPALETTE IS
PROCEDURE WRITE_STAR(line_number  IN INT );
PROCEDURE SPACE_WRITING(line_number  IN INT, total_lines IN INT );
PROCEDURE PALETTE(pin_max_dots IN NUMBER);
END HRPALETTE;

CREATE OR REPLACE PACKAGE BODY HRPALETTE
IS
    PROCEDURE WRITE_STAR(line_number  IN INT ) 
    IS
    BEGIN
    FOR i IN 1..line_number
    LOOP
        dbms_output.put('*');
    END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END WRITE_STAR;
    
    PROCEDURE SPACE_WRITING(line_number  IN INT, total_lines IN INT ) 
    IS
    BEGIN
        FOR i IN 1..total_lines-line_number
        LOOP
         dbms_output.put(' ');
        END LOOP;
    END SPACE_WRITING;

    PROCEDURE PALETTE(pin_max_dots IN NUMBER) 
    IS
        counter INT := 0;
    BEGIN
        WHILE counter < pin_max_dots
        LOOP
             HRPALETTE.SPACE_WRITING(counter,pin_max_dots);
             HRPALETTE.WRITE_STAR(2*counter - 1);
             counter := counter + 1;
        END LOOP;
        counter := 0;
        WHILE counter < pin_max_dots
        LOOP
             HRPALETTE.SPACE_WRITING(pin_max_dots - counter,pin_max_dots);
             HRPALETTE.WRITE_STAR(2*pin_max_dots - 2*counter - 1);
             counter := counter + 1;
        END LOOP;

    END;
    
END HRPALETTE;

BEGIN
    HRPALETTE.PALETTE(9);
END;
