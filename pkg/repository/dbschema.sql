CREATE TABLE planets (
  id      VARCHAR(36) PRIMARY KEY,
  name    VARCHAR(255) NOT NULL UNIQUE,
  comment TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE islands (
  id      VARCHAR(36) PRIMARY KEY,
  name    VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  comment TEXT NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE islandtags (
  id        VARCHAR(36) PRIMARY KEY,
  island_id VARCHAR(36) NOT NULL,
  key       VARCHAR(10) NOT NULL,
  value     VARCHAR(255) NOT NULL,
  created   DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated   DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE patterns (
  id          VARCHAR(36) PRIMARY KEY,
  name        VARCHAR(10) NOT NULL,
  priority    INTEGER,
  created     DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated     DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE traits (
  id         VARCHAR(36) PRIMARY KEY,
  pattern_id VARCHAR(36) NOT NULL,
  path       VARCHAR(255) NOT NULL,
  type       VARCHAR(10) NOT NULL,
  default    TEXT NOT NULL, -- json format
  required   BOOLEAN NOT NULL,
  created    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated    DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stones (
  id         VARCHAR(36) PRIMARY KEY,
  pattern_id VARCHAR(36),
  island_id  VARCHAR(36), -- if null, consider this record as comet.
  value      TEXT NOT NULL,
  created    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated    DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE histories (
  id       VARCHAR(36) PRIMARY KEY,
  resource VARCHAR(36) NOT NULL,
  comment  TEXT NOT NULL,
  created  DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated  DATETIME DEFAULT CURRENT_TIMESTAMP
);
