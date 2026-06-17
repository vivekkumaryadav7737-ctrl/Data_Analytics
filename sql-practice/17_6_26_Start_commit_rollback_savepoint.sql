USE amazon;
# INOUT=> take input(store) and give output(store)
DELIMITER $$
CREATE PROCEDURE inc(INOUT v int)
BEGIN 
	SET v=v+10;
END $$ DELIMITER ;
SET @val=100;
call inc(@val);
select @val;
/* TRANSACTION CONTROL LANGUAGE- Group of queries executed to complete a single task in transaction. 
Consist of
A-Atmocity-A transaction is treated as a single, indivisible unit of work.
If a sequence of operations (e.g., deducting money from account A and adding it to account B) fails midway, 
the entire transaction is canceled using ROLLBACK so that no partial updates occur. If successful, you use COMMIT to apply it.
C-Consistency-A transaction must strictly take the database from one valid, structurally sound state to another.
It obeys all predefined constraints (primary keys, foreign keys, unique limits). If any constraint is violated during an operation, 
the transaction is rejected or rolled back.
I-Isolation-When multiple users or transactions are reading and writing simultaneously, their operations do not interfere with each other.
Concurrent transactions run in separate bubbles, meaning uncommitted modifications are 
invisible to other operations until explicitly committed via a COMMIT statement.
D-Durability- Once a transaction is finalized, its changes are permanently and safely saved, even in the event of a system crash, 
power outage, or hardware failure.
 Issuing a COMMIT statement ensures the data is written to non-volatile memory or persistent storage, 
 guaranteeing it is never lost post-confirmation.
 */
 CREATE DATABASE BANK;
 USE BANK;
 CREATE TABLE accounts(
 aid INT PRIMARY KEY AUTO_INCREMENT,
 aname VARCHAR(100) NOT NULL,
 balance DECIMAL(8,2) DEFAULT 0.0
 );
 INSERT INTO accounts VALUES
 (5536,'Aman Kumar',7237),
 (5537,'Rahul Singh',3528),
 (5538,'Yogesh Saini',2534);
 
 #Aman wants to send Rs.1000 to Rahul
 UPDATE accounts SET balance=balance-1000 WHERE aid=5536;
 UPDATE accounts SET balance=balance+1000 WHERE aid=5537;
#to perform a transaction
START TRANSACTION;
UPDATE accounts SET balance=balance-1000 WHERE aid=5536;
ROLLBACK;                                              # Reverse the transactions
select * from accounts;
COMMIT ;                        #rollback cannot undo transaction once commit command used.
/* Aman=> to Rahul Rs.1000
   Rahul=>to Yogesh Rs.1000
*/
START TRANSACTION;
#T1
UPDATE accounts SET balance=balance-1000 WHERE aid=5536;
UPDATE accounts SET balance=balance+1000 WHERE aid=5537;
SAVEPOINT s1;
#T2
UPDATE accounts SET balance=balance-1750 WHERE aid=5537;
UPDATE accounts SET balance=balance+1750 WHERE aid=5538;
COMMIT;
ROLLBACK TO s1;
select * from accounts;








