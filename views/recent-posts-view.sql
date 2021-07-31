CREATE VIEW recent_posts AS (
  SELECT * 
  FROM posts
  ORDER BY created_at DESC
  LIMIT 10
);

SELECT
	*
FROM
	recent_posts;