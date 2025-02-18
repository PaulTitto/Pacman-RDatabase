PGDMP     5    "                {            FinalExamRD    15.2    15.2     !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16927    FinalExamRD    DATABASE     �   CREATE DATABASE "FinalExamRD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "FinalExamRD";
                postgres    false            �            1259    16963    bid    TABLE     �   CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    car_product_id integer,
    buyer_id integer,
    date_bid date,
    bid_price integer,
    bid_status character varying(100)
);
    DROP TABLE public.bid;
       public         heap    postgres    false            �            1259    16943    buyer    TABLE     �   CREATE TABLE public.buyer (
    buyer_id integer NOT NULL,
    nama_buyer character varying(100) NOT NULL,
    kontak integer,
    city_id integer
);
    DROP TABLE public.buyer;
       public         heap    postgres    false            �            1259    16953    car_product    TABLE     �   CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    brand character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    body_type character varying(100),
    year integer,
    price integer,
    seller_id integer
);
    DROP TABLE public.car_product;
       public         heap    postgres    false            �            1259    16928    city    TABLE     ~   CREATE TABLE public.city (
    city_id integer NOT NULL,
    nama_kota character varying(100) NOT NULL,
    location point
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16978    iklan    TABLE     �   CREATE TABLE public.iklan (
    iklan_id integer NOT NULL,
    car_product_id integer,
    seller_id integer,
    date_post date
);
    DROP TABLE public.iklan;
       public         heap    postgres    false            �            1259    16933    seller    TABLE     �   CREATE TABLE public.seller (
    seller_id integer NOT NULL,
    nama_seller character varying(100) NOT NULL,
    kontak integer,
    city_id integer
);
    DROP TABLE public.seller;
       public         heap    postgres    false                      0    16963    bid 
   TABLE DATA           `   COPY public.bid (bid_id, car_product_id, buyer_id, date_bid, bid_price, bid_status) FROM stdin;
    public          postgres    false    218   �                  0    16943    buyer 
   TABLE DATA           F   COPY public.buyer (buyer_id, nama_buyer, kontak, city_id) FROM stdin;
    public          postgres    false    216   $!                 0    16953    car_product 
   TABLE DATA           b   COPY public.car_product (product_id, brand, model, body_type, year, price, seller_id) FROM stdin;
    public          postgres    false    217   "                 0    16928    city 
   TABLE DATA           <   COPY public.city (city_id, nama_kota, location) FROM stdin;
    public          postgres    false    214   j$                 0    16978    iklan 
   TABLE DATA           O   COPY public.iklan (iklan_id, car_product_id, seller_id, date_post) FROM stdin;
    public          postgres    false    219   �%                 0    16933    seller 
   TABLE DATA           I   COPY public.seller (seller_id, nama_seller, kontak, city_id) FROM stdin;
    public          postgres    false    215   .&       �           2606    16967    bid bid_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);
 6   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pkey;
       public            postgres    false    218            }           2606    16947    buyer buyer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.buyer
    ADD CONSTRAINT buyer_pkey PRIMARY KEY (buyer_id);
 :   ALTER TABLE ONLY public.buyer DROP CONSTRAINT buyer_pkey;
       public            postgres    false    216                       2606    16957    car_product car_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_pkey PRIMARY KEY (product_id);
 F   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_pkey;
       public            postgres    false    217            y           2606    16932    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    214            �           2606    16982    iklan iklan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT iklan_pkey PRIMARY KEY (iklan_id);
 :   ALTER TABLE ONLY public.iklan DROP CONSTRAINT iklan_pkey;
       public            postgres    false    219            {           2606    16937    seller seller_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (seller_id);
 <   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_pkey;
       public            postgres    false    215            �           2606    16968    bid bid_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_ibfk_1 FOREIGN KEY (car_product_id) REFERENCES public.car_product(product_id);
 8   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_ibfk_1;
       public          postgres    false    218    3199    217            �           2606    16973    bid bid_ibfk_2    FK CONSTRAINT     t   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_ibfk_2 FOREIGN KEY (buyer_id) REFERENCES public.buyer(buyer_id);
 8   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_ibfk_2;
       public          postgres    false    3197    218    216            �           2606    16948    buyer buyer_ibfk_1    FK CONSTRAINT     u   ALTER TABLE ONLY public.buyer
    ADD CONSTRAINT buyer_ibfk_1 FOREIGN KEY (city_id) REFERENCES public.city(city_id);
 <   ALTER TABLE ONLY public.buyer DROP CONSTRAINT buyer_ibfk_1;
       public          postgres    false    3193    216    214            �           2606    16958    car_product car_product_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_ibfk_1 FOREIGN KEY (seller_id) REFERENCES public.seller(seller_id);
 H   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_ibfk_1;
       public          postgres    false    217    215    3195            �           2606    16983    iklan iklan_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT iklan_ibfk_1 FOREIGN KEY (car_product_id) REFERENCES public.car_product(product_id);
 <   ALTER TABLE ONLY public.iklan DROP CONSTRAINT iklan_ibfk_1;
       public          postgres    false    3199    219    217            �           2606    16988    iklan iklan_ibfk_2    FK CONSTRAINT     {   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT iklan_ibfk_2 FOREIGN KEY (seller_id) REFERENCES public.seller(seller_id);
 <   ALTER TABLE ONLY public.iklan DROP CONSTRAINT iklan_ibfk_2;
       public          postgres    false    215    219    3195            �           2606    16938    seller seller_ibfk_1    FK CONSTRAINT     w   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_ibfk_1 FOREIGN KEY (city_id) REFERENCES public.city(city_id);
 >   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_ibfk_1;
       public          postgres    false    215    214    3193               B   x�-�1� �������#mڴT����-G��	���]�P��;�i���uT��q�VO��[�         �   x�-��n�0Eg�+�EEZ�<:�},
]X��X���2v.�>x�{����,�(����8x��}��m��Ӕ��"$B�M8��ଋ�"՝�"y�	M�����/����j��� ��~�̹��7m&؇�!�?D�cݸdH�t/7���v��k^��ǀ�����p�Om����"=�ޮ�>t�b��xݷ�~���-��U�Vw�ɺ�c��S�u��HP         A  x����n1��=O������2���J������� �J?���;X{7�����s�ۨ���&��F�ӪY����>�M�E�Bo����E��#F��a0U���q@��*��L�Xp=�n�K]"^�|�0*������ �F�Ȱ֞�������3B{�8�
�3͗��n�M`����,�����;��y�7�W/C���=P��q |J�sڬ��������K�&*FZ8(�̪���M�qrE�d܊��$ ���l�,�j���mc,3 �� RAT����/Ę�@����''G��A�<�a�P~�MR_����2���8��m��P:k��eWC�rN�ܕr�C��6�3����)�=G_�~����r�L *�eN��+�+F˦XIb��� ,��g���?<�d��e�/�z�Ɩm�K��po���x�N�k�}�W��H��z9n�5���9{#� &��t<5��e�r�jr(�bL��g����E�o��&����9}�>�6ͼ���J#��Z:�~��r�P\(���Sg�2X]k������� �^艱         e  x�Uұj�@�y��-��I:���Щ%PH;��$���=��+�N YL�;��_&�p��������p����YIE� J(�b��A�[��k�GH��sN��9���y:1N��(N��-^o�k�b���~�o|4�C�%%�y���8_¬����\�@��	 ��p$wer��=�K,D\fJT��t)��ow�2��5#�Sc )��,^n_j��z	RN�d�A��+�2�]7S��ج�c���h~��o��iw����L\��v�\�.���z�^�����ZVk
s)D��5��W��ݨ��P�l`�ƭ�kؕp:��?�v�g��d<_?��m{�ɖ ,8����ڪ��b�����~         ?   x�U̱� ��"�!�2��*��z�a�8i�bzĳyZX�'ˇ����y��� T��         �   x�5��j�0���S�	�$Y�}]�`lc찋�a�$��o?9������.s�*���D)eR��"��t���祭�+��sA`QvËUoӟu;u�*�"<M�dK���@�&� ���ǭX-��������\��t���F�%�V�o�&�K31턜$8̶��6�$�܇�/��|ne�+��Y�O�^K_c�����UIz��0�?�#H�     