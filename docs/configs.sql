--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-11-18 15:27:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2996 (class 0 OID 67693)
-- Dependencies: 235
-- Data for Name: Configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (1, 'activity', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"council\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"project\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true}"}', '2020-11-18 06:20:48.274-06', '2020-11-18 06:20:48.274-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (2, 'attendance', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"eventid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"preacherid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"women\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"men\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"children\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": false}"}', '2020-11-18 06:22:43.683-06', '2020-11-18 06:22:43.683-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (3, 'freport', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"fellowshipid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"newcells\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"totalcells\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"attendance\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true}"}', '2020-11-18 06:24:15.815-06', '2020-11-18 06:24:15.815-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (4, 'group', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"cmf\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"cwf\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"cyf\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"rcf\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true}"}', '2020-11-18 06:25:06.979-06', '2020-11-18 06:25:06.979-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (5, 'membership', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"adults\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"children\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"tithers\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"newmembers\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true}"}', '2020-11-18 06:25:50.54-06', '2020-11-18 06:25:50.54-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (6, 'training', 'report', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"converts\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"trainees\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true}"}', '2020-11-18 06:26:43.278-06', '2020-11-18 06:26:43.278-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (7, 'categories', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"name\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:27:30.835-06', '2020-11-18 06:27:30.835-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (8, 'events', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"name\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"month\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"month is required\"}}","{\"field\": \"year\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"year is required\"}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:28:58.064-06', '2020-11-18 06:28:58.064-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (9, 'zones', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"name\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"country\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"country is required\"}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:29:44.897-06', '2020-11-18 06:29:44.897-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (10, 'downloads', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"categoryid\", \"datatype\": \"integer\", \"required\": true}","{\"field\": \"month\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"month is required\"}}","{\"field\": \"year\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"year is required\"}}","{\"field\": \"url\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"url is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"name\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:31:23.969-06', '2020-11-18 06:31:23.969-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (11, 'fellowships', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"country\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"country is required\"}}","{\"field\": \"state\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"state is required\"}}","{\"field\": \"city\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"city is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true, \"validation\": {\"required\": \"branch is required\"}}","{\"field\": \"name\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"address\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"address is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:34:27.312-06', '2020-11-18 06:34:27.312-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (44, 'preachers', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"country\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"country is required\"}}","{\"field\": \"state\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"state is required\"}}","{\"field\": \"city\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"city is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true, \"validation\": {\"required\": \"branch is required\"}}","{\"field\": \"firstname\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"firstname is required\", \"minLength\": {\"value\": 2, \"message\": \"min. of 2 characters required\"}}}","{\"field\": \"lastname\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"lastname is required\", \"minLength\": {\"value\": 2, \"message\": \"min. of 2 characters required\"}}}","{\"field\": \"address\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"address is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:45:58.137-06', '2020-11-18 06:45:58.137-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (45, 'users', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"country\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"country is required\"}}","{\"field\": \"branchid\", \"datatype\": \"integer\", \"required\": true, \"validation\": {\"required\": \"branch is required\"}}","{\"field\": \"role\", \"datatype\": \"string\", \"required\": true}","{\"field\": \"firstname\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"firstname is required\", \"minLength\": {\"value\": 2, \"message\": \"min. of 2 characters required\"}}}","{\"field\": \"lastname\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"lastname is required\", \"minLength\": {\"value\": 2, \"message\": \"min. of 2 characters required\"}}}","{\"field\": \"phone\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"phone is required\", \"maxLength\": {\"value\": 20, \"message\": \"max. of 20 digits required\"}, \"minLength\": {\"value\": 3, \"message\": \"min. of 3 digits required\"}}}","{\"field\": \"email\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"email is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"password\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"password is required\", \"minLength\": {\"value\": 10, \"message\": \"min. of 10 characters required\"}}}","{\"field\": \"confirm password\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"confirm password is required\", \"minLength\": {\"value\": 10, \"message\": \"min. of 10 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:51:48.416-06', '2020-11-18 06:51:48.416-06');
INSERT INTO public."Configs" (id, name, type, config, "createdAt", "updatedAt") VALUES (46, 'branches', 'setting', '{"{\"field\": \"userid\", \"datatype\": \"uuid\", \"required\": true}","{\"field\": \"country\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"country is required\"}}","{\"field\": \"state\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"state is required\"}}","{\"field\": \"city\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"city is required\", \"minLength\": {\"value\": 2, \"message\": \"min. of 2 characters required\"}}}","{\"field\": \"zoneid\", \"datatype\": \"integer\", \"required\": true, \"validation\": {\"required\": \"zone is required\"}}","{\"field\": \"address\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"address is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"name\", \"unique\": true, \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"name is required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}","{\"field\": \"notes\", \"datatype\": \"string\", \"required\": true, \"validation\": {\"required\": \"notes are required\", \"minLength\": {\"value\": 5, \"message\": \"min. of 5 characters required\"}}}"}', '2020-11-18 06:56:23.831-06', '2020-11-18 06:56:23.831-06');


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 234
-- Name: Configs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Configs_id_seq"', 46, true);


SET default_tablespace = '';

--
-- TOC entry 2866 (class 2606 OID 67703)
-- Name: Configs Configs_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_name_key" UNIQUE (name);


--
-- TOC entry 2868 (class 2606 OID 67701)
-- Name: Configs Configs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configs"
    ADD CONSTRAINT "Configs_pkey" PRIMARY KEY (id);


-- Completed on 2020-11-18 15:27:16

--
-- PostgreSQL database dump complete
--

