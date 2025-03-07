PGDMP     '    6                {            ventas    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24588    ventas    DATABASE     e   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    24589    book    TABLE     "  CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description text,
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date,
    updated_at date
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    24612 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    24602    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status character varying(100),
    created_at date
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    24597    user    TABLE     c  CREATE TABLE public."user" (
    id integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45) NOT NULL,
    password character varying(45) NOT NULL,
    role character varying(100),
    created_at date,
    updated_at date
);
    DROP TABLE public."user";
       public         heap    postgres    false            �          0    24589    book 
   TABLE DATA           r   COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    200   �       �          0    24612 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    203   d       �          0    24602    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    202   �       �          0    24597    user 
   TABLE DATA           r   COPY public."user" (id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    201   )       .           2606    24596    book id 
   CONSTRAINT     E   ALTER TABLE ONLY public.book
    ADD CONSTRAINT id PRIMARY KEY (id);
 1   ALTER TABLE ONLY public.book DROP CONSTRAINT id;
       public            postgres    false    200            4           2606    24616    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    203            2           2606    24606    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    202            0           2606    24601    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    201            6           2606    24617    sales_item book_id    FK CONSTRAINT     p   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES public.book(id);
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT book_id;
       public          postgres    false    200    203    2862            5           2606    24607    sales_order customer_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public."user"(id);
 A   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT customer_id;
       public          postgres    false    201    202    2864            7           2606    24622    sales_item order_id    FK CONSTRAINT     y   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 =   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT order_id;
       public          postgres    false    203    2866    202            �   Y  x�U�KN�0����� �q�[($*���$Nk���I�r.��Ř��0�t�*��Q�n�s��yV&s:��:5�N���C
��vL�Ǐ��������Q��r�=�Pz80�^�1����a���7cO�(�'�'BO�P/�;�^�Qm�������!���Qӯ������?vzRr�y,s|e�..�!W�������X����^��g�8S��)0S�L�C����5Zvޕ�W/�%�2��d���5K��]|��y��C��
��!^Õa[��V�j�u,k���ed�C�����j��6~�ml�C6償���.��Nˁ];�����~���M�>��Pl�$�+�      �   G   x�-��@!D�����o���C1��8���	���c�̒'�)*C�4�jrlT9.��Y~�\afv �Qw      �   ^   x�]�;
�0��a$y�z	O�F0�ML��E�Z�2�Fc4�h�.[�G!Ojd�iڼ�&:F"�;"=����.,�S��G1�w���	�=([      �     x����j� �ϓ������֒.K�Bz�e0".F�${��9�bu�HR/���N
�5Ѳ��~��"�D�R�� ���$���RzGS�6e�A��T����6Y�����,��ݳC�P�F�HV<�"���`�4�nZ+�ȿ�	YOІ=�#��(�Q��|��m��1�Ps+\��X�q!�)�El�pB�r��}���lle�giD� /����in&$+֗�>�W��(�R��a21��鰇�܀H���x"6Ο�$I~�D��     