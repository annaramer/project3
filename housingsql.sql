PGDMP                      |           housing_prices    14.11    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17861    housing_prices    DATABASE     �   CREATE DATABASE housing_prices WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE housing_prices;
                postgres    false            �            1259    17995    housing    TABLE     �   CREATE TABLE public.housing (
    city character varying(220) NOT NULL,
    state character varying(2) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.housing;
       public         heap    postgres    false            �          0    17995    housing 
   TABLE DATA           ;   COPY public.housing (city, state, year, price) FROM stdin;
    public          postgres    false    209   :       ^           2606    17999    housing housing_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT housing_pkey PRIMARY KEY (city, state, year);
 >   ALTER TABLE ONLY public.housing DROP CONSTRAINT housing_pkey;
       public            postgres    false    209    209    209            _           2606    18005    housing fk_housing_population    FK CONSTRAINT     �   ALTER TABLE ONLY public.housing
    ADD CONSTRAINT fk_housing_population FOREIGN KEY (city, state) REFERENCES public.population(city, state);
 G   ALTER TABLE ONLY public.housing DROP CONSTRAINT fk_housing_population;
       public          postgres    false    209    209            �   6  x�m���[7�k���'ȹ���������4B"xR��<~~ʛ8��F�?:��87>��=|�}�T?�M�Tb������p�x���˫Ë��u�^=��8~����˭S���������j�k��ܾ>�]�'�w��?�/�?O��������?U���N�����ۿ2��������|���ţZ���+9�~�Vo~�q8I�'��̬E�!��mV#��2B�����*���l�m�<�@H33䆃yǌP��
�8���ffx2��ي��=��̆�Z%��m �.��P��2�Ñ���!���3�!�3�A1Q���)��ffG�DT]0{��湶��D���ru��>�W�c�<9�'f�Z�mǌx,����j+=3�S��s�`�ʪ���6��� �J�P%�rmCn�W�ÑE���zH�9v_0ǽ}Ug�(\�Ѯ�;�Þ��FV3sG���J/1CF'���a#�32F@��3⩾�a}t�T۽psќg�Tc�a�yf�L� �~*r��M�C抛[0�?��hb��H5$3�`b�iw����11O���3sC���{�V��2s+�-Xf�HE)���g#�b���R?O��u�܊��:/��J������rsεM4
&t��a���3d��c���ib�\� �`�����ϐśԶcF<Q�˂y�d���LE�G23����f�*O�$���P]�93�w�e�a������`Г��$#��]uϛ��<�'�Y�a]�i��R:6�ff��}ff��N�ܾ��1=W̰��X�xn�Ͱc���@f���񴚙�7�����m�����     