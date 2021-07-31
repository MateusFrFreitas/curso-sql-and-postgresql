EXPLAIN ANALYSE 
SELECT
	username,
	contents
FROM
	users
JOIN COMMENTS ON
	comments.user_id = users.id
WHERE
	username = 'Alyson14';
	

SELECT
	*
FROM
	pg_stats
WHERE
	tablename = 'users';


SELECT * FROM pg_class WHERE relname = 'comments'

	