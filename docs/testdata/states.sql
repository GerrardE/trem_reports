--
-- Data for Name: States; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."States" VALUES (1, 'La Massana', 1, 'AD', '04', '04', 1, 'Q24276', '2019-10-05 17:48:37-05', '2019-10-05 17:48:37-05');

--
-- Name: States_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."States_id_seq"', 2, false);


--
-- Name: States States_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- ALTER TABLE ONLY public."States"
--     ADD CONSTRAINT "States_pkey" PRIMARY KEY (id);


--
-- Name: States States_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

-- ALTER TABLE ONLY public."States"
--     ADD CONSTRAINT "States_country_id_fkey" FOREIGN KEY (country_id) REFERENCES public."Countries"(id);


--
-- PostgreSQL database dump complete
--

