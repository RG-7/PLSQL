/*
    DROP/ DISABLE/ ENABLE
*/

-- Disable a Trigger
-- ALTER TRIGGER <trigger_name> DISABLE;
-- Example:
ALTER TRIGGER CUSTOMER_AFTER_UPDATE DISABLE;

-- Enable a Trigger
-- ALTER TRIGGER <trigger_name> ENABLE;
-- Example:
ALTER TRIGGER CUSTOMER_AFTER_UPDATE ENABLE;

-- Disable all the Triggers present on the table
-- ALTER TABLE <table_name> DISABLE ALL TRIGGERS;
-- Example:
ALTER TABLE CUSTOMER DISABLE ALL TRIGGERS;

-- Enable all the Triggers present on the table
-- ALTER TABLE <table_name> ENABLE ALL TRIGGERS;
-- Example:
ALTER TABLE CUSTOMER ENABLE ALL TRIGGERS;

-- Dropping a Trigger
-- DROP TRIGGER <trigger_name>;
-- Example:
DROP TRIGGER CUSTOMER_AFTER_UPDATE;

-- Renaming a Trigger name
-- ALTER TRIGGER <old_trigger_name> RENAME TO <new_trigger_name>;
-- Example:
ALTER TRIGGER CUSTOMER_AFTER_UPDATE RENAME TO CUSTOMER_AFTER_UPDATE_ACTION;
