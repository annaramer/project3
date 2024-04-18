toc.dat                                                                                             0000600 0004000 0002000 00000003250 14610061614 0014436 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |           housing_prices    14.11    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17861    housing_prices    DATABASE     �   CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE housing_prices;
                postgres    false         �            1259    18000 
   population    TABLE     �   CREATE TABLE public.population (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    population_2022 integer NOT NULL
);
    DROP TABLE public.population;
       public         heap    postgres    false         �          0    18000 
   population 
   TABLE DATA           B   COPY public.population (city, state, population_2022) FROM stdin;
    public          postgres    false    210       3306.dat ^           2606    18004    population population_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (city, state);
 D   ALTER TABLE ONLY public.population DROP CONSTRAINT population_pkey;
       public            postgres    false    210    210                                                                                                                                                                                                                                                                                                                                                                3306.dat                                                                                            0000600 0004000 0002000 00000000320 14610061614 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        New York	NY	8335897
Los Angeles	CA	3822238
Chicago	IL	2665039
Houston	TX	2302878
Phoenix	AZ	1644409
Philadelphia	PA	1567258
San Antonio	TX	1472909
San Diego	CA	1381162
Dallas	TX	1299544
Austin	TX	974447
\.


                                                                                                                                                                                                                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000004051 14610061614 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11
-- Dumped by pg_dump version 16.2

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

DROP DATABASE housing_prices;
--
-- Name: housing_prices; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE housing_prices OWNER TO postgres;

\connect housing_prices

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
-- Name: population; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.population (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    population_2022 integer NOT NULL
);


ALTER TABLE public.population OWNER TO postgres;

--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.population (city, state, population_2022) FROM stdin;
\.
COPY public.population (city, state, population_2022) FROM '$$PATH$$/3306.dat';

--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (city, state);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       