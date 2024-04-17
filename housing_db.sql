PGDMP  3                    |           housing_prices    14.11    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17861    housing_prices    DATABASE     �   CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE housing_prices;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    17995    housing    TABLE     �   CREATE TABLE public.housing (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.housing;
       public         heap    postgres    false    4            �            1259    18000 
   population    TABLE     �   CREATE TABLE public.population (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    population_2022 integer NOT NULL
);
    DROP TABLE public.population;
       public         heap    postgres    false    4            �          0    17995    housing 
   TABLE DATA           ;   COPY public.housing (city, state, year, price) FROM stdin;
    public          postgres    false    209   l       �          0    18000 
   population 
   TABLE DATA           B   COPY public.population (city, state, population_2022) FROM stdin;
    public          postgres    false    210   �       `           2606    17999    housing housing_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT housing_pkey PRIMARY KEY (city, state, year);
 >   ALTER TABLE ONLY public.housing DROP CONSTRAINT housing_pkey;
       public            postgres    false    209    209    209            b           2606    18004    population population_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (city, state);
 D   ALTER TABLE ONLY public.population DROP CONSTRAINT population_pkey;
       public            postgres    false    210    210            c           2606    18005    housing fk_housing_population    FK CONSTRAINT     �   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT fk_housing_population FOREIGN KEY (city, state) REFERENCES public.population(city, state);
 G   ALTER TABLE ONLY public.housing DROP CONSTRAINT fk_housing_population;
       public          postgres    false    210    3170    209    209    210            �   6  x�m���[7�k���'ȹ���������4B"xR��<~~ʛ8��F�?:��87>��=|�}�T?�M�Tb������p�x���˫Ë��u�^=��8~����˭S���������j�k��ܾ>�]�'�w��?�/�?O��������?U���N�����ۿ2��������|���ţZ���+9�~�Vo~�q8I�'��̬E�!��mV#��2B�����*���l�m�<�@H33䆃yǌP��
�8���ffx2��ي��=��̆�Z%��m �.��P��2�Ñ���!���3�!�3�A1Q���)��ffG�DT]0{��湶��D���ru��>�W�c�<9�'f�Z�mǌx,����j+=3�S��s�`�ʪ���6��� �J�P%�rmCn�W�ÑE���zH�9v_0ǽ}Ug�(\�Ѯ�;�Þ��FV3sG���J/1CF'���a#�32F@��3⩾�a}t�T۽psќg�Tc�a�yf�L� �~*r��M�C抛[0�?��hb��H5$3�`b�iw����11O���3sC���{�V��2s+�-Xf�HE)���g#�b���R?O��u�܊��:/��J������rsεM4
&t��a���3d��c���ib�\� �`�����ϐśԶcF<Q�˂y�d���LE�G23����f�*O�$���P]�93�w�e�a������`Г��$#��]uϛ��<�'�Y�a]�i��R:6�ff��}ff��N�ܾ��1=W̰��X�xn�Ͱc���@f���񴚙�7�����m�����      �   �   x���
�0���S��l���J)�A�K�`�����zf���{q���pRj�-vu^��J�a@:"�Wc>�k�Md�n��u}��:�n$r��0�4��#��j<G��K*�1Gm,i��8���\BY�\��mN,1.�����8�k�V
��O{ˎ����`6Q     