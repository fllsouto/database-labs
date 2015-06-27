-- MAC0426 - Database System - Final Project
-- Professor : Dr. Jose Eduardo Ferreira
-- Created by : Fellipe Souto Sampaio
-- Usp Num : 7990422
-- Computer Science Student - Universidade de Sao Paulo (Brazil)
--
-- Por favor execute esse script nessa ordem

CREATE DATABASE paper_plane;

-- Apos criar o banco conect-se a ele

CREATE TABLE people(
  id        SERIAL       NOT NULL,
  nickname  VARCHAR(30)  NOT NULL UNIQUE,
  email     VARCHAR(100),
  pname     VARCHAR(30),
  mname     VARCHAR(30),
  lname     VARCHAR(30),
  PRIMARY KEY(nickname)
);

-- POSSIBLE STATUS
-- WAITING
-- REFUSED
-- ACCEPTED
CREATE TABLE invitation(
  id              SERIAL        NOT NULL,
  status          VARCHAR(20),
  invited_at      TIMESTAMP,
  guest_nickname  VARCHAR(30)   NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (guest_nickname)  REFERENCES people(nickname)
);

-- POSSIBLE STATUS
-- ACTIVE
-- WAITING
-- INACTIVE
CREATE TABLE contact(
  id              SERIAL        NOT NULL,
  invitation_id   INTEGER       NOT NULL,
  host_nickname   VARCHAR(30)   NOT NULL,
  guest_nickname  VARCHAR(30)   NOT NULL,
  status          VARCHAR(20),
  ended_at        TIMESTAMP     NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (host_nickname)  REFERENCES people(nickname),
  FOREIGN KEY (invitation_id)  REFERENCES invitation(id)
);

CREATE TABLE conversation(
  id              SERIAL      NOT NULL,
  contact_id      INTEGER     NOT NULL,
  host_nickname   VARCHAR(30) NOT NULL,
  guest_nickname  VARCHAR(30) NOT NULL,
  created_at      TIMESTAMP   NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (contact_id) REFERENCES contact(id)
);

CREATE TABLE message(
  id                  SERIAL      NOT NULL,
  conversation_id     INTEGER     NOT NULL,
  sended_at           TIMESTAMP   NOT NULL,
  received_at         TIMESTAMP,
  sender_nickname     VARCHAR(30) NOT NULL,
  receiver_nickname   VARCHAR(30) NOT NULL,
  type                VARCHAR(30) NOT NULL,
  content             TEXT,
  PRIMARY KEY (id),
  FOREIGN KEY (conversation_id) REFERENCES conversation(id)
);

CREATE TABLE multimedia(
  id                  SERIAL      NOT NULL,
  fingerprint         TEXT        NOT NULL,
  creator_nickname    VARCHAR(30) NOT NULL,
  message_id          INTEGER     ,
  type                VARCHAR(20) NOT NULL,
  server_url          TEXT        NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (creator_nickname) REFERENCES people(nickname)
);