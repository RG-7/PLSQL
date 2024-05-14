/*
    Triggers : - These are stored programs that automatically executed when some event occur.

    What can execute a trigger: -
        Any DML statement i.e DELETE, INSERT, UPDATE
        ANY DDL statement i.e. CREATE, ALTER, DROP
        Any operation i.e. SERVEREROR, LOGON, LOGOFF, STARTUP, SHUTDOWN

    Types of Trigger: -
        1. Row Level Triggers 
            Execute once for each row in a transaction.

        2. Statement Level Triggers
            Only once for each Transaction.

        3. Before Triggers
            Before trigger execute the trigger action we can use this to determine wheter or not the trigger statement should be allowed to complete.

        4. After Triggers
            After the trigger event is performed the sub program is executed. To perform a cascade delete operation.

    Permutatig & Combinating all 4 we get mainly these 12 :-
        1. Before Insert Row
        2. After Insert Row
        3. Before Update Row
        4. After Update Row
        5. Before Delete Row
        6. After Delete Row
        7. Before Insert Statement
        8. After Insert Statement
        9. Before Update Statement
        10. After Update Statement
        11. Before Delete Statement
        12. After Delete Statement
*/

