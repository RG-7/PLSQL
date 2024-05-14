/*
    CREATING PROCEDURE

        MODE: -
            IN OUT
*/
CREATE OR REPLACE PROCEDURE INOUT_ADD_CUSTOMER(
    C_ID        IN OUT NUMBER,
    C_FNAME     IN VARCHAR2,
    C_LNAME     IN VARCHAR2,
    C_MNAME     IN VARCHAR2,
    C_ADD1      IN VARCHAR2,
    C_ADD2      IN VARCHAR2,
    C_CITY      IN VARCHAR2,
    C_COUNTRY   IN VARCHAR2,
    C_DATE      IN DATE,
    C_REGION    IN VARCHAR2
)
AS
BEGIN
    INSERT INTO CUSTOMER(customer_id,first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region) VALUES(C_ID,C_FNAME,C_LNAME,C_MNAME,C_ADD1,C_ADD2,C_CITY,C_COUNTRY,C_DATE,C_REGION);
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('DATA SUCCESSFULLY ADDED');

    SELECT COUNT(1) INTO C_ID FROM CUSTOMER;

END INOUT_ADD_CUSTOMER;
/

DECLARE
    T_COUNT NUMBER(10) := 47;
BEGIN
    INOUT_ADD_CUSTOMER(T_COUNT,'Ravi','Kishan','Pandey','Jammu','Jammu Kashmir','Srinagar','India',SYSDATE,'NORTH');
    DBMS_OUTPUT.PUT_LINE('Total Records : ' || T_COUNT);
END;