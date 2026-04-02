--
-- PostgreSQL database dump
--

\restrict 7zghAS8tqhMRNiti7Vn0EVWlYomwjGPwvihYzReJCANwaHhh5NzPc6VgSBQ23Ix

-- Dumped from database version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)

-- Started on 2026-04-02 18:54:41 MSK

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 33141)
-- Name: product_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_shop (
    id smallint NOT NULL,
    name_product character varying(255) NOT NULL,
    price smallint NOT NULL
);


ALTER TABLE public.product_shop OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 33141)
-- Dependencies: 218
-- Data for Name: product_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_shop (id, name_product, price) FROM stdin;
1	Яблоки	120
2	Бананы	95
3	Апельсины	110
4	Мандарины	130
5	Груши	140
6	Виноград	180
7	Картофель	45
8	Морковь	35
9	Лук	32
10	Капуста	28
\.


--
-- TOC entry 3318 (class 2606 OID 33147)
-- Name: product_shop product_shop_name_product_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_shop
    ADD CONSTRAINT product_shop_name_product_key UNIQUE (name_product);


--
-- TOC entry 3320 (class 2606 OID 33145)
-- Name: product_shop product_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_shop
    ADD CONSTRAINT product_shop_pkey PRIMARY KEY (id);


-- Completed on 2026-04-02 18:54:41 MSK

--
-- PostgreSQL database dump complete
--

\unrestrict 7zghAS8tqhMRNiti7Vn0EVWlYomwjGPwvihYzReJCANwaHhh5NzPc6VgSBQ23Ix

