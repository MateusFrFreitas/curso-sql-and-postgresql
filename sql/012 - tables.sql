SELECT * FROM users;

-- This results in an error
INSERT INTO photos (url, user_id)
VALUES ('http://jpg', 9999);

INSERT INTO photos (url, user_id)
VALUES ('http://jpg', NULL);

SELECT * FROM photos;