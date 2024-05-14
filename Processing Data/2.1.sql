/*
    Reading a data from database
*/

/*
    Pre-requsties
        Must have Run Requirements.sql Benfore executing this

*/

DECLARE
    -- DECLEAR FEW VARIBALE NAME SO THAT DATA WILL BE STORED HERE.....
    C_ID NUMBER := 10;
    C_NAME VARCHAR2(50);
    C_ADDR VARCHAR2(50);
BEGIN
    SELECT first_name, country INTO C_NAME,C_ADDR FROM customer WHERE customer_id = C_ID;

    DBMS_OUTPUT.PUT_LINE('Name : ' || C_NAME);
    DBMS_OUTPUT.PUT_LINE('Country : ' || C_ADDR);
END;
/