PGDMP                         }         	   Ecommerce    15.4    15.4      %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    40984 	   Ecommerce    DATABASE     ~   CREATE DATABASE "Ecommerce" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "Ecommerce";
                postgres    false            �            1259    49212    cart    TABLE     �   CREATE TABLE public.cart (
    user_id integer,
    item_id integer,
    name character varying(40),
    rating character varying(5),
    price integer,
    image character varying(40)
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    73788    checkout    TABLE     d  CREATE TABLE public.checkout (
    id integer NOT NULL,
    fname character varying(30),
    lname character varying(30),
    houseno character varying(100),
    apart character varying(100),
    town character varying(50),
    state character varying(50),
    zip character varying(15),
    phone character varying(20),
    email character varying(50)
);
    DROP TABLE public.checkout;
       public         heap    postgres    false            �            1259    65605    details    TABLE     P  CREATE TABLE public.details (
    item_id integer NOT NULL,
    image character varying(40),
    name character varying(40),
    price integer,
    disc integer,
    brand character varying(20),
    model character varying(20),
    operating character varying(20),
    cellular character varying(20),
    addt character varying(500)
);
    DROP TABLE public.details;
       public         heap    postgres    false            �            1259    49204    id    TABLE     +   CREATE TABLE public.id (
    id integer
);
    DROP TABLE public.id;
       public         heap    postgres    false            �            1259    49207    items    TABLE     �   CREATE TABLE public.items (
    item_id integer NOT NULL,
    name character varying(40),
    rating character varying(5),
    price integer,
    image character varying(40)
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    41003    login    TABLE     �   CREATE TABLE public.login (
    id integer NOT NULL,
    username character varying(30),
    password character varying(30),
    logged_in boolean
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    41002    login_id_seq    SEQUENCE     �   CREATE SEQUENCE public.login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.login_id_seq;
       public          postgres    false    215            )           0    0    login_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.login_id_seq OWNED BY public.login.id;
          public          postgres    false    214            �            1259    49198    profile    TABLE     �   CREATE TABLE public.profile (
    id integer NOT NULL,
    fname character varying(30),
    lname character varying(30),
    email character varying(80),
    address character varying(200),
    phone character varying(10)
);
    DROP TABLE public.profile;
       public         heap    postgres    false            �            1259    49197    profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.profile_id_seq;
       public          postgres    false    217            *           0    0    profile_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.profile_id_seq OWNED BY public.profile.id;
          public          postgres    false    216            ~           2604    41006    login id    DEFAULT     d   ALTER TABLE ONLY public.login ALTER COLUMN id SET DEFAULT nextval('public.login_id_seq'::regclass);
 7   ALTER TABLE public.login ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    49201 
   profile id    DEFAULT     h   ALTER TABLE ONLY public.profile ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq'::regclass);
 9   ALTER TABLE public.profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       0    49212    cart 
   TABLE DATA           L   COPY public.cart (user_id, item_id, name, rating, price, image) FROM stdin;
    public          postgres    false    220   P"       "          0    73788    checkout 
   TABLE DATA           d   COPY public.checkout (id, fname, lname, houseno, apart, town, state, zip, phone, email) FROM stdin;
    public          postgres    false    222   �"       !          0    65605    details 
   TABLE DATA           m   COPY public.details (item_id, image, name, price, disc, brand, model, operating, cellular, addt) FROM stdin;
    public          postgres    false    221   �#                 0    49204    id 
   TABLE DATA               COPY public.id (id) FROM stdin;
    public          postgres    false    218   �(                 0    49207    items 
   TABLE DATA           D   COPY public.items (item_id, name, rating, price, image) FROM stdin;
    public          postgres    false    219   �(                 0    41003    login 
   TABLE DATA           B   COPY public.login (id, username, password, logged_in) FROM stdin;
    public          postgres    false    215   e)                 0    49198    profile 
   TABLE DATA           J   COPY public.profile (id, fname, lname, email, address, phone) FROM stdin;
    public          postgres    false    217   �)       +           0    0    login_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.login_id_seq', 6, true);
          public          postgres    false    214            ,           0    0    profile_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.profile_id_seq', 6, true);
          public          postgres    false    216            �           2606    73792    checkout checkout_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.checkout
    ADD CONSTRAINT checkout_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.checkout DROP CONSTRAINT checkout_pkey;
       public            postgres    false    222            �           2606    65611    details details_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY (item_id);
 >   ALTER TABLE ONLY public.details DROP CONSTRAINT details_pkey;
       public            postgres    false    221            �           2606    49211    items items_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (item_id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    219            �           2606    41008    login login_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    215            �           2606    41010    login login_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.login DROP CONSTRAINT login_username_key;
       public            postgres    false    215            �           2606    49203    profile profile_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    217                t   x�%��
�@����b�`av֩=KD�;F�E
��>��?~|��s;���]%"�#8��`�_߁
n�?KipPc��8�(pi����T��޳��PT�_��S��+wy�'����      "   �   x���Mn1��9@:�3��]a[�P����Ȍ�$n߀X�	��l/�=3m~L7���QT�Wd�e�1D�p�h�CT���\��j�a����m�B��A@n�l�8k��>X�Ω�>��s}�.մD��_�]�GX~�V+۔�)��	9��7�F���K���9�XcxR�r��0�-dh���}]U���q?      !   �  x�}U�r7</�b�C*��,Q|(�M�l�U���q�rw�������H����|��$=ؕl9U��[ ���3g�������̖��j�˦����d�]4��L�J0������*��b*x�s���z�h<������Pۼ��6mÞ�8j����:4F_�B[�U�9ծ�%��^�pk+r;�i6�R�T�W6炊V�a�j���1D��^c��tuK�j�V59VP��ݳߵ�. �v�J7)�N�H@��Z2N��d��ب:���+e��HX����>�}���w� }��g~rrR_\�/���z�ĴU1�G�c�������N�B����{e�1�옕�r6V�v/���"�9�Q=�|�𻜲��N�*��۴>�T��$Or�ev�E�QD��ͻZ�i�j�Xd��eo���l�-]_�H�'���v�,���
��QteT4�[�"�|� �du�t�ˊ^z�F�2�)��a��Z��^ӟ�l<�%�XxZ}���ڼ"�� {�vi�.k��p�{f;�`׊�@�����8��%�F��3}GV�[�r�A1#ۿ��k5�G����H�%��7#�}���Tµic:&�v�9���WP�!�%�H�~�JKv�,wƵ>��,玚��ƴ�n�/h�j���{��E������X�]o����=��4e���hH6���Wʃ��ӣD1`:+%]*���� JA�6M�+������9u���oͥ�W�������FQ
o��aP���b���-�h0���'���6�%t?%�68��`�}�h�G3`�����C����B��zυH��|��T ]�7�34��}���7�?8���:���"_o8�gn����{��&��H[>!��+���ܓ3\����.�YA�4��6���L���Z5L�g������6ʆnf�v�1���3��nlٗ������J�0Ζ�u̓ifg�g����l��=g��)����U��	7�4'P�0Mp�1_
�u�d�6on_���^/���r	�K0![�b��󬊣pk]����ҹb{d!Tj��E��Tu�ؗ^��m��[,�T~� H?��Gv�Yf�'_��Ŕ��V�l�0�!k����'*H�w�Q9K��|�>ikT(-��@�A�����؛f�V�F��%���k��3[��T���9���\�m��:��/]<���m.�	��{�䮻�6Y=h���0�k4�\��            x�3������ S �         �   x�=�K�0@��S��߁��1,��Ҹ!� F)a���)%.���KGB5?���|^�̂q�9���5L��}��_�!� i4�X�����%Q9��#�f�n�-��j�rڅ��D-Tצ�w$�A���01�:,=/Of�*���	�G��oA�1�bMF�?�
B�;4&�1�~K.@�         S   x�3�(JL)ͫL�, 2��9ӸL8}�3�8�<S ߘ�'3=���;�(�5j�� �f��E%�`2�+F��� �s           x�M��N�0����DQ�_��mQ%� q�6Q�4q*7i����j/;�|�SЊ�v�7�10�Q��p��Ɓ,�	�����\���]�r"7��ȔU���i2Q�z�p��mGC׬k�.��9�;�� ���coq���:�p�<�ǵ����4�itiDE�_��O�;:F���+|�e���.��䙪DM�Ɇ����P����4FeB�shg.�����7h����8%���#&���X�mr��,��4��t�iS����{*��t�|&     