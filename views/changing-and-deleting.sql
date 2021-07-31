CREATE OR REPLACE
VIEW recent_posts AS (
SELECT
	*
FROM
	posts
ORDER BY
	created_at DESC
LIMIT 15
);

SELECT * FROM recent_posts;

DROP VIEW recent_posts;