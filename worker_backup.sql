--
-- PostgreSQL database dump
--

\restrict r7eagmKF7NKmMA3piavSplucdqBQMu1iGuGzH5VsYHPINJwrBW1g9F9sBDovqu0

-- Dumped from database version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)
-- Dumped by pg_dump version 17.7 (Ubuntu 17.7-0ubuntu0.25.04.1)

-- Started on 2026-04-02 18:57:50 MSK

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
-- TOC entry 220 (class 1259 OID 33210)
-- Name: worker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worker (
    worker_id integer NOT NULL,
    shop_id integer,
    name character varying(255),
    salary integer NOT NULL,
    "position" character varying(255)
);


ALTER TABLE public.worker OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 33210)
-- Dependencies: 220
-- Data for Name: worker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worker (worker_id, shop_id, name, salary, "position") FROM stdin;
1	1	Иванов Иван Иванович	50000	Продавец
2	1	Петрова Елена Сергеевна	65000	Старший продавец
3	2	Сидоров Алексей Владимирович	45000	Кассир
4	2	Кузнецова Ольга Александровна	90000	Управляющий
5	1	Морозов Дмитрий Петрович	55000	Продавец-консультант
6	3	Николаев Артем Сергеевич	40000	Грузчик
7	3	Васильева Анна Андреевна	70000	Товаровед
8	1	Соколов Павел Евгеньевич	75000	Администратор
9	2	Михайлова Татьяна Владимировна	35000	Уборщица
10	3	Федоров Андрей Игоревич	45000	Охранник
11	1	Егорова Мария Дмитриевна	80000	Бухгалтер
12	2	Степанова Екатерина Романовна	85000	Зам. управляющего
13	3	Белов Константин Николаевич	72000	Менеджер по закупкам
14	2	Алексеева Наталья Сергеевна	50000	Продавец
15	1	Тимофеев Денис Владимирович	48000	Кладовщик
16	3	Семенова Оксана Викторовна	58000	Пекарь
17	2	Григорьев Илья Михайлович	42000	Фасовщик
18	1	Борисова Инна Андреевна	47000	Курьер
19	3	Лебедев Максим Александрович	52000	Оператор ПК
20	3	Павлова Дарья Алексеевна	50000	Продавец
\.


--
-- TOC entry 3318 (class 2606 OID 33216)
-- Name: worker worker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_pkey PRIMARY KEY (worker_id);


--
-- TOC entry 3319 (class 2606 OID 33217)
-- Name: worker worker_shop_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker
    ADD CONSTRAINT worker_shop_id_fkey FOREIGN KEY (shop_id) REFERENCES public.shop(id);


-- Completed on 2026-04-02 18:57:50 MSK

--
-- PostgreSQL database dump complete
--

\unrestrict r7eagmKF7NKmMA3piavSplucdqBQMu1iGuGzH5VsYHPINJwrBW1g9F9sBDovqu0

