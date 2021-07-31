SELECT
	username,
	COUNT(*)
FROM
	users
JOIN (
	SELECT
		user_id
	FROM
		photo_tags
UNION ALL
	SELECT
		user_id
	FROM
		caption_tags
) AS tags ON
	tags.user_id = users.id
GROUP BY
	username
ORDER BY
	COUNT(*) DESC;

CREATE VIEW tags AS (
  SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
  UNION 
  ALL
  SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
);

SELECT
  username, COUNT(*)
FROM users
JOIN tags ON tags.user_id = users.id
GROUP BY username
ORDER BY COUNT(*) DESC;