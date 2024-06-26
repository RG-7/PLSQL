/*
    Creating Function

            Function returns a value whereas a procedure don't
*/

CREATE OR REPLACE FUNCTION find_salescount(
    p_sales_date IN DATE
) 
RETURN NUMBER
AS
    num_of_sales number :=0 ;
    BEGIN
        SELECT COUNT(*) INTO num_of_sales FROM sales WHERE sales_date = p_sales_date;
        RETURN num_of_sales;
END find_salescount;
/