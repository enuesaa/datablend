CREATE TABLE spaces (
  id      INTEGER PRIMARY KEY,
  name    VARCHAR(255) NOT NULL UNIQUE,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE planets (
  id      INTEGER PRIMARY KEY,
  name    VARCHAR(255) NOT NULL UNIQUE,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE islands (
  id      INTEGER PRIMARY KEY,
  name    VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE resources (
  id          INTEGER PRIMARY KEY,
  name        VARCHAR(10) NOT NULL,
  planet_id   INTEGER, -- if set, this record means default.
  island_id   INTEGER,
  created     DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated     DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE attrs (
  id          INTEGER PRIMARY KEY,
  resource_id INTEGER NOT NULL,
  key         VARCHAR(255) NOT NULL, -- if key starts with _, this record means system attr.
  value       TEXT NOT NULL,
  created     DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated     DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comets (
  id      INTEGER PRIMARY KEY,
  value   TEXT NOT NULL,
  status  VARCHAR(10) NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);