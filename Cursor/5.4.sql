/*
    CURSOR FOR LOOP
        it is good as you need not to work on declaring cursor, open cursor, fetching data & close cursor. as oracle already provide these in updated version as Cursor for loop.
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

BEGIN
    FOR C_REC IN (SELECT first_name,last_name,middle_name,address_line1,address_line2,city,country,date_added,region FROM CUSTOMER WHERE customer_id = C_ID)
    LOOP
        -- Displaying the retrieved data
        DBMS_OUTPUT.PUT_LINE('First Name: ' || C_REC.first_name);
        DBMS_OUTPUT.PUT_LINE('Last Name: ' ||  C_REC.last_name);
        DBMS_OUTPUT.PUT_LINE('Middle Name: ' ||  C_REC.middle_name);
        DBMS_OUTPUT.PUT_LINE('Address Line 1: ' ||  C_REC.address_line1);
        DBMS_OUTPUT.PUT_LINE('Address Line 2: ' ||  C_REC.address_line2);
        DBMS_OUTPUT.PUT_LINE('City: ' ||  C_REC.city);
        DBMS_OUTPUT.PUT_LINE('Country: ' ||  C_REC.country);
        DBMS_OUTPUT.PUT_LINE('Date Added: ' || TO_CHAR( C_REC.date_added, 'DD-MON-YYYY'));
        DBMS_OUTPUT.PUT_LINE('Region: ' ||  C_REC.region);
    END LOOP;
    
END;    
/

EXECUTE GET_CUSTOMER_DATA(13);