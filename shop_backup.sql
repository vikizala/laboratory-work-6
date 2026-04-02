--
-- PostgreSQL database dump
--

\restrict osg4BmkSmCJhpkJVbNjCwl105T4YlS06mJezkUSj38xnvuE7uIXFX1tMhgigiES

-- Dumped from database version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)

-- Started on 2026-04-02 18:55:26 MSK

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
-- TOC entry 217 (class 1259 OID 33130)
-- Name: shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop (
    id smallint NOT NULL,
    name_shop character varying(255) NOT NULL,
    address_shop character varying(255) NOT NULL
);


ALTER TABLE public.shop OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 33130)
-- Dependencies: 217
-- Data for Name: shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop (id, name_shop, address_shop) FROM stdin;
1	Перекресток	Арбат, 10
2	Пятерочка	Невский, 100
3	Магнит	Баумана, 25
4	Лента	Красный пр., 200
5	Ашан	Малышева, 150
6	Окей	Б. Покровская, 40
7	ВкусВилл	Ленинградская, 30
8	Дикси	Буденновский, 55
9	Метро	Октября, 80
10	Глобус	Мира, 12
\.


--
-- TOC entry 3318 (class 2606 OID 33140)
-- Name: shop shop_address_shop_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_address_shop_key UNIQUE (address_shop);


--
-- TOC entry 3320 (class 2606 OID 33138)
-- Name: shop shop_name_shop_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_name_shop_key UNIQUE (name_shop);


--
-- TOC entry 3322 (class 2606 OID 33136)
-- Name: shop shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_pkey PRIMARY KEY (id);


-- Completed on 2026-04-02 18:55:26 MSK

--
-- PostgreSQL database dump complete
--

\unrestrict osg4BmkSmCJhpkJVbNjCwl105T4YlS06mJezkUSj38xnvuE7uIXFX1tMhgigiES

