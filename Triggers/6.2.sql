/*
    Statement Level Triggers
    --------------------------
    It triggered only once for each transaction.
*/

CREATE TRIGGER CUSTOMER_BEFORE_UPDATE 
BEFORE UPDATE ON CUSTOMER
DECLARE
    V_USERNAME VARCHAR2(100);
BEGIN
    SELECT USER INTO V_USERNAME FROM DUAL;

    INSERT INTO AUDIT_TABLE(TABLE_NAME,USER_ID,OPERATION_DATE,OPERATION) VALUES('CUSTOMER',V_USERNAME,SYSDATE,'BEFORE UPDATE OPERATION');
END;
/