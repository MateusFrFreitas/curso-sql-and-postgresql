CREATE SCHEMA test;

CREATE TABLE test.users (
  id SERIAL PRIMARY KEY,
  username VARCHAR 
);

INSERT INTO test.users (username) VALUES ('alex'), ('sdolfjkdigjdigj');


SHOW search_path 
/* out: "$user", public -> 
 * "$user" first try a schema with the same name as the current user, 
 * then fall back to public 
 */

SET search_path TO test, public;

SHOW search_path; 

SET search_path TO "$user", public;

SHOW search_path;
