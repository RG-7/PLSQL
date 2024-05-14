/*
    Exception Example
    ------------------- SYSTEM DEFINED
*/
CREATE OR REPLACE PROCEDURE GET_CUSTOMER(
    C_ID IN NUMBER
) 
AS 
    C_NAME CUSTOMER.first_name%type; 
    C_CNTRY CUSTOMER.country%type;
BEGIN
    SELECT first_name, country INTO C_NAME,C_CNTRY FROM CUSTOMER WHERE CUSTOMER_id = C_ID;
    DBMS_OUTPUT.PUT_LINE('Name : ' || C_NAME);
    DBMS_OUTPUT.PUT_LINE('Country : ' || C_CNTRY);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Data Found.');
	WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Too Many Rows Found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Other Errors!!!');
END GET_CUSTOMER;
/

EXECUTE GET_CUSTOMER(45);
