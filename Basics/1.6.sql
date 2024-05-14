/*
    WHILE LOOP
*/
DECLARE
    COUNTER NUMBER := 1;
BEGIN
    WHILE COUNTER <= 10
    LOOP
        DBMS_OUTPUT.PUT_LINE('2 * ' || COUNTER || ' = ' || (2 * COUNTER));
        COUNTER := COUNTER + 1;
    END LOOP;
END;