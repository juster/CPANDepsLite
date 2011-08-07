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
    version TEXT
);

CREATE TABLE rel_mod (
    rel_mod_id INTEGER PRIMARY KEY,
    version TEXT,
    mod_id INTEGER,
    rel_id INTEGER
);

CREATE TABLE mod (
    mod_id INTEGER PRIMARY KEY,
    name TEXT
);

-- Runtime, build, and configure requirements of releases.

CREATE TABLE run_req (
    rel_id INTEGER PRIMARY KEY,
    mod_id INTEGER,
    version TEXT
);

CREATE TABLE test_req (
    rel_id INTEGER PRIMARY KEY,
    mod_id INTEGER,
    version TEXT
);

CREATE TABLE build_req (
    rel_id INTEGER PRIMARY KEY,
    mod_id INTEGER,
    version TEXT
);

CREATE TABLE cfg_req (
    rel_id INTEGER PRIMARY KEY,
    mod_id INTEGER,
    version TEXT
);
