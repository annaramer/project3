toc.dat                                                                                             0000600 0004000 0002000 00000004042 14610061564 0014442 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |           housing_prices    14.11    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17861    housing_prices    DATABASE     �   CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE housing_prices;
                postgres    false         �            1259    17995    housing    TABLE     �   CREATE TABLE public.housing (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.housing;
       public         heap    postgres    false         �          0    17995    housing 
   TABLE DATA           ;   COPY public.housing (city, state, year, price) FROM stdin;
    public          postgres    false    209       3307.dat ^           2606    17999    housing housing_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT housing_pkey PRIMARY KEY (city, state, year);
 >   ALTER TABLE ONLY public.housing DROP CONSTRAINT housing_pkey;
       public            postgres    false    209    209    209         _           2606    18005    housing fk_housing_population    FK CONSTRAINT     �   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT fk_housing_population FOREIGN KEY (city, state) REFERENCES public.population(city, state);
 G   ALTER TABLE ONLY public.housing DROP CONSTRAINT fk_housing_population;
       public          postgres    false    209    209                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3307.dat                                                                                            0000600 0004000 0002000 00000005201 14610061564 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        New York	NY	2014	402362
Los Angeles	CA	2014	494696
Chicago	IL	2014	192162
Dallas	TX	2014	169951
Houston	TX	2014	168793
Philadelphia	PA	2014	204589
Phoenix	AZ	2014	202542
San Diego	CA	2014	455060
San Antonio	TX	2014	156013
Austin	TX	2014	240550
New York	NY	2015	416699
Los Angeles	CA	2015	516088
Chicago	IL	2015	200389
Dallas	TX	2015	187043
Houston	TX	2015	186431
Philadelphia	PA	2015	209850
Phoenix	AZ	2015	215163
San Diego	CA	2015	489168
San Antonio	TX	2015	167766
Austin	TX	2015	265047
New York	NY	2016	435647
Los Angeles	CA	2016	543868
Chicago	IL	2016	211026
Dallas	TX	2016	209094
Houston	TX	2016	197103
Philadelphia	PA	2016	217900
Phoenix	AZ	2016	234449
San Diego	CA	2016	526856
San Antonio	TX	2016	179321
Austin	TX	2016	284185
New York	NY	2017	458805
Los Angeles	CA	2017	593676
Chicago	IL	2017	222481
Dallas	TX	2017	230764
Houston	TX	2017	204476
Philadelphia	PA	2017	227387
Phoenix	AZ	2017	250576
San Diego	CA	2017	568041
San Antonio	TX	2017	190776
Austin	TX	2017	298141
New York	NY	2018	480549
Los Angeles	CA	2018	651578
Chicago	IL	2018	232501
Dallas	TX	2018	248263
Houston	TX	2018	212859
Philadelphia	PA	2018	236892
Phoenix	AZ	2018	269848
San Diego	CA	2018	598377
San Antonio	TX	2018	201455
Austin	TX	2018	308120
New York	NY	2019	495660
Los Angeles	CA	2019	661262
Chicago	IL	2019	237701
Dallas	TX	2019	256268
Houston	TX	2019	221167
Philadelphia	PA	2019	246229
Phoenix	AZ	2019	286413
San Diego	CA	2019	607060
San Antonio	TX	2019	209311
Austin	TX	2019	317451
New York	NY	2020	514550
Los Angeles	CA	2020	702113
Chicago	IL	2020	245586
Dallas	TX	2020	268992
Houston	TX	2020	230612
Philadelphia	PA	2020	263586
Phoenix	AZ	2020	317584
San Diego	CA	2020	646321
San Antonio	TX	2020	221938
Austin	TX	2020	344899
New York	NY	2021	564338
Los Angeles	CA	2021	800193
Chicago	IL	2021	271834
Dallas	TX	2021	314521
Houston	TX	2021	262498
Philadelphia	PA	2021	297167
Phoenix	AZ	2021	396575
San Diego	CA	2021	761293
San Antonio	TX	2021	255609
Austin	TX	2021	455730
New York	NY	2022	607852
Los Angeles	CA	2022	897896
Chicago	IL	2022	293834
Dallas	TX	2022	378230
Houston	TX	2022	305275
Philadelphia	PA	2022	325902
Phoenix	AZ	2022	471401
San Diego	CA	2022	880894
San Antonio	TX	2022	296290
Austin	TX	2022	535014
New York	NY	2023	621560
Los Angeles	CA	2023	898687
Chicago	IL	2023	302620
Dallas	TX	2023	375329
Houston	TX	2023	305278
Philadelphia	PA	2023	341504
Phoenix	AZ	2023	447272
San Diego	CA	2023	887806
San Antonio	TX	2023	292589
Austin	TX	2023	478175
New York	NY	2024	638713
Los Angeles	CA	2024	923457
Chicago	IL	2024	307221
Dallas	TX	2024	371673
Houston	TX	2024	303308
Philadelphia	PA	2024	348935
Phoenix	AZ	2024	452325
San Diego	CA	2024	924382
San Antonio	TX	2024	283669
Austin	TX	2024	455686
\.


                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000004416 14610061564 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: housing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.housing (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.housing OWNER TO postgres;

--
-- Data for Name: housing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.housing (city, state, year, price) FROM stdin;
\.
COPY public.housing (city, state, year, price) FROM '$$PATH$$/3307.dat';

--
-- Name: housing housing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.housing
    ADD CONSTRAINT housing_pkey PRIMARY KEY (city, state, year);


--
-- Name: housing fk_housing_population; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.housing
    ADD CONSTRAINT fk_housing_population FOREIGN KEY (city, state) REFERENCES public.population(city, state);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  