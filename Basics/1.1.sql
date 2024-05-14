
DECLARE
    -- declearing varibale 
    ordernumber number := 1001;
    -- another way
    orderNum number default 1002;
    -- declearing a char
    customerName varchar2(20) := 'Ratn';
    -- want to fix a var so that value can't be changed 
    id constant number := 102397020;
BEGIN
    -- variable decleared in declear block can be modified in begin block
    ordernumber := 1003;
    -- printing the value
    DBMS_OUTPUT.PUT_LINE('wELCOME TO THE COURSE. ');
    DBMS_OUTPUT.PUT_LINE(ordernumber);
    DBMS_OUTPUT.PUT_LINE(orderNum);
    DBMS_OUTPUT.PUT_LINE(customerName);
END;
/