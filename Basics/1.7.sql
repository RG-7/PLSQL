/*
    FOR LOOP    
*/  

DECLARE

BEGIN
    -- simple loop in strainght order
    FOR i IN 1..10 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('* ');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;

    -- loop in reverse
    FOR i IN REVERSE 1..10 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('* ');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;
/