PGDMP  *                    |           housing_prices    14.11    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17861    housing_prices    DATABASE     �   CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE housing_prices;
                postgres    false            �            1259    18000 
   population    TABLE     �   CREATE TABLE public.population (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    population_2022 integer NOT NULL
);
    DROP TABLE public.population;
       public         heap    postgres    false            �          0    18000 
   population 
   TABLE DATA           B   COPY public.population (city, state, population_2022) FROM stdin;
    public          postgres    false    210   �       ^           2606    18004    population population_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (city, state);
 D   ALTER TABLE ONLY public.population DROP CONSTRAINT population_pkey;
       public            postgres    false    210    210            �   �   x���
�0���S��l���J)�A�K�`�����zf���{q���pRj�-vu^��J�a@:"�Wc>�k�Md�n��u}��:�n$r��0�4��#��j<G��K*�1Gm,i��8���\BY�\��mN,1.�����8�k�V
��O{ˎ����`6Q     