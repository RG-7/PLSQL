-- VARIBALE 
    -- GLOBAL
    -- LOCAL
DECLARE
    -- VARIBALE DECLEARED HERE ARE GLOABL
    num1 number := 95;
BEGIN
    -- Local Varibale
    DECLARE
        -- VARIBALE DECLEARED HERE ARE LOCAL VARIBALE
        num2 number := 100;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Sum of ' || num1 || ' + ' || num2 || ' = '|| (num1+num2));
    END;
END;
/