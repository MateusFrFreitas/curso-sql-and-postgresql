CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL,  
  balance INTEGER NOT NULL
);

INSERT
	INTO
	accounts (name,
	balance)
VALUES 
  ('Gia',
100),
  ('Alyson',
100);

SELECT * FROM accounts;

/* ------------------------- */

BEGIN;

UPDATE
	accounts
SET
	balance = balance - 50
WHERE
	name = 'Alyson';
	
SELECT * FROM accounts; -- balance of 50 in this connection

UPDATE
	accounts
SET
	balance = balance + 50
WHERE
	name = 'Gia';

SELECT * FROM accounts; -- balance of 150 in this connection

COMMIT;

/* ------------------------- */

UPDATE
	accounts
SET
	balance = 100
WHERE
	TRUE;

BEGIN;

UPDATE
	accounts
SET
	balance = balance - 50
WHERE
	name = 'Alyson'; 

SELECT * FROM accounts;

-- then terminate the connection...

SELECT * FROM accounts;

/* ------------------------- */

BEGIN;

SELECT * FROM not_a_table_from_my_database;

SELECT * FROM accounts; -- not possible: transaction is aborted

ROLLBACK;