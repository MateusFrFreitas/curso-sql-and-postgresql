/* With Join */
SELECT
	users.username,
	tags.created_at
FROM
	users
JOIN (
	SELECT
		user_id,
		created_at
	FROM
		caption_tags
UNION ALL
	SELECT
		user_id,
		created_at
	FROM
		photo_tags
) AS tags ON
	tags.user_id = users.id
WHERE
	tags.created_at < '2010-01-07';


/* Common Table Expression - CTE */

WITH tags AS (
SELECT
	user_id,
	created_at
FROM
	caption_tags
UNION
SELECT
	user_id,
	created_at
FROM
	photo_tags
)
SELECT
	users.username,
	tags.created_at
FROM
	users
JOIN tags ON
	tags.user_id = users.id
WHERE
	tags.created_at < '2010-01-07';	