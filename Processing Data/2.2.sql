/*
    Fetching Data Using % Type 
        It should be used as data size might differ and could led to loss of data
*/

DECLARE
    -- DECLEAR FEW VARIBALE NAME SO THAT DATA WILL BE STORED HERE.....
    C_ID customer.customer_id%type := 10;
    C_NAME customer.first_name%type;
    C_ADDR customer.country%type;
BEGIN
    SELECT first_name, country INTO C_NAME,C_ADDR FROM customer WHERE customer_id = C_ID;

    DBMS_OUTPUT.PUT_LINE('Name : ' || C_NAME);
    DBMS_OUTPUT.PUT_LINE('Country : ' || C_ADDR);
END;
/