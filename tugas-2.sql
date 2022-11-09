--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dosen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dosen (
    nip integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);


ALTER TABLE public.dosen OWNER TO postgres;

--
-- Name: dosen_nip_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dosen_nip_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dosen_nip_seq OWNER TO postgres;

--
-- Name: dosen_nip_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dosen_nip_seq OWNED BY public.dosen.nip;


--
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswa_nim_seq OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;


--
-- Name: matakuliah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matakuliah (
    idmk integer NOT NULL,
    mk character varying(30),
    sks integer
);


ALTER TABLE public.matakuliah OWNER TO postgres;

--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matakuliah_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matakuliah_idmk_seq OWNER TO postgres;

--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matakuliah_idmk_seq OWNED BY public.matakuliah.idmk;


--
-- Name: dosen nip; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen ALTER COLUMN nip SET DEFAULT nextval('public.dosen_nip_seq'::regclass);


--
-- Name: mahasiswa nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);


--
-- Name: matakuliah idmk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah ALTER COLUMN idmk SET DEFAULT nextval('public.matakuliah_idmk_seq'::regclass);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dosen (nip, nama, alamat) FROM stdin;
345	nuralamsyah	jawa
678	sulfayanti	polwali
\.


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
221114	yayat	majene
221234	muayyat	polwali
\.


--
-- Data for Name: matakuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matakuliah (idmk, mk, sks) FROM stdin;
2002	aljabar linear	3
2003	basis data	2
\.


--
-- Name: dosen_nip_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dosen_nip_seq', 1, false);


--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);


--
-- Name: matakuliah_idmk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matakuliah_idmk_seq', 1, false);


--
-- Name: dosen dosen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nip);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: matakuliah matakuliah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (idmk);


--
-- PostgreSQL database dump complete
--

