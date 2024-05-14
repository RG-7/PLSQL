/*
    Explict Cursor

*/

CREATE OR REPLACE PROCEDURE GET_CUSTOMER_DATA(
    C_ID customer.customer_id%type
)
IS
    C_FNAME customer.first_name%type := 'Ratn';
    C_LNAME customer.last_name%type := 'Pandey';
    C_MNAME customer.middle_name%type := 'Govindam';
    C_ADD1 customer.address_line1%type := 'Bihar';
    C_ADD2 customer.address_line2%type := 'Samastipur';
    C_CITY customer.city%type := NULL;
    C_COUNTRY customer.country%type := 'India';
    C_DATE customer.date_added%type := SYSDATE;
    C_REGION customer.region%type := 'NORTH';
    -- DECLARATION OF CURSOR
    CURSOR C IS  SELECT first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region FROM CUSTOMER WHERE customer_id = C_ID;

BEGIN
    -- OPENING CURSOR
    OPEN C;
    -- FETCHING DATA
    FETCH C INTO C_FNAME,C_LNAME,C_MNAME,C_ADD1,C_ADD2,C_CITY,C_COUNTRY,C_DATE,C_REGION;

    -- Displaying the retrieved data
    DBMS_OUTPUT.PUT_LINE('First Name: ' || C_FNAME);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || C_LNAME);
    DBMS_OUTPUT.PUT_LINE('Middle Name: ' || C_MNAME);
    DBMS_OUTPUT.PUT_LINE('Address Line 1: ' || C_ADD1);
    DBMS_OUTPUT.PUT_LINE('Address Line 2: ' || C_ADD2);
    DBMS_OUTPUT.PUT_LINE('City: ' || C_CITY);
    DBMS_OUTPUT.PUT_LINE('Country: ' || C_COUNTRY);
    DBMS_OUTPUT.PUT_LINE('Date Added: ' || TO_CHAR(C_DATE, 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Region: ' || C_REGION);

    -- CLOSE CURSOR
    CLOSE C;
    
END;    
/

EXECUTE GET_CUSTOMER_DATA(13);