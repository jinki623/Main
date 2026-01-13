--
-- PostgreSQL database dump
--

-- Dumped from database version 16.11
-- Dumped by pg_dump version 17.5

-- Started on 2026-01-11 12:14:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 16405)
-- Name: ginarchive; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA IF NOT EXISTS  ginarchive;


ALTER SCHEMA ginarchive OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 16406)
-- Name: ginview; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA IF NOT EXISTS  ginview;


ALTER SCHEMA ginview OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 16404)
-- Name: main; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA IF NOT EXISTS  main;


ALTER SCHEMA main OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 16408)
-- Name: postgres_fdw; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgres_fdw WITH SCHEMA main;


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgres_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgres_fdw IS 'foreign-data wrapper for remote PostgreSQL servers';


--
-- TOC entry 2059 (class 1417 OID 16415)
-- Name: pg_server; Type: SERVER; Schema: -; Owner: taiadmin
--

CREATE SERVER pg_server FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    dbname 'MYTEST-PROD',
    host 'localhost',
    port '5433'
);


ALTER SERVER pg_server OWNER TO taiadmin;

--
-- TOC entry 4867 (class 0 OID 0)
-- Name: USER MAPPING taiadmin SERVER pg_server; Type: USER MAPPING; Schema: -; Owner: taiadmin
--

CREATE USER MAPPING FOR taiadmin SERVER pg_server OPTIONS (
    password 'taimina',
    "user" 'taiadmin'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: table1; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main.table1 (
    id integer NOT NULL,
    name character varying(10)
);


ALTER TABLE main.table1 OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16458)
-- Name: table2; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main.table2 (
    id integer NOT NULL,
    name character varying(10)
);


ALTER TABLE main.table2 OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16463)
-- Name: table3; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main.table3 (
    id integer NOT NULL,
    name character varying(10)
);


ALTER TABLE main.table3 OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16468)
-- Name: table4; Type: TABLE; Schema: main; Owner: postgres
--

CREATE TABLE main.table4 (
    id integer NOT NULL,
    name character varying(10)
);


ALTER TABLE main.table4 OWNER TO postgres;

--
-- TOC entry 4711 (class 2606 OID 16421)
-- Name: table1 table1_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main.table1
    ADD CONSTRAINT table1_pkey PRIMARY KEY (id);


--
-- TOC entry 4713 (class 2606 OID 16462)
-- Name: table2 table2_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main.table2
    ADD CONSTRAINT table2_pkey PRIMARY KEY (id);


--
-- TOC entry 4715 (class 2606 OID 16467)
-- Name: table3 table3_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main.table3
    ADD CONSTRAINT table3_pkey PRIMARY KEY (id);


--
-- TOC entry 4717 (class 2606 OID 16472)
-- Name: table4 table4_pkey; Type: CONSTRAINT; Schema: main; Owner: postgres
--

ALTER TABLE ONLY main.table4
    ADD CONSTRAINT table4_pkey PRIMARY KEY (id);


-- Completed on 2026-01-11 12:14:15

--
-- PostgreSQL database dump complete
--

