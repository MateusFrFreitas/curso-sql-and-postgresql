EXPLAIN
SELECT
	*
FROM
	likes
WHERE
	--created_at < '2013-01-01';
	created_at > '2013-01-01';

CREATE INDEX likes_created_at_idx ON likes (created_at);
