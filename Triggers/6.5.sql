/*
    OLD AND NEW KEYWORDS
    ----------------------
*/


CREATE OR REPLACE TRIGGER CUSTOMER_AFTER_UPDATE_VALUES
AFTER UPDATE ON CUSTOMER
FOR EACH ROW
DECLARE
    V_USERNAME VARCHAR2(100);
BEGIN
    SELECT USER INTO V_USERNAME FROM DUAL;

    INSERT INTO AUDIT_LOG(USERID, OPERATION_DATE,B_CUSTOMERID,A_CUSTOMERID,B_FIRSTNAME,A_FIRSTNAME) VALUES(V_USERNAME,SYSDATE,:OLD.CUSTOMER_ID,:NEW.CUSTOMER_ID,:OLD.FIRST_NAME,:NEW.FIRST_NAME);
END;

UPDATE CUSTOMER SET FIRST_NAME='Amritanshu' WHERE CUSTOMER_ID=10;
select * from AUDIT_LOG;
select * from CUSTOMER;

