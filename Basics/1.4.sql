/*
    IF
    ELSE
    ELSE IF
*/

DECLARE
    num1 number := 24;
    num2 number := 12;
BEGIN
    -- IF THEN ELSE
    IF num1 > num2 THEN
        DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ' is greater than num2  = ' ||num2 );
    ELSE
        DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ' is less than num2  = ' ||num2);
    END IF;

    -- IF THEN ELSIF THEN ELSE
    num1:= 12;
    IF num1>num2 THEN
        DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ' is Greater than num2  = ' ||num2 );
    ELSIF num1=num2 THEN
        DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ' is Equal to num2  = ' ||num2 );
    ELSE
        DBMS_OUTPUT.PUT_LINE('num1 = ' || num1 || ' is Less than num2  = ' ||num2);
    END IF;
END;
/