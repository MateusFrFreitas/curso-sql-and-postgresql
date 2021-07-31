CREATE INDEX ON users (username);

-- with index: 0.075ms
EXPLAIN ANALYSE
SELECT
	*
FROM
	users
WHERE
	username = 'Emil30';

DROP INDEX users_username_idx;

EXPLAIN ANALYSE
SELECT
	*
FROM
	users
WHERE
	username = 'Emil30';
	
CREATE INDEX ON users (username);

SELECT pg_size_pretty(pg_relation_size('users'));

SELECT pg_size_pretty(pg_relation_size('users_username_idx'));

SELECT relname, relkind
FROM pg_class
WHERE relkind = 'i';

CREATE EXTENSION pageinspect;

SELECT
	*
FROM
	bt_metap('users_username_idx');
	

SELECT
	*
FROM
	bt_page_items('users_username_idx',
	3 /* from root column */
	);


SELECT
	*
FROM
	bt_page_items('users_username_idx',
	1 /* leaf 1 */
	);


SELECT ctid /* (33,43) from previus query, second row */, * FROM users WHERE username = 'Aaliyah.Hintz';

SELECT
	*
FROM
	bt_page_items('users_username_idx',
	2 /* leaf 2 */
	);

SELECT ctid, * FROM users WHERE username = 'Alyson_Ondricka55';

SELECT * FROM pg_database;
SELECT * FROM pg_class WHERE relkind = 'i'; 



