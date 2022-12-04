--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: pegawai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pegawai (
    nopegawai integer NOT NULL,
    nama character varying(30),
    alamat character varying(50),
    phone character varying(30),
    pekerjaan character varying(30)
);


ALTER TABLE public.pegawai OWNER TO postgres;

--
-- Name: pegawai_nopegawai_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pegawai_nopegawai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pegawai_nopegawai_seq OWNER TO postgres;

--
-- Name: pegawai_nopegawai_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pegawai_nopegawai_seq OWNED BY public.pegawai.nopegawai;


--
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    nopelanggan integer NOT NULL,
    nama character varying(30),
    phone character varying(12),
    alamat character varying(30)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_nopelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_nopelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_nopelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_nopelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_nopelanggan_seq OWNED BY public.pelanggan.nopelanggan;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    nopesanan integer NOT NULL,
    tglpesanan date,
    nopelanggan integer,
    noproduk integer,
    jumlahpesanan integer
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_nopesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_nopesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_nopesanan_seq OWNER TO postgres;

--
-- Name: pesanan_nopesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_nopesanan_seq OWNED BY public.pesanan.nopesanan;


--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    noproduk integer NOT NULL,
    nama_produk character varying(30),
    jumlah integer,
    harga_jual numeric,
    harga_beli numeric
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: produk_noproduk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_noproduk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_noproduk_seq OWNER TO postgres;

--
-- Name: produk_noproduk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_noproduk_seq OWNED BY public.produk.noproduk;


--
-- Name: pegawai nopegawai; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pegawai ALTER COLUMN nopegawai SET DEFAULT nextval('public.pegawai_nopegawai_seq'::regclass);


--
-- Name: pelanggan nopelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN nopelanggan SET DEFAULT nextval('public.pelanggan_nopelanggan_seq'::regclass);


--
-- Name: pesanan nopesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN nopesanan SET DEFAULT nextval('public.pesanan_nopesanan_seq'::regclass);


--
-- Name: produk noproduk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN noproduk SET DEFAULT nextval('public.produk_noproduk_seq'::regclass);


--
-- Data for Name: pegawai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pegawai (nopegawai, nama, alamat, phone, pekerjaan) FROM stdin;
2030	ABDUL	Majene	082333444555	Manager
2031	UDIN	Malunda	083647898778	Kasir
2032	MADI	Majene	081234567890	Pesortir
2033	ANDI	Makassar	089112334556	Distributor
\.


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (nopelanggan, nama, phone, alamat) FROM stdin;
3001	alif	082122322432	Pakkola
3002	nurul	081474759345	Saleppa
3003	ria	082182983389	Tinambung
3004	anto	089222333432	Leppe
3005	ridha	082565768876	Binanga
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (nopesanan, tglpesanan, nopelanggan, noproduk, jumlahpesanan) FROM stdin;
1071	2022-12-06	3002	2050	6
1072	2022-12-07	3004	2054	2
1073	2022-12-10	3001	2051	1
1074	2022-12-22	3003	2055	3
1075	2022-12-23	3004	2052	2
1076	2022-12-27	3002	2050	3
1077	2022-12-27	3004	2057	5
1078	2022-12-27	3002	2051	8
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (noproduk, nama_produk, jumlah, harga_jual, harga_beli) FROM stdin;
2050	indomie goreng	80	120000	80000
2051	aqua 1500ml	10	25000	15000
2052	Gula pasir	12	168000	150000
2053	beras jagung 700 gram	43	17000	15000
2054	kecap bango 600ml	22	28000	20000
2055	pepsodent herbal	29	15000	12000
2056	rinso matic bubuk	12	22500	20000
2057	juice buavita maggo	63	7500	5000
\.


--
-- Name: pegawai_nopegawai_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pegawai_nopegawai_seq', 1, false);


--
-- Name: pelanggan_nopelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_nopelanggan_seq', 1, false);


--
-- Name: pesanan_nopesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_nopesanan_seq', 1, false);


--
-- Name: produk_noproduk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_noproduk_seq', 1, false);


--
-- Name: pegawai pegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (nopegawai);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (nopelanggan);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (nopesanan);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (noproduk);


--
-- PostgreSQL database dump complete
--

