--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2023-07-04 14:09:27

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

DROP DATABASE "App";
--
-- TOC entry 3342 (class 1262 OID 16399)
-- Name: App; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "App" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


\connect "App"

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16431)
-- Name: Connect; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Connect" (
    id integer NOT NULL,
    price integer NOT NULL,
    idfirm integer,
    idrate integer,
    idcar integer
);


--
-- TOC entry 215 (class 1259 OID 16430)
-- Name: Connect_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public."Connect" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Connect_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16415)
-- Name: cars; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    model character varying
);


--
-- TOC entry 211 (class 1259 OID 16414)
-- Name: cars_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.cars ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 210 (class 1259 OID 16407)
-- Name: firm; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.firm (
    id integer NOT NULL,
    "Firm name" character varying NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 16406)
-- Name: firm_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.firm ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.firm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 214 (class 1259 OID 16423)
-- Name: rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rate (
    id integer NOT NULL,
    name character varying
);


--
-- TOC entry 213 (class 1259 OID 16422)
-- Name: rate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.rate ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3336 (class 0 OID 16431)
-- Dependencies: 216
-- Data for Name: Connect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Connect" (id, price, idfirm, idrate, idcar) FROM stdin;
1	100	1	1	1
2	100	1	1	2
3	100	1	1	3
4	300	1	2	3
5	300	1	2	4
6	300	1	2	5
7	300	1	2	6
8	500	1	3	7
9	500	1	3	8
10	500	1	3	9
11	100	2	1	1
12	100	2	1	2
13	100	2	1	3
14	400	2	2	4
15	400	2	2	5
16	50	3	1	1
17	50	3	1	2
18	250	3	2	3
19	250	3	2	5
20	250	3	2	6
21	300	3	4	4
22	300	3	4	5
23	300	3	4	10
24	600	3	3	7
25	600	3	3	9
26	600	3	3	11
\.


--
-- TOC entry 3332 (class 0 OID 16415)
-- Dependencies: 212
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cars (id, model) FROM stdin;
1	Audi A4
2	Kia Rio
3	Hyundai Solaris
4	 Toyota Camry
5	KIA Optima
6	Ford Mondeo
7	BMW 5
8	BMW 7
9	Audi A6
10	 Hyundai Elantra
11	Mercedes-Maybach S-class
\.


--
-- TOC entry 3330 (class 0 OID 16407)
-- Dependencies: 210
-- Data for Name: firm; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.firm (id, "Firm name") FROM stdin;
1	ГрандТакси
2	Быстрая Поездка
3	Автодрайв
\.


--
-- TOC entry 3334 (class 0 OID 16423)
-- Dependencies: 214
-- Data for Name: rate; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.rate (id, name) FROM stdin;
1	Эконом
2	Комфорт
3	Бизнес
4	Комфорт+
\.


--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 215
-- Name: Connect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Connect_id_seq"', 26, true);


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 211
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cars_id_seq', 11, true);


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 209
-- Name: firm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.firm_id_seq', 3, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 213
-- Name: rate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rate_id_seq', 4, true);


--
-- TOC entry 3182 (class 2606 OID 16421)
-- Name: cars cars_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pk PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 16435)
-- Name: Connect connect_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Connect"
    ADD CONSTRAINT connect_pk PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 16413)
-- Name: firm firm_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.firm
    ADD CONSTRAINT firm_pk PRIMARY KEY (id);


--
-- TOC entry 3184 (class 2606 OID 16429)
-- Name: rate rate_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rate
    ADD CONSTRAINT rate_pk PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 16436)
-- Name: Connect connect_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Connect"
    ADD CONSTRAINT connect_fk FOREIGN KEY (idfirm) REFERENCES public.firm(id);


--
-- TOC entry 3188 (class 2606 OID 16441)
-- Name: Connect connect_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Connect"
    ADD CONSTRAINT connect_fk_1 FOREIGN KEY (idcar) REFERENCES public.cars(id);


--
-- TOC entry 3189 (class 2606 OID 16446)
-- Name: Connect connect_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Connect"
    ADD CONSTRAINT connect_fk_2 FOREIGN KEY (idrate) REFERENCES public.rate(id);


-- Completed on 2023-07-04 14:09:28

--
-- PostgreSQL database dump complete
--

