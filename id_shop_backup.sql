--
-- PostgreSQL database dump
--

\restrict fFPUgNRNXx2bdns2x1ygG8ceoHhVoQcyk37k4sCEVXdkusO553zh05EfaPPtehw

-- Dumped from database version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)

-- Started on 2026-04-02 14:42:53 MSK

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
-- TOC entry 219 (class 1259 OID 33148)
-- Name: id_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.id_shop (
    id_shop smallint NOT NULL,
    id_product smallint NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public.id_shop OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 33148)
-- Dependencies: 219
-- Data for Name: id_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.id_shop (id_shop, id_product, quantity) FROM stdin;
1	1	50
1	2	35
1	3	20
2	1	45
2	4	15
2	5	60
3	2	40
3	6	10
3	7	30
4	8	25
\.


--
-- TOC entry 3318 (class 2606 OID 33152)
-- Name: id_shop id_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id_shop
    ADD CONSTRAINT id_shop_pkey PRIMARY KEY (id_shop, id_product);


--
-- TOC entry 3319 (class 2606 OID 33158)
-- Name: id_shop id_shop_id_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id_shop
    ADD CONSTRAINT id_shop_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.product_shop(id) ON DELETE CASCADE;


--
-- TOC entry 3320 (class 2606 OID 33153)
-- Name: id_shop id_shop_id_shop_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.id_shop
    ADD CONSTRAINT id_shop_id_shop_fkey FOREIGN KEY (id_shop) REFERENCES public.shop(id) ON DELETE CASCADE;


-- Completed on 2026-04-02 14:42:53 MSK

--
-- PostgreSQL database dump complete
--

\unrestrict fFPUgNRNXx2bdns2x1ygG8ceoHhVoQcyk37k4sCEVXdkusO553zh05EfaPPtehw

