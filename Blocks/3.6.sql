/*
    Calling function
*/


SELECT find_salescount(TO_DATE('01-JAN-2015','dd-MM-yyyy')) FROM DUAL;
 -- OR

DECLARE
    SCOUNT NUMBER := 0;
BEGIN
    SCOUNT := find_salescount(TO_DATE('01-JAN-2015','dd-MM-yyyy'));
    DBMS_OUTPUT.PUT_LINE('COUNT IS : '|| SCOUNT);
END;
/