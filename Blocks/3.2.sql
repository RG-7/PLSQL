/*
    CALLING PROCEDURE
*/

BEGIN
    ADD_CUSTOMER(17,'Mahendra','Dhoni','Singh','Jharkhand','India',NULL,'India',SYSDATE,'NORTH');
END;
/

BEGIN
    ADD_CUSTOMER(
        C_ID      => 45  ,
        C_FNAME   => 'Anmol',
        C_LNAME   => 'Singh',
        C_MNAME   => 'Preet',
        C_ADD1    => 'Patiala',
        C_ADD2    => 'Ludhiana',
        C_CITY    => NULL,
        C_COUNTRY => 'INDIA',
        C_DATE   => SYSDATE ,
        C_REGION => 'NORTH' 
    );
END;
/

SELECT * FROM CUSTOMER;