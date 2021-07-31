/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = pgm => {
  pgm.sql(`
    ALTER TABLE posts 
    DROP COLUMN lng, 
    DROP COLUMN lat;
  `)
};

exports.down = pgm => {
  pgm.sql(`
    ALTER TABLE posts
    ADD COLUMN lat NUMERIC,
    ADD COLUMN lng NUMERIC;
  `)
};
