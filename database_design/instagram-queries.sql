-- 179. Highest User ID's Exercise
SELECT
	*
FROM
	users
ORDER BY
	id DESC
LIMIT 3


-- 181. Posts by a Particular User
SELECT
	users.username,
	posts.caption
FROM
	users
JOIN posts
ON
	posts.user_id = users.id
WHERE
	users.id = 200


-- 183. Likes Per User
SELECT
	users.username,
	count(likes.id)
FROM
	users
JOIN likes
ON
	likes.user_id = users.id
GROUP BY
	users.username