CREATE TABLE planets (
  id      VARCHAR(25) PRIMARY KEY,
  name    VARCHAR(25) NOT NULL UNIQUE,
  comment TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE islands (
  id      VARCHAR(25) PRIMARY KEY,
  planet_id VARCHAR(25) NOT NULL,
  title   VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  comment TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE patterns (
  id       VARCHAR(25) PRIMARY KEY,
  title    VARCHAR(255) NOT NULL,
  color    VARCHAR(10),
  priority INTEGER DEFAULT NULL,
  created  DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated  DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE traits (
  id            VARCHAR(25) PRIMARY KEY,
  pattern_id    VARCHAR(25) NOT NULL,
  path          VARCHAR(255) NOT NULL,
  type          VARCHAR(10) NOT NULL,
  default_value TEXT NOT NULL, -- json format
  required      BOOLEAN NOT NULL,
  created       DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated       DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stones (
  id         VARCHAR(25) PRIMARY KEY,
  pattern_id VARCHAR(25),
  island_id  VARCHAR(25), -- if null, consider this record as comet.
  data       TEXT NOT NULL, -- json format
  created    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated    DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tags (
  id       VARCHAR(25) PRIMARY KEY,
  resource VARCHAR(25) NOT NULL UNIQUE, -- format: `<table-name>:<resource-id>`
  key      VARCHAR(10) NOT NULL,
  value    VARCHAR(255) NOT NULL,
  created  DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated  DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE histories (
  id       VARCHAR(25) PRIMARY KEY,
  resource VARCHAR(36) NOT NULL,
  comment  TEXT NOT NULL,
  created  DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated  DATETIME DEFAULT CURRENT_TIMESTAMP
);
