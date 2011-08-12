CREATE TABLE author (
    author_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE dist (
    dist_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE rel (
    rel_id INTEGER PRIMARY KEY,
    dist_id INTEGER,
    author_id INTEGER,
    version TEXT COLLATE perlver
);

CREATE TABLE rel_mod (
    rel_mod_id INTEGER PRIMARY KEY,
    version TEXT COLLATE perlver,
    mod_id INTEGER,
    rel_id INTEGER
);

CREATE TABLE mod (
    mod_id INTEGER PRIMARY KEY,
    name TEXT
);

-- Runtime, build, and configure requirements of releases.
-- Releases (rel_id) depend on versions (version) of modules (mod_id).

CREATE TABLE run_req (
    rel_id INTEGER,
    mod_id INTEGER,
    version TEXT COLLATE perlver
);

CREATE TABLE test_req (
    rel_id INTEGER,
    mod_id INTEGER,
    version TEXT COLLATE perlver
);

CREATE TABLE build_req (
    rel_id INTEGER,
    mod_id INTEGER,
    version TEXT COLLATE perlver
);

CREATE TABLE cfg_req (
    rel_id INTEGER,
    mod_id INTEGER,
    version TEXT COLLATE perlver
);
