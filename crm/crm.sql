-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS internal_contacts;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS cis;

-- CREATE TABLES

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
  );

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
  );

CREATE TABLE internal_contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
  );

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  internal_contact_id INTEGER,
  contact_id INTEGER,
  activity_type TEXT,
  date_time TEXT,
  notes TEXT
  );

  CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
  );

  CREATE TABLE cis (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER
  industry_id INTEGER
  );