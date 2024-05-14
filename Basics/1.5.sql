/*
    Case in PL/SQL
*/
DECLARE
    num1 number := 10;
    num2 number := 11;
BEGIN
    CASE WHEN num1>num2 THEN
        DBMS_OUTPUT.PUT_LINE(num1 || ' IS GREATER');
    WHEN num2>num1 THEN
        DBMS_OUTPUT.PUT_LINE(num2 || ' IS GREATER');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NUMBERS ARE EQUAL');  
    END CASE;

    -- EVEN ODD
    CASE
        WHEN MOD(num1,2)= 0 THEN
            DBMS_OUTPUT.PUT_LINE(num1 || ' IS EVEN');
        ELSE
            DBMS_OUTPUT.PUT_LINE(num1 || ' IS ODD');
    END CASE;
END;
/