/*
    Implicit Cursor:- Whenever there is an operation of Insert, Update & Delete there implicit cursor is automatically created.
    In case of insertion the cursor holds the inserting data, where as for deleteion & updation it identifies the rows to be effected.

    sql is default name of the implicit cursor.

    SQL Cursor having attributes are :-
    1. %FOUND
        Return true if insert, delete or update statement affects the row/rows or a select onto otherwise return false.

    2. %ISOPEN
        always return false as oracle automatically closes cursor after executing.

    3. %NOTFOUND
        Return true if insert, delete or update statement does not affect the row/rows or a select onto otherwise return false.

    4.%ROWCOUNT
        Return the number of rows affected by the last insert, update or delete statement or a SELECT ONTO statement.
*/

CREATE OR REPLACE PROCEDURE GET_CUSTOMER_CURSOR(
    C_ID IN NUMBER
) 
AS 
    C_NAME CUSTOMER.first_name%type; 
    C_CNTRY CUSTOMER.country%type;
    TOTAL_ROWS NUMBER;
BEGIN
    SELECT first_name, country INTO C_NAME,C_CNTRY FROM CUSTOMER WHERE CUSTOMER_id = C_ID;

    IF sql%found THEN
        TOTAL_ROWS := sql%rowcount;
        DBMS_OUTPUT.PUT_LINE('TOTAL ROW COUNT IS : '|| TOTAL_ROWS);
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Name : ' || C_NAME);
    DBMS_OUTPUT.PUT_LINE('Country : ' || C_CNTRY);
END GET_CUSTOMER_CURSOR;
/

EXECUTE GET_CUSTOMER_CURSOR(13);