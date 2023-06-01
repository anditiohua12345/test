PGDMP     )    9                 {            fahptopsis2    10.20    10.20 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    18501    fahptopsis2    DATABASE     �   CREATE DATABASE fahptopsis2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE fahptopsis2;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    19608 
   Alternatif    TABLE     �   CREATE TABLE public."Alternatif" (
    "ProjectID" integer NOT NULL,
    "KodeAlternatif" character varying(4) NOT NULL,
    "NamaAlternatif" character varying(100)
);
     DROP TABLE public."Alternatif";
       public         postgres    false    3            �           0    0 $   COLUMN "Alternatif"."KodeAlternatif"    COMMENT     B   COMMENT ON COLUMN public."Alternatif"."KodeAlternatif" IS 'A001';
            public       postgres    false    196            �            1259    19611    BobotAlternatif    TABLE     �   CREATE TABLE public."BobotAlternatif" (
    "ProjectID" integer NOT NULL,
    "KodeAlternatif" character varying(4) NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Value" numeric(16,4)
);
 %   DROP TABLE public."BobotAlternatif";
       public         postgres    false    3            �           0    0 )   COLUMN "BobotAlternatif"."KodeAlternatif"    COMMENT     G   COMMENT ON COLUMN public."BobotAlternatif"."KodeAlternatif" IS 'A001';
            public       postgres    false    197            �           0    0 '   COLUMN "BobotAlternatif"."KodeKriteria"    COMMENT     E   COMMENT ON COLUMN public."BobotAlternatif"."KodeKriteria" IS 'C001';
            public       postgres    false    197            �            1259    19614    BobotKriteria    TABLE     �   CREATE TABLE public."BobotKriteria" (
    "ProjectID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Value" numeric(16,4)
);
 #   DROP TABLE public."BobotKriteria";
       public         postgres    false    3            �           0    0 %   COLUMN "BobotKriteria"."KodeKriteria"    COMMENT     C   COMMENT ON COLUMN public."BobotKriteria"."KodeKriteria" IS 'C001';
            public       postgres    false    198            �            1259    19617    BobotSubKriteria    TABLE     �   CREATE TABLE public."BobotSubKriteria" (
    "ProjectID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Value" numeric(16,4)
);
 &   DROP TABLE public."BobotSubKriteria";
       public         postgres    false    3            �           0    0 (   COLUMN "BobotSubKriteria"."KodeKriteria"    COMMENT     F   COMMENT ON COLUMN public."BobotSubKriteria"."KodeKriteria" IS 'C001';
            public       postgres    false    199            �            1259    19620    FuzzyAlternatif    TABLE     G  CREATE TABLE public."FuzzyAlternatif" (
    "ProjectID" integer NOT NULL,
    "FuzzyID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "ValueL" numeric(16,0),
    "ValueM" numeric(16,0),
    "ValueH" numeric(16,0)
);
 %   DROP TABLE public."FuzzyAlternatif";
       public         postgres    false    3            �            1259    19623    FuzzyKriteria    TABLE       CREATE TABLE public."FuzzyKriteria" (
    "ProjectID" integer NOT NULL,
    "FuzzyID" integer NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "ValueL" numeric(16,0),
    "ValueM" numeric(16,0),
    "ValueH" numeric(16,0)
);
 #   DROP TABLE public."FuzzyKriteria";
       public         postgres    false    3            �            1259    19628    FuzzyMaster    TABLE     �   CREATE TABLE public."FuzzyMaster" (
    "FuzzyID" integer NOT NULL,
    value character varying(32),
    "FuzzyType" character varying(1),
    "Description" character varying(30),
    up numeric(32,4),
    middle numeric(32,4),
    low numeric(32,4)
);
 !   DROP TABLE public."FuzzyMaster";
       public         postgres    false    3            �           0    0    COLUMN "FuzzyMaster".value    COMMENT     ?   COMMENT ON COLUMN public."FuzzyMaster".value IS 'nilai fuzzy';
            public       postgres    false    203            �           0    0     COLUMN "FuzzyMaster"."FuzzyType"    COMMENT     Q   COMMENT ON COLUMN public."FuzzyMaster"."FuzzyType" IS 'l/m/r,left,middle,right';
            public       postgres    false    203            �           0    0    COLUMN "FuzzyMaster".up    COMMENT     <   COMMENT ON COLUMN public."FuzzyMaster".up IS 'upper value';
            public       postgres    false    203            �           0    0    COLUMN "FuzzyMaster".middle    COMMENT     A   COMMENT ON COLUMN public."FuzzyMaster".middle IS 'middle value';
            public       postgres    false    203            �           0    0    COLUMN "FuzzyMaster".low    COMMENT     =   COMMENT ON COLUMN public."FuzzyMaster".low IS 'lower value';
            public       postgres    false    203            �            1259    19626    FuzzyMaster_FuzzyID_seq    SEQUENCE     �   CREATE SEQUENCE public."FuzzyMaster_FuzzyID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."FuzzyMaster_FuzzyID_seq";
       public       postgres    false    203    3            �           0    0    FuzzyMaster_FuzzyID_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."FuzzyMaster_FuzzyID_seq" OWNED BY public."FuzzyMaster"."FuzzyID";
            public       postgres    false    202            �            1259    19639    Kriteria    TABLE       CREATE TABLE public."Kriteria" (
    "ProjectID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "NamaKriteria" character varying(100),
    "KodeKriteriaParent" character varying(4),
    "KriteriaLevel" smallint,
    "Atribut" character varying(10)
);
    DROP TABLE public."Kriteria";
       public         postgres    false    3            �           0    0     COLUMN "Kriteria"."KodeKriteria"    COMMENT     >   COMMENT ON COLUMN public."Kriteria"."KodeKriteria" IS 'C001';
            public       postgres    false    205            �           0    0 &   COLUMN "Kriteria"."KodeKriteriaParent"    COMMENT     T   COMMENT ON COLUMN public."Kriteria"."KodeKriteriaParent" IS 'kode parent kriteria';
            public       postgres    false    205            �           0    0 !   COLUMN "Kriteria"."KriteriaLevel"    COMMENT     _   COMMENT ON COLUMN public."Kriteria"."KriteriaLevel" IS '0 = kriteria utama, 1 = sub-kriteria';
            public       postgres    false    205            �           0    0    COLUMN "Kriteria"."Atribut"    COMMENT     C   COMMENT ON COLUMN public."Kriteria"."Atribut" IS 'cost / benefit';
            public       postgres    false    205            �            1259    19644    Menu    TABLE     D  CREATE TABLE public."Menu" (
    "idMenu" bigint NOT NULL,
    title character varying(50),
    url character varying(100),
    icon character varying(20),
    "fidMenu" bigint DEFAULT 0,
    "orderBy" smallint,
    description character varying(100),
    "menuType" smallint DEFAULT 1,
    "isActive" smallint DEFAULT 1
);
    DROP TABLE public."Menu";
       public         postgres    false    3            �           0    0    COLUMN "Menu".title    COMMENT     M   COMMENT ON COLUMN public."Menu".title IS 'caption yang ditampilkan di menu';
            public       postgres    false    207            �           0    0    COLUMN "Menu".url    COMMENT     O   COMMENT ON COLUMN public."Menu".url IS 'url yang diakses ketika menu di klik';
            public       postgres    false    207            �           0    0    COLUMN "Menu".icon    COMMENT     C   COMMENT ON COLUMN public."Menu".icon IS 'icon jika ada (fa icon)';
            public       postgres    false    207            �           0    0    COLUMN "Menu"."fidMenu"    COMMENT     w   COMMENT ON COLUMN public."Menu"."fidMenu" IS 'child dari idMenu (jika memiliki parent) jika tidak ada parent diisi 0';
            public       postgres    false    207            �           0    0    COLUMN "Menu"."orderBy"    COMMENT     <   COMMENT ON COLUMN public."Menu"."orderBy" IS 'urutan menu';
            public       postgres    false    207            �           0    0    COLUMN "Menu".description    COMMENT     A   COMMENT ON COLUMN public."Menu".description IS 'deskripsi menu';
            public       postgres    false    207            �           0    0    COLUMN "Menu"."menuType"    COMMENT     B   COMMENT ON COLUMN public."Menu"."menuType" IS '1 = backend menu';
            public       postgres    false    207            �           0    0    COLUMN "Menu"."isActive"    COMMENT     k   COMMENT ON COLUMN public."Menu"."isActive" IS '1 = active (menu muncul), 2= non active (menu tdk muncul)';
            public       postgres    false    207            �            1259    19642    Menu_idMenu_seq    SEQUENCE     z   CREATE SEQUENCE public."Menu_idMenu_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Menu_idMenu_seq";
       public       postgres    false    3    207            �           0    0    Menu_idMenu_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Menu_idMenu_seq" OWNED BY public."Menu"."idMenu";
            public       postgres    false    206            �            1259    19671    PairWiseAlternatif    TABLE       CREATE TABLE public."PairWiseAlternatif" (
    "ProjectID" integer NOT NULL,
    "FuzzyID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "Value" numeric(16,0)
);
 (   DROP TABLE public."PairWiseAlternatif";
       public         postgres    false    3            �            1259    19674    PairWiseAlternatifSummary    TABLE       CREATE TABLE public."PairWiseAlternatifSummary" (
    "ProjectID" integer NOT NULL,
    "KodeKriteria" character varying(4) NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "Count" numeric(16,0),
    "Integrasi" numeric(16,4)
);
 /   DROP TABLE public."PairWiseAlternatifSummary";
       public         postgres    false    3            �            1259    19677    PairWiseKriteria    TABLE     �   CREATE TABLE public."PairWiseKriteria" (
    "ProjectID" integer NOT NULL,
    "FuzzyID" integer NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "Value" numeric(16,0)
);
 &   DROP TABLE public."PairWiseKriteria";
       public         postgres    false    3            �            1259    19680    PairWiseKriteriaSummary    TABLE     �   CREATE TABLE public."PairWiseKriteriaSummary" (
    "ProjectID" integer NOT NULL,
    "Left" character varying(4) NOT NULL,
    "Right" character varying(4) NOT NULL,
    "Count" numeric(16,0),
    "Integrasi" numeric(16,4)
);
 -   DROP TABLE public."PairWiseKriteriaSummary";
       public         postgres    false    3            �            1259    19685    Project    TABLE     �   CREATE TABLE public."Project" (
    "idOperator" integer,
    "ProjectID" integer NOT NULL,
    "Deskripsi" character varying(100),
    "CountKriteria" numeric(16,0) DEFAULT 0,
    "CountAlternatif" numeric(16,0) DEFAULT 0
);
    DROP TABLE public."Project";
       public         postgres    false    3            �           0    0     COLUMN "Project"."CountKriteria"    COMMENT     H   COMMENT ON COLUMN public."Project"."CountKriteria" IS 'total kriteria';
            public       postgres    false    218            �           0    0 "   COLUMN "Project"."CountAlternatif"    COMMENT     L   COMMENT ON COLUMN public."Project"."CountAlternatif" IS 'total alternatif';
            public       postgres    false    218            �            1259    19683    Project_ProjectID_seq    SEQUENCE     �   CREATE SEQUENCE public."Project_ProjectID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Project_ProjectID_seq";
       public       postgres    false    218    3            �           0    0    Project_ProjectID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Project_ProjectID_seq" OWNED BY public."Project"."ProjectID";
            public       postgres    false    217            �            1259    19691    RandomIndeks    TABLE     s   CREATE TABLE public."RandomIndeks" (
    "CountKriteria" numeric(16,0) NOT NULL,
    "RatioIndex" numeric(16,4)
);
 "   DROP TABLE public."RandomIndeks";
       public         postgres    false    3            �            1259    19632    imageUpload    TABLE       CREATE TABLE public."imageUpload" (
    "idImages" bigint NOT NULL,
    "imageType" integer,
    "foreignId" character varying(64),
    path character varying(150),
    "serverName" text,
    ext character varying(30),
    size numeric(30,0),
    width numeric(30,0),
    height numeric(30,0),
    "createTime" timestamp(6) without time zone,
    "orderBy" integer DEFAULT 1,
    type character varying(30),
    "uploadBy" bigint,
    "lastUpdate" timestamp(6) without time zone,
    "serverNameWithoutExt" text
);
 !   DROP TABLE public."imageUpload";
       public         postgres    false    3            �           0    0    COLUMN "imageUpload"."idImages"    COMMENT     B   COMMENT ON COLUMN public."imageUpload"."idImages" IS 'id gambar';
            public       postgres    false    204            �           0    0     COLUMN "imageUpload"."imageType"    COMMENT     �   COMMENT ON COLUMN public."imageUpload"."imageType" IS '1 = profile
2 = image msProvider
3 = image msPayment
4 = bukti transfer user
5 = bukti transfer seller';
            public       postgres    false    204            �           0    0     COLUMN "imageUpload"."foreignId"    COMMENT     M   COMMENT ON COLUMN public."imageUpload"."foreignId" IS 'referensi transaksi';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".path    COMMENT     =   COMMENT ON COLUMN public."imageUpload".path IS 'path image';
            public       postgres    false    204            �           0    0 !   COLUMN "imageUpload"."serverName"    COMMENT     X   COMMENT ON COLUMN public."imageUpload"."serverName" IS 'nama image (dengan extension)';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".ext    COMMENT     ;   COMMENT ON COLUMN public."imageUpload".ext IS 'extension';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".size    COMMENT     ?   COMMENT ON COLUMN public."imageUpload".size IS 'ukuran image';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".width    COMMENT     9   COMMENT ON COLUMN public."imageUpload".width IS 'lebar';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".height    COMMENT     ;   COMMENT ON COLUMN public."imageUpload".height IS 'tinggi';
            public       postgres    false    204            �           0    0 !   COLUMN "imageUpload"."createTime"    COMMENT     O   COMMENT ON COLUMN public."imageUpload"."createTime" IS 'tanggal image dibuat';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload"."orderBy"    COMMENT     @   COMMENT ON COLUMN public."imageUpload"."orderBy" IS 'order by';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload".type    COMMENT     =   COMMENT ON COLUMN public."imageUpload".type IS 'image type';
            public       postgres    false    204            �           0    0    COLUMN "imageUpload"."uploadBy"    COMMENT     B   COMMENT ON COLUMN public."imageUpload"."uploadBy" IS 'upload by';
            public       postgres    false    204            �            1259    19653 
   msOperator    TABLE     �  CREATE TABLE public."msOperator" (
    "idOperator" integer NOT NULL,
    "fidOperatorType" integer,
    "userName" character varying(50),
    email character varying(100),
    phone character varying(15),
    "passWord" character varying(100),
    "expiryDate" date,
    "lastUpdate" timestamp(6) without time zone DEFAULT (now())::timestamp(0) without time zone,
    name character varying(255),
    "ProjectID" integer
);
     DROP TABLE public."msOperator";
       public         postgres    false    3            �           0    0     COLUMN "msOperator"."idOperator"    COMMENT     [   COMMENT ON COLUMN public."msOperator"."idOperator" IS 'id dari operator, otomatis terisi';
            public       postgres    false    209            �           0    0 %   COLUMN "msOperator"."fidOperatorType"    COMMENT     \   COMMENT ON COLUMN public."msOperator"."fidOperatorType" IS 'foreign id dari type operator';
            public       postgres    false    209            �           0    0    COLUMN "msOperator"."userName"    COMMENT     T   COMMENT ON COLUMN public."msOperator"."userName" IS 'nama user untuk login (uniq)';
            public       postgres    false    209            �           0    0    COLUMN "msOperator".email    COMMENT     Z   COMMENT ON COLUMN public."msOperator".email IS 'email bisa digunakan untuk login (uniq)';
            public       postgres    false    209            �           0    0    COLUMN "msOperator".phone    COMMENT     ^   COMMENT ON COLUMN public."msOperator".phone IS 'no telpon bisa digunakan untuk login (uniq)';
            public       postgres    false    209            �           0    0    COLUMN "msOperator"."passWord"    COMMENT     U   COMMENT ON COLUMN public."msOperator"."passWord" IS 'password sudah di encript md5';
            public       postgres    false    209            �           0    0     COLUMN "msOperator"."expiryDate"    COMMENT     \   COMMENT ON COLUMN public."msOperator"."expiryDate" IS 'batas tanggal akhir aktif operator';
            public       postgres    false    209            �           0    0     COLUMN "msOperator"."lastUpdate"    COMMENT     U   COMMENT ON COLUMN public."msOperator"."lastUpdate" IS 'waktu terakhir data berubah';
            public       postgres    false    209            �           0    0    COLUMN "msOperator"."ProjectID"    COMMENT     C   COMMENT ON COLUMN public."msOperator"."ProjectID" IS 'id project';
            public       postgres    false    209            �            1259    19663    msOperatorAccess    TABLE     �   CREATE TABLE public."msOperatorAccess" (
    "idOperatorAccess" bigint NOT NULL,
    "fidOperatorType" integer,
    "fidMenu" integer
);
 &   DROP TABLE public."msOperatorAccess";
       public         postgres    false    3            �           0    0 +   COLUMN "msOperatorAccess"."fidOperatorType"    COMMENT     [   COMMENT ON COLUMN public."msOperatorAccess"."fidOperatorType" IS 'join ke msOperatorType';
            public       postgres    false    211            �           0    0 #   COLUMN "msOperatorAccess"."fidMenu"    COMMENT     I   COMMENT ON COLUMN public."msOperatorAccess"."fidMenu" IS 'join ke Menu';
            public       postgres    false    211            �            1259    19661 %   msOperatorAccess_idOperatorAccess_seq    SEQUENCE     �   CREATE SEQUENCE public."msOperatorAccess_idOperatorAccess_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."msOperatorAccess_idOperatorAccess_seq";
       public       postgres    false    3    211            �           0    0 %   msOperatorAccess_idOperatorAccess_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."msOperatorAccess_idOperatorAccess_seq" OWNED BY public."msOperatorAccess"."idOperatorAccess";
            public       postgres    false    210            �            1259    19667    msOperatorType    TABLE     �   CREATE TABLE public."msOperatorType" (
    "idOperatorType" integer NOT NULL,
    description character varying(100),
    "lastUpdate" timestamp(6) without time zone DEFAULT (now())::timestamp(0) without time zone
);
 $   DROP TABLE public."msOperatorType";
       public         postgres    false    3            �           0    0 (   COLUMN "msOperatorType"."idOperatorType"    COMMENT     W   COMMENT ON COLUMN public."msOperatorType"."idOperatorType" IS 'id dari tipe operator';
            public       postgres    false    212            �           0    0 #   COLUMN "msOperatorType".description    COMMENT     O   COMMENT ON COLUMN public."msOperatorType".description IS 'nama operator tipe';
            public       postgres    false    212            �           0    0 $   COLUMN "msOperatorType"."lastUpdate"    COMMENT     Y   COMMENT ON COLUMN public."msOperatorType"."lastUpdate" IS 'waktu terakhir data berubah';
            public       postgres    false    212            �            1259    19651    msOperator_idOperator_seq    SEQUENCE     �   CREATE SEQUENCE public."msOperator_idOperator_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."msOperator_idOperator_seq";
       public       postgres    false    209    3            �           0    0    msOperator_idOperator_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."msOperator_idOperator_seq" OWNED BY public."msOperator"."idOperator";
            public       postgres    false    208            �
           2604    19631    FuzzyMaster FuzzyID    DEFAULT     �   ALTER TABLE ONLY public."FuzzyMaster" ALTER COLUMN "FuzzyID" SET DEFAULT nextval('public."FuzzyMaster_FuzzyID_seq"'::regclass);
 F   ALTER TABLE public."FuzzyMaster" ALTER COLUMN "FuzzyID" DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    19647    Menu idMenu    DEFAULT     p   ALTER TABLE ONLY public."Menu" ALTER COLUMN "idMenu" SET DEFAULT nextval('public."Menu_idMenu_seq"'::regclass);
 >   ALTER TABLE public."Menu" ALTER COLUMN "idMenu" DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    19688    Project ProjectID    DEFAULT     |   ALTER TABLE ONLY public."Project" ALTER COLUMN "ProjectID" SET DEFAULT nextval('public."Project_ProjectID_seq"'::regclass);
 D   ALTER TABLE public."Project" ALTER COLUMN "ProjectID" DROP DEFAULT;
       public       postgres    false    218    217    218            �
           2604    19656    msOperator idOperator    DEFAULT     �   ALTER TABLE ONLY public."msOperator" ALTER COLUMN "idOperator" SET DEFAULT nextval('public."msOperator_idOperator_seq"'::regclass);
 H   ALTER TABLE public."msOperator" ALTER COLUMN "idOperator" DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    19666 !   msOperatorAccess idOperatorAccess    DEFAULT     �   ALTER TABLE ONLY public."msOperatorAccess" ALTER COLUMN "idOperatorAccess" SET DEFAULT nextval('public."msOperatorAccess_idOperatorAccess_seq"'::regclass);
 T   ALTER TABLE public."msOperatorAccess" ALTER COLUMN "idOperatorAccess" DROP DEFAULT;
       public       postgres    false    211    210    211            �          0    19608 
   Alternatif 
   TABLE DATA               W   COPY public."Alternatif" ("ProjectID", "KodeAlternatif", "NamaAlternatif") FROM stdin;
    public       postgres    false    196   ^�       �          0    19611    BobotAlternatif 
   TABLE DATA               c   COPY public."BobotAlternatif" ("ProjectID", "KodeAlternatif", "KodeKriteria", "Value") FROM stdin;
    public       postgres    false    197   ��       �          0    19614    BobotKriteria 
   TABLE DATA               O   COPY public."BobotKriteria" ("ProjectID", "KodeKriteria", "Value") FROM stdin;
    public       postgres    false    198   ��       �          0    19617    BobotSubKriteria 
   TABLE DATA               R   COPY public."BobotSubKriteria" ("ProjectID", "KodeKriteria", "Value") FROM stdin;
    public       postgres    false    199   4�       �          0    19620    FuzzyAlternatif 
   TABLE DATA               �   COPY public."FuzzyAlternatif" ("ProjectID", "FuzzyID", "KodeKriteria", "Left", "Right", "ValueL", "ValueM", "ValueH") FROM stdin;
    public       postgres    false    200   ��       �          0    19623    FuzzyKriteria 
   TABLE DATA               p   COPY public."FuzzyKriteria" ("ProjectID", "FuzzyID", "Left", "Right", "ValueL", "ValueM", "ValueH") FROM stdin;
    public       postgres    false    201   ��       �          0    19628    FuzzyMaster 
   TABLE DATA               f   COPY public."FuzzyMaster" ("FuzzyID", value, "FuzzyType", "Description", up, middle, low) FROM stdin;
    public       postgres    false    203   D�       �          0    19639    Kriteria 
   TABLE DATA               �   COPY public."Kriteria" ("ProjectID", "KodeKriteria", "NamaKriteria", "KodeKriteriaParent", "KriteriaLevel", "Atribut") FROM stdin;
    public       postgres    false    205   g�       �          0    19644    Menu 
   TABLE DATA               w   COPY public."Menu" ("idMenu", title, url, icon, "fidMenu", "orderBy", description, "menuType", "isActive") FROM stdin;
    public       postgres    false    207   ��       �          0    19671    PairWiseAlternatif 
   TABLE DATA               p   COPY public."PairWiseAlternatif" ("ProjectID", "FuzzyID", "KodeKriteria", "Left", "Right", "Value") FROM stdin;
    public       postgres    false    213   ��       �          0    19674    PairWiseAlternatifSummary 
   TABLE DATA               y   COPY public."PairWiseAlternatifSummary" ("ProjectID", "KodeKriteria", "Left", "Right", "Count", "Integrasi") FROM stdin;
    public       postgres    false    214   �      �          0    19677    PairWiseKriteria 
   TABLE DATA               ^   COPY public."PairWiseKriteria" ("ProjectID", "FuzzyID", "Left", "Right", "Value") FROM stdin;
    public       postgres    false    215   �      �          0    19680    PairWiseKriteriaSummary 
   TABLE DATA               g   COPY public."PairWiseKriteriaSummary" ("ProjectID", "Left", "Right", "Count", "Integrasi") FROM stdin;
    public       postgres    false    216   ,      �          0    19685    Project 
   TABLE DATA               o   COPY public."Project" ("idOperator", "ProjectID", "Deskripsi", "CountKriteria", "CountAlternatif") FROM stdin;
    public       postgres    false    218   .      �          0    19691    RandomIndeks 
   TABLE DATA               G   COPY public."RandomIndeks" ("CountKriteria", "RatioIndex") FROM stdin;
    public       postgres    false    219   �.      �          0    19632    imageUpload 
   TABLE DATA               �   COPY public."imageUpload" ("idImages", "imageType", "foreignId", path, "serverName", ext, size, width, height, "createTime", "orderBy", type, "uploadBy", "lastUpdate", "serverNameWithoutExt") FROM stdin;
    public       postgres    false    204   !0      �          0    19653 
   msOperator 
   TABLE DATA               �   COPY public."msOperator" ("idOperator", "fidOperatorType", "userName", email, phone, "passWord", "expiryDate", "lastUpdate", name, "ProjectID") FROM stdin;
    public       postgres    false    209   M2      �          0    19663    msOperatorAccess 
   TABLE DATA               ^   COPY public."msOperatorAccess" ("idOperatorAccess", "fidOperatorType", "fidMenu") FROM stdin;
    public       postgres    false    211   3      �          0    19667    msOperatorType 
   TABLE DATA               W   COPY public."msOperatorType" ("idOperatorType", description, "lastUpdate") FROM stdin;
    public       postgres    false    212   M3      �           0    0    FuzzyMaster_FuzzyID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."FuzzyMaster_FuzzyID_seq"', 1, false);
            public       postgres    false    202            �           0    0    Menu_idMenu_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Menu_idMenu_seq"', 1, false);
            public       postgres    false    206            �           0    0    Project_ProjectID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Project_ProjectID_seq"', 1, false);
            public       postgres    false    217            �           0    0 %   msOperatorAccess_idOperatorAccess_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."msOperatorAccess_idOperatorAccess_seq"', 1, false);
            public       postgres    false    210            �           0    0    msOperator_idOperator_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."msOperator_idOperator_seq"', 1, false);
            public       postgres    false    208            �
           2606    19695    Alternatif Alternatif_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Alternatif"
    ADD CONSTRAINT "Alternatif_pkey" PRIMARY KEY ("ProjectID", "KodeAlternatif");
 H   ALTER TABLE ONLY public."Alternatif" DROP CONSTRAINT "Alternatif_pkey";
       public         postgres    false    196    196            �
           2606    19697 $   BobotAlternatif BobotAlternatif_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."BobotAlternatif"
    ADD CONSTRAINT "BobotAlternatif_pkey" PRIMARY KEY ("ProjectID", "KodeAlternatif", "KodeKriteria");
 R   ALTER TABLE ONLY public."BobotAlternatif" DROP CONSTRAINT "BobotAlternatif_pkey";
       public         postgres    false    197    197    197            �
           2606    19701 )   BobotSubKriteria BobotKriteria_copy1_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."BobotSubKriteria"
    ADD CONSTRAINT "BobotKriteria_copy1_pkey" PRIMARY KEY ("ProjectID", "KodeKriteria");
 W   ALTER TABLE ONLY public."BobotSubKriteria" DROP CONSTRAINT "BobotKriteria_copy1_pkey";
       public         postgres    false    199    199            �
           2606    19699     BobotKriteria BobotKriteria_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."BobotKriteria"
    ADD CONSTRAINT "BobotKriteria_pkey" PRIMARY KEY ("ProjectID", "KodeKriteria");
 N   ALTER TABLE ONLY public."BobotKriteria" DROP CONSTRAINT "BobotKriteria_pkey";
       public         postgres    false    198    198            �
           2606    19703 %   FuzzyAlternatif FuzzyAlternatif\_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyAlternatif"
    ADD CONSTRAINT "FuzzyAlternatif\_pkey" PRIMARY KEY ("ProjectID", "FuzzyID", "KodeKriteria", "Left", "Right");
 S   ALTER TABLE ONLY public."FuzzyAlternatif" DROP CONSTRAINT "FuzzyAlternatif\_pkey";
       public         postgres    false    200    200    200    200    200            �
           2606    19705     FuzzyKriteria FuzzyKriteria_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyKriteria"
    ADD CONSTRAINT "FuzzyKriteria_pkey" PRIMARY KEY ("ProjectID", "FuzzyID", "Left", "Right");
 N   ALTER TABLE ONLY public."FuzzyKriteria" DROP CONSTRAINT "FuzzyKriteria_pkey";
       public         postgres    false    201    201    201    201            �
           2606    19707    FuzzyMaster FuzzyMaster_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."FuzzyMaster"
    ADD CONSTRAINT "FuzzyMaster_pkey" PRIMARY KEY ("FuzzyID");
 J   ALTER TABLE ONLY public."FuzzyMaster" DROP CONSTRAINT "FuzzyMaster_pkey";
       public         postgres    false    203            �
           2606    19731    RandomIndeks IndexRatio_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."RandomIndeks"
    ADD CONSTRAINT "IndexRatio_pkey" PRIMARY KEY ("CountKriteria");
 J   ALTER TABLE ONLY public."RandomIndeks" DROP CONSTRAINT "IndexRatio_pkey";
       public         postgres    false    219            �
           2606    19711    Kriteria Kriteria_pkey1 
   CONSTRAINT     r   ALTER TABLE ONLY public."Kriteria"
    ADD CONSTRAINT "Kriteria_pkey1" PRIMARY KEY ("ProjectID", "KodeKriteria");
 E   ALTER TABLE ONLY public."Kriteria" DROP CONSTRAINT "Kriteria_pkey1";
       public         postgres    false    205    205            �
           2606    19723 9   PairWiseAlternatifSummary PairWiseAlternatifSummary_pkey1 
   CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatifSummary"
    ADD CONSTRAINT "PairWiseAlternatifSummary_pkey1" PRIMARY KEY ("ProjectID", "KodeKriteria", "Left", "Right");
 g   ALTER TABLE ONLY public."PairWiseAlternatifSummary" DROP CONSTRAINT "PairWiseAlternatifSummary_pkey1";
       public         postgres    false    214    214    214    214            �
           2606    19721 +   PairWiseAlternatif PairWiseAlternatif_pkey1 
   CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatif"
    ADD CONSTRAINT "PairWiseAlternatif_pkey1" PRIMARY KEY ("ProjectID", "FuzzyID", "KodeKriteria", "Left", "Right");
 Y   ALTER TABLE ONLY public."PairWiseAlternatif" DROP CONSTRAINT "PairWiseAlternatif_pkey1";
       public         postgres    false    213    213    213    213    213            �
           2606    19727 4   PairWiseKriteriaSummary PairWiseKriteriaSummary_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseKriteriaSummary"
    ADD CONSTRAINT "PairWiseKriteriaSummary_pkey" PRIMARY KEY ("ProjectID", "Left", "Right");
 b   ALTER TABLE ONLY public."PairWiseKriteriaSummary" DROP CONSTRAINT "PairWiseKriteriaSummary_pkey";
       public         postgres    false    216    216    216            �
           2606    19725    PairWiseKriteria Pairwise_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseKriteria"
    ADD CONSTRAINT "Pairwise_pkey" PRIMARY KEY ("ProjectID", "FuzzyID", "Left", "Right");
 L   ALTER TABLE ONLY public."PairWiseKriteria" DROP CONSTRAINT "Pairwise_pkey";
       public         postgres    false    215    215    215    215            �
           2606    19729    Project Project_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Project"
    ADD CONSTRAINT "Project_pkey" PRIMARY KEY ("ProjectID");
 B   ALTER TABLE ONLY public."Project" DROP CONSTRAINT "Project_pkey";
       public         postgres    false    218            �
           2606    19709    imageUpload imageUpload_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."imageUpload"
    ADD CONSTRAINT "imageUpload_pkey" PRIMARY KEY ("idImages");
 J   ALTER TABLE ONLY public."imageUpload" DROP CONSTRAINT "imageUpload_pkey";
       public         postgres    false    204            �
           2606    19713    Menu menus_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT menus_pkey PRIMARY KEY ("idMenu");
 ;   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT menus_pkey;
       public         postgres    false    207            �
           2606    19717 &   msOperatorAccess msOperatorAccess_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."msOperatorAccess"
    ADD CONSTRAINT "msOperatorAccess_pkey" PRIMARY KEY ("idOperatorAccess");
 T   ALTER TABLE ONLY public."msOperatorAccess" DROP CONSTRAINT "msOperatorAccess_pkey";
       public         postgres    false    211            �
           2606    19719 "   msOperatorType msOperatorType_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."msOperatorType"
    ADD CONSTRAINT "msOperatorType_pkey" PRIMARY KEY ("idOperatorType");
 P   ALTER TABLE ONLY public."msOperatorType" DROP CONSTRAINT "msOperatorType_pkey";
       public         postgres    false    212            �
           2606    19715    msOperator msOperator_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."msOperator"
    ADD CONSTRAINT "msOperator_pkey" PRIMARY KEY ("idOperator");
 H   ALTER TABLE ONLY public."msOperator" DROP CONSTRAINT "msOperator_pkey";
       public         postgres    false    209                       2606    19852    Project CountKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."Project"
    ADD CONSTRAINT "CountKriteria" FOREIGN KEY ("CountKriteria") REFERENCES public."RandomIndeks"("CountKriteria");
 C   ALTER TABLE ONLY public."Project" DROP CONSTRAINT "CountKriteria";
       public       postgres    false    218    2802    219            �
           2606    19772    FuzzyAlternatif FuzzyID    FK CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyAlternatif"
    ADD CONSTRAINT "FuzzyID" FOREIGN KEY ("FuzzyID") REFERENCES public."FuzzyMaster"("FuzzyID");
 E   ALTER TABLE ONLY public."FuzzyAlternatif" DROP CONSTRAINT "FuzzyID";
       public       postgres    false    200    203    2778            �
           2606    19782    FuzzyKriteria FuzzyID    FK CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyKriteria"
    ADD CONSTRAINT "FuzzyID" FOREIGN KEY ("FuzzyID") REFERENCES public."FuzzyMaster"("FuzzyID");
 C   ALTER TABLE ONLY public."FuzzyKriteria" DROP CONSTRAINT "FuzzyID";
       public       postgres    false    201    203    2778                       2606    19812    PairWiseAlternatif FuzzyID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatif"
    ADD CONSTRAINT "FuzzyID" FOREIGN KEY ("FuzzyID") REFERENCES public."FuzzyMaster"("FuzzyID");
 H   ALTER TABLE ONLY public."PairWiseAlternatif" DROP CONSTRAINT "FuzzyID";
       public       postgres    false    213    2778    203                       2606    19837    PairWiseKriteria FuzzyID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseKriteria"
    ADD CONSTRAINT "FuzzyID" FOREIGN KEY ("FuzzyID") REFERENCES public."FuzzyMaster"("FuzzyID");
 F   ALTER TABLE ONLY public."PairWiseKriteria" DROP CONSTRAINT "FuzzyID";
       public       postgres    false    203    2778    215            �
           2606    19737    BobotAlternatif KodeAlternatif    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotAlternatif"
    ADD CONSTRAINT "KodeAlternatif" FOREIGN KEY ("KodeAlternatif", "ProjectID") REFERENCES public."Alternatif"("KodeAlternatif", "ProjectID");
 L   ALTER TABLE ONLY public."BobotAlternatif" DROP CONSTRAINT "KodeAlternatif";
       public       postgres    false    197    197    2766    196    196            �
           2606    19742    BobotAlternatif KodeKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotAlternatif"
    ADD CONSTRAINT "KodeKriteria" FOREIGN KEY ("KodeKriteria", "ProjectID") REFERENCES public."Kriteria"("KodeKriteria", "ProjectID");
 J   ALTER TABLE ONLY public."BobotAlternatif" DROP CONSTRAINT "KodeKriteria";
       public       postgres    false    197    2782    205    205    197            �
           2606    19752    BobotKriteria KodeKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotKriteria"
    ADD CONSTRAINT "KodeKriteria" FOREIGN KEY ("ProjectID", "KodeKriteria") REFERENCES public."Kriteria"("ProjectID", "KodeKriteria");
 H   ALTER TABLE ONLY public."BobotKriteria" DROP CONSTRAINT "KodeKriteria";
       public       postgres    false    2782    198    205    205    198            �
           2606    19762    BobotSubKriteria KodeKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotSubKriteria"
    ADD CONSTRAINT "KodeKriteria" FOREIGN KEY ("ProjectID", "KodeKriteria") REFERENCES public."Kriteria"("ProjectID", "KodeKriteria");
 K   ALTER TABLE ONLY public."BobotSubKriteria" DROP CONSTRAINT "KodeKriteria";
       public       postgres    false    205    199    199    205    2782                       2606    19817    PairWiseAlternatif KodeKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatif"
    ADD CONSTRAINT "KodeKriteria" FOREIGN KEY ("ProjectID", "KodeKriteria") REFERENCES public."Kriteria"("ProjectID", "KodeKriteria");
 M   ALTER TABLE ONLY public."PairWiseAlternatif" DROP CONSTRAINT "KodeKriteria";
       public       postgres    false    213    2782    205    205    213                       2606    19827 &   PairWiseAlternatifSummary KodeKriteria    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatifSummary"
    ADD CONSTRAINT "KodeKriteria" FOREIGN KEY ("ProjectID", "KodeKriteria") REFERENCES public."Kriteria"("ProjectID", "KodeKriteria");
 T   ALTER TABLE ONLY public."PairWiseAlternatifSummary" DROP CONSTRAINT "KodeKriteria";
       public       postgres    false    214    2782    205    214    205            �
           2606    19732    Alternatif ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Alternatif"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 B   ALTER TABLE ONLY public."Alternatif" DROP CONSTRAINT "ProjectID";
       public       postgres    false    196    2800    218            �
           2606    19747    BobotAlternatif ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotAlternatif"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 G   ALTER TABLE ONLY public."BobotAlternatif" DROP CONSTRAINT "ProjectID";
       public       postgres    false    197    2800    218            �
           2606    19757    BobotKriteria ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotKriteria"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 E   ALTER TABLE ONLY public."BobotKriteria" DROP CONSTRAINT "ProjectID";
       public       postgres    false    2800    218    198            �
           2606    19767    BobotSubKriteria ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."BobotSubKriteria"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 H   ALTER TABLE ONLY public."BobotSubKriteria" DROP CONSTRAINT "ProjectID";
       public       postgres    false    2800    218    199            �
           2606    19777    FuzzyAlternatif ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyAlternatif"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 G   ALTER TABLE ONLY public."FuzzyAlternatif" DROP CONSTRAINT "ProjectID";
       public       postgres    false    200    218    2800            �
           2606    19787    FuzzyKriteria ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."FuzzyKriteria"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 E   ALTER TABLE ONLY public."FuzzyKriteria" DROP CONSTRAINT "ProjectID";
       public       postgres    false    201    218    2800            �
           2606    19792    Kriteria ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Kriteria"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 @   ALTER TABLE ONLY public."Kriteria" DROP CONSTRAINT "ProjectID";
       public       postgres    false    205    218    2800                       2606    19822    PairWiseAlternatif ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatif"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 J   ALTER TABLE ONLY public."PairWiseAlternatif" DROP CONSTRAINT "ProjectID";
       public       postgres    false    2800    218    213                       2606    19832 #   PairWiseAlternatifSummary ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseAlternatifSummary"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 Q   ALTER TABLE ONLY public."PairWiseAlternatifSummary" DROP CONSTRAINT "ProjectID";
       public       postgres    false    218    214    2800            	           2606    19842    PairWiseKriteria ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseKriteria"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 H   ALTER TABLE ONLY public."PairWiseKriteria" DROP CONSTRAINT "ProjectID";
       public       postgres    false    2800    218    215            
           2606    19847 !   PairWiseKriteriaSummary ProjectID    FK CONSTRAINT     �   ALTER TABLE ONLY public."PairWiseKriteriaSummary"
    ADD CONSTRAINT "ProjectID" FOREIGN KEY ("ProjectID") REFERENCES public."Project"("ProjectID");
 O   ALTER TABLE ONLY public."PairWiseKriteriaSummary" DROP CONSTRAINT "ProjectID";
       public       postgres    false    216    2800    218                       2606    19802    msOperatorAccess fidMenu    FK CONSTRAINT     �   ALTER TABLE ONLY public."msOperatorAccess"
    ADD CONSTRAINT "fidMenu" FOREIGN KEY ("fidMenu") REFERENCES public."Menu"("idMenu");
 F   ALTER TABLE ONLY public."msOperatorAccess" DROP CONSTRAINT "fidMenu";
       public       postgres    false    2784    207    211                        2606    19797    msOperator fidOperatorType    FK CONSTRAINT     �   ALTER TABLE ONLY public."msOperator"
    ADD CONSTRAINT "fidOperatorType" FOREIGN KEY ("fidOperatorType") REFERENCES public."msOperatorType"("idOperatorType");
 H   ALTER TABLE ONLY public."msOperator" DROP CONSTRAINT "fidOperatorType";
       public       postgres    false    209    212    2790                       2606    19807     msOperatorAccess fidOperatorType    FK CONSTRAINT     �   ALTER TABLE ONLY public."msOperatorAccess"
    ADD CONSTRAINT "fidOperatorType" FOREIGN KEY ("fidOperatorType") REFERENCES public."msOperatorType"("idOperatorType");
 N   ALTER TABLE ONLY public."msOperatorAccess" DROP CONSTRAINT "fidOperatorType";
       public       postgres    false    211    2790    212                       2606    19857    Project id_operator    FK CONSTRAINT     �   ALTER TABLE ONLY public."Project"
    ADD CONSTRAINT id_operator FOREIGN KEY ("idOperator") REFERENCES public."msOperator"("idOperator");
 ?   ALTER TABLE ONLY public."Project" DROP CONSTRAINT id_operator;
       public       postgres    false    209    2786    218            �     x�U�MO�0��ί��#Z[��qe0�.\�5jͺ��	b���y;p��>~_�I`>�0w{:БT�3X��i���tK{�Á~D�aC�z�G<s���	�wX�.x�F�6��c܁�9���Ҝ����X~rZ�=�mp���uH2��Zr�
��$G�Tz��*&����rq|�����ذ?�3���.��p��w�>��[���Vj,ւN�ᢣZ��YL��f�J;&�0`���g0����隼ujrY�^J��f��2Zo���,�,u
��f#"���g�q����uZ      �   5  x�U�Kr� D��a��C�e*����#٦�Wz�f��燈?��E_q�&Ƀ�}��C�6o�F<�"Y(����v�^D>�����^�M��)�&:���v�u�D?;���Hd�Rh'Ƶ��D�댉l�ƅ�+N�B�wѝ8�T�B���.1���]L����B��:��R�ڗ��k���'b5h�b<���3V�BsB{�Dvh�5�о�l@�Bԡ}�,ؾ����=E�>��A��O&-��A������qގ�b~�CDy>�8�4�C�LąT�A���A����A��0��Bj��߷����/      �   Z   x�U̹�0D�����"��_������?ນ���;!�Ks�ڤ���R���|1���԰Y��4O�V��Y�R¾��0z��a|      �   �   x�=�K� �u<L
�_�s���9��&�W��Ѯ_t{�[���o�Y����q�o�Z�Zr�Or�'c�VƬ[R���L�:��|�B(�N�Y�d��|�<��+˯uA���쬷�9g��r(���
%�'�V��SK���0ɂ}�������K���c�z�K      �      x�}�Q��8����H�ӝ��`���?�vefDH��00P��6�����?�����?������\����O��$�A�4�� ���/X
���l�T|!������X�8*�&O�$,IX��$aI�}�R�2��L��Da���%
K�(,QX��A�	$l��A�	t�}Fl$l����
(l����
$�HX��"aE�	��� ��Pa7��UX��Ba��
�
+�$�IX��&aM�5	����������*�QX��Fa���5	�$l��I�&	�$l��I�&	�(l����&
�(l����&
�$l��E�	[$l��E�	[tJ\x�lK�-�P�Ba�-�P�"a��m�I�&a��m�I�l$l�5l����6
�(l����6�/vI`(M`X����a���L?0`+�����<L@�@���s���5L��=0|`�����X�i7��"�&�E`+ a�aJ0�
��0%�_��y��'p�0I`(M`X�f�aJ0�
��0%�_��y��'p�0I`(M`X
�.QF��Fa���<L	�Wav�+ ;��a�� P��$�lt��y�lL��y�����<L	V@v���$�A�4�I`�
L��K���0%�^��y�,�
s���<L@�@��8%n<��<L��
��0%_��y���s��<L@�@��/�>��B������?� ���t��ǵ��� P��$���܄)������X��
�N��^@�@��V�&�Ra��L��l[���\[�\[/ 	E�	L//�Fl��l[/Sa��W��U�m� a����"�&�� �0��+��*̶�J0�
�m����k�$�A�4�I`) a���+:ë0��+��*̶�J������ P��T �D�xEF�0����T�m�`|f�z%G�0��H�@h��R��0�xE��=0|`�����X��N����.Q@�@�
�#L��M݄ɐ������X�8* �\�( 	E�	L��V`N����K���0�%*��*�v�J��ӮK��"��8���_*�v�J0�
�]�̯�l���	\�( 	E�	L �u�T���`xf�D%�_��.Q��.Q@�@��v몾h�
�x��.Q	�Wa�KT�x��$�A�4�I`)����_%�=0|`�����X��Nן���C@�@�
�S��M��	�!������?� qT ���C@�@��foM)��*�6J0�
�M����k:$�A�4�� �0��Y�
�O��`xf�%�_�٦C���C@�@��8��)ٖ
�M����*�6J� *�5�m:$�A�4���a��_!���)�����X�8*p
���"��"�&���<�d�M�/1w:t�L?0`+ ;��a�� P��Tpa2b+07e�
�g%�^��k�,�
sװ~�+/I`(M`X�sJ�%t���+J0�
��0%X �a��a�� P��$��S���ɶ��n�a:���X��
|vz�)Q@�@+xUl҈E#6��	�!������?�aJ���$�A�4��༆ɈM#T���(Sa����0{JTrT���DI`(M`X
��O�����q�o���X��
|vz�& 	E�	LK���>q�����1?0`+��i{�	H�@h��"�	����Gv�t��0}`������g���o�|�*Z�r 	E�	LK��\y�	��V`�������,@`d���%	K�$,IX��$a��g7B��t#v�Wa��gK0�
�?[���6H� a��6H�����݈%G���������0���%OP$�HX��"aE�	+�?~���N���7K0�
���,�
�N7	k�$�IX��&aM�a�װ�C]̮��Q�%_��hK��ӓ�M6I�$a��M6I���v$LE���0��o	�Waz�����"a��-�H�"a���m|6mJ��=+;ë0�ge	�Waz�ʒ'�$l��M�6	�$l�0�Q�t�z��mK���L��tFm	@�m�3j�� P��$�l �x���>0~`��V����j7��"�&���<%
�	S������?� ���v�0I`(M`X
@�.춥����`zf�aJ� *��þ���	H�@h��O���������`xf�aJ0�
��0%O��a�� P��T ��<L�
��0%^��y�̯��<L��y��$0�&0�07���<L	�Wav��0;S�n& 	E�	L��&���<L��M0�
��0%X ��a�_@���	�@�
��$��Ô`vf�aJ0�
��0%G�0;��"�&���_��<L	f�>0~`��V������^@�@�
�#LFlq&C��nN�:���X�8* �\[/ 	E�	L �=^����%^�ٶ^	�Wa��W�����"�&���<%
Pa�K?�WT�m�`|f�z%X�i��H�@h��R ���~n[*̶�:ӫ0��+��0�����zI`(M`X
@�./`	fWa�����l[�+ ;��zI`(M`*x�\4b+ a����l[��0��+y ��H�@h��R�����;y��h�`����� ���v�P9��"����K��F܄�E�������?� qT ��.�-B�� P��$��G�]��̮�l�h���0�%�E�>�u�n*�"�&�E`Pa��]��L��l�h��+ ;��D���@h��"��f�D%^��.�.Be	@��.�-B�@�@�
��锨?kqCT���"T�`|f�D��%`�D���@h��R�����v*�W����?� ���[�ʁ$0�&0�G�[��m�&�.Be�`����� �
�0�t�E��@�
@��5e�rD��7�"T�`|f���%O�����@h��Rp�Hj����n���%_�٦�.Be����-B�� P��$��0�t�E�٦�.Be	�Wa��p�P��m:�"TE�	L��h�]�鋆f�>0~`���Q�S�[�ʁ$0�&0���"TnS7a2$0{`����� �
�0ws�P90�&0	,[�i:�"Tw�-��U����E�,��0ws�P9��"�&��༆�M_J��g��%_��k�]�ʒ��0���@hS�?%�k�]����������X�8*p
s�P9��"�&�E`+0��"T�`����� ������r`(M`*8�0��
�m�]��L���)�.Be�Q/̞�"TE�	L^�mĦ"̷�v*K0}`�������0��I`(M`*8�ɈM#n`�������,@�����r`(��U�I`��7D�o:�`������Q �&�#��w���\opH�@h?��an�"�	����L?0x���t��$aI�%	��I`�TX��_���%
K�(,QX��4®'�$�A�4�I`�n`���q������X�Ϻ|��@�@���W�6��/$�=0|`�����X��$aI�%	K�$,I�a�0=%�1^��)�̯�����)с$0�&0	,��M�=%Zr�K���� �E]bQ�X�%u�E]b�]�=�O���Ģ.��K,����.��K,����.��$,IX��$aI�}��%�LB�x
K�(,QX��Da����#L=h���Ģ.��K,����#LF@�X�%v��]b�.�S���K,���Ģ.��K,���Ģ.��.�!̍�.��K,����.��K,����.��$,IX��$aI��)�l�az�Y�٩K<��f	�.��0wJt ���.��K,���Ģ.��.�e����.�L�h��S�%� �
  ����.���Y�>	E�	LK���7/Jx�~�>0~`��V :ؠ�=�{�ރ����=�����س�������=�{������=�{��aI�%	K�$,I�@�~�u,-��Խ���%
K�(,I� a��6H� a��6H�.xc	fWa���%_��7�`d���	+V$�HX�0�)��6�����v�Wa�SfK0�
ӟ2[�M�5	k�$�IX�5�3b+�#Lױ�ë0�U�%�_�鯊,y�I�&	�$l��I�&	��2�a�=�-�od[��U���m	@�M�H�"a��-�H�"a�N�����0}#�����CK0�
��-y�M�6	�$l��M�6	�7�� �0}#�Qa��"�5L����(K� *l�0}9ʁ$0�&0	,[\Î���X��c0}`����� ܘ�)tS>�|�M����A�n�yS�<�d�yS�S���|�M����7�o���<L@�@����a�乤�ۘ
��0%_��y���촛�	H�@h��R GX��C����<L	�Wav����<��y��$0�&0�]��M�Rav&Sav��0;SrT ��y��$0�&0	,[�'��<L	�Wav����<��y��$0�&0������f�aJ0�
��0%X ��a�_@���	�@�
@��HōPav&Sav��0;SrT���0I`(M`X
�v�H��#;\Î��`������g�����zI`(M`*8�0�i�M��#��c0}`������ ̵��� P��$��G��Pa����l[��0��+y��H�@hSa����l[�ë0��+��*̶�J������ P��T �\[/#T�.x�6��l[��0��+9* �\[/ 	E�	L�L�	�0�����l[��0��+y��H�@h��R ���nMɶT�m�`zf�z%X ��������� P��$�xa���>0}`������g���H�@h��R�XR��0]���L?0@.}�|��1y���.z���.zђ ���:_��r���.z���.z���.z���.zK�$,IX��$aI�%	� z]��(,QX��Da����v=���Ջ�+_�\����=W���E?����?����^>W���ϕ/|�|�s��=WƋ������}bŁA�4�����ɈM@�a�ڹ%^�av�l?�b	@�����ĊI`(M`X
�.Q?����0;q��X��0;qv�X� 7qv�Xq`(M`*�#�=�O�|�f'��+�`|f'��+�<��8�O�80�&0	,[a�y������~b�,�
sg���� PZ��b��"��o��;������G@��8�O�8��"�&����R��mf�#�{k�>0~`��V@v�5�+E�	L�&#6f�%^�٦�~b�,�
sM��ĊI`(M`X
��?���X�ë0�t�O�X�Pa��p�Xq 	E�	L��&��l�!�kQa�鰟X��0�t�O���m:�'V�@�
��a�+nS"�7�+�`�����GNa�+$�A�4�I`�
L�a?�b	�L?0`+ ;��a�+E�	LK�y��'I�h�
��	حazf�a�+�`d��5�}bŁA�4����eĦ*�^��'V,��*�^��'V,9*���k��Ċ�@h��R��0��Y	f�>0~`��V���+$�A�4�I`)8��'I�hH��)�~b���?� ���v�D���"�&�� ��S�̮��)�~b�̯��)�}b��)�}bŁA�4�I`�
@�o�����O�X��� ���v�Xq 	E�	LK�y��'I�hH��)�~b���?� �x�=��'V�@����aK�#�>0}`������g�e]��@�@����57�^��V`�������,@`>�q�H�@hS�c���M��#��h�`�����G~Ⱥa��\o /���ş���X\���:�X�9^-O�h��E\.|cq��˼��ڱ������X\����7aI��;��wK�����!,I�g�T�g����`xzc��(,QX��4®'��������Eo,���������p��Ƣ&C�Ņo,.|cq���X\����7�]��?Vh�c���v��˳���:�C����/p,O��r,O�f	,O�f	,O�f	,O�f�|��w����� ,I�gı:�����<=�#̒#��`�sy��5�n�����0w��S��@�]�;%: ��߅�S��<�C��,���Sr�o�o��ְ �<�����x�#́A�*M��mjӈ[[�ߑ�)̒#�S؝<O��x
��	�x�k��6UZ��sc�T�6�`x��DF�i�a�Q�S�;%:��"���S�;%:p�'�>0}`������a�N�w�8%��@h���"�	�����<�,9�?�0K���k�%X��$arJt`(x�݈&0iS�Fl*L�K0�
Ӧ�̯�n+��i9�\
Na�"�&��"�	܄�.��>0~���c�
�����������I�      �      x�u�Q��8�E�g�buER$�{��uL;I��A�i*�sZ� �R8���?���?�_�����:�X`'ؼ����l�m����D*�K$�D:��_�ж�mCۆ�m�^l�����Gۦ�Mm��6�mj�Զ�mSۆ�m;�v��h�Ѷ�mGێ���$R�\"��&҉|��h;�v��@ہ�m�^�nm���L"��%��l"���щ�'ڞh{�퉶'ڞh{�}c8o����|�K%r�d"�H'�f4�v��Dۉ�m'�N����^�nm��	��R�\"��&҉|�-�]h��v��B��M11n�m{k{L4R*�K$����5���m7�n��h��v����v��V��J��D69���?3(k��X`'ؼ������`�~�󳬎�J��D6�N���u��h�Ѷ�mGێ�eVؾ����g�ۂG&�J��D6�N�s�h��@ہ�m��h[�`�=E����I��D2�M��\3:��D�mO�=��|^o˸�q�nmϲN�#��D2�MNA�\3�h;�v��Dۉ�eVغ�w�Y>����FJ%r�d"�H'�f��v��Bۅ�m�.|��5Xwk�t��VAR�\"��&������m7�n���L'�ıl����5X�S"��%��<��3��?��
k`l��7�h[�-��c��-#�:\.�Ld�SP>׌��h;�v<��2n�-�vk[�	�N��d2��\3:��D�mO�-�{��'ږuBwk[�	u�T"�H&��)(�kFm'�N��h;Ѷ�>��YV��{�o���$R�\"��&������m�.�]h�жܫ���y{�����{�:R*�K$�D:��5���m7�n��h��v����o7����uB�R�\"��&҉|>����볬����	6�ؾ��5����rt��D2�M��\3:��D�mO�=��D�mO�=ն~���#��%��l"����Dۉ�m'�N��h;�v�m���>����;����D6�N�s�h��Bۅ�m�.�]h[>�
����w����r�d"�H'�f��v��Fۍ�m7�n�-{�C��YVG�r�d"�H'�����?��ma���l��{��eܟ�e`d���p�D6�N�s�h��Dۉ�m'�N��h[���<o+��T"�H&��t"�kFm�.�]h��v����_�om���B�D.�Ld�d
~�Fۍ�m7�n��h{]�m������:R*�K$�D:��.�kBa���l�-�}c϶�$RI�ᒉl"����Bۅ�m�.�]h�ж��
����w(?1R�\"��&҉|�m��h��v��Fۍ�m�5�Þ�����_&�J��D6�N��y��}���:� ;�&��`�Vx7y>k7�.�H&��t"�kFm7�n��h��v��Fۍ����:o�ёJ��D6�N��y<�ݶ����	6�ؾ����B�D*i:\2�M�:ǯ�a��������]���j�_�~��x����=��6��W��p�ՆC�6z��Ы�^m8��D�mO�=��D�������m����ȩ��ڞj{�����ڞ��k#��>| �@���'���<| �P��C���
>|(��mCۆ�m�6������{����`c��y�mj�Զ�mSۦ�Mm�v��h�Ѷ�mGێ�m;�v��j�ն�mWۮ�]m���g��ma��������l�ma�g���~<��l[�T�l�?�T��
��g��m;�v��h�Ѷ�mGێ��-��l�m=o+��m~���m���\"�mk`���x<�h[��y������zl<�{��P2xl�y�����c��gQ�넿��u�v��f�ޅE�Ңw=�	_(��%��l"��:����mCۆ�mڶ��ĸ�:a=�	h{�2�T"�H&�y�ж�mGێ�m;�v����s�}�^�����:�mWۮ�]m��v��j��v��@ہ��80��`��y�m�q��y�v��P���]#e�D>׌N�=��Dۋ��������ƽ��}�=��T�SmoP2�M��x���v��Dۉ�m'�N����}��y;��:��>/>˦�N��j;�v��Dۅ�m�.�]h��v���6��}^����R�\"��&҉|��_�k`l��`l����}��>���y{�r�d"�H'����~������	6�ؾ�w����$R�\"��&҉|�m/��:� ;�&غ����6�����s�%��l"���с��h{�큶�h�}�mܭ��e��RI�ᒉl"����e��,ؗ��`_��nl�m��[[�ˢ}Y�/��9�Ld�dj�a_�˂}Y�/�e����֍��j_v;8��CP.�)�H'�f�}Y�/�e76��{���-�e7vk;�V��h_�ˢ}Y�/��e)��ϝ�G��X`'�[`�{��yo�ٶ�C���qo�y�֑҉|�u��h�Ѷ�mGێ�m;��kB�2y�G�zM�P6�N�s�h��@ہ�m��h;жޫ�@��ׄ
��Ld�D>׌N�=��D�mO�=��D�mO������B�D2�M��\3�h;�v��Dۉ�m'ږ{5�=���m�WS�\"��&҉|�-�]h��v��Bۅ�m�.���j*�J��D6�N�s�h��Fۍ�m7�n��h[��������j��M#%�D:��wF�^Ma���l�-�}c���#(��%��l"���Q�6h��m��A۠m�W�h[��T(�H&��t"�kF�h{�큶�h{�큶���{5�rI�H�D:��5#��꽚�:� ;�&��`��ڗ�o��MP2�M��\3¾�ޫ)���l�-�}c��j_��WSa�Ld�D>׌�/��j
�`��`��^k�׽�rp��R�\�u�l"���gF��mk`l��`l���[�����m�R�\"��&҉|��h;�v��@ہ�m�y[����ж�O�#��D6�N�s��D�mO�=��D�mO�=Ѷ>�Q�L"��%��l"����Dۉ�m'�N��h{m�ƽ��Ѷ�O��l�]P6������m�.�]h��v��B�r?����~0���~T(�H&��t"�kF�~Ba���l�-�����P���#�&�e�D>���	�5�6�N�	�n�u�}�O�0���\"��&҉|�m��A۠m�6h��Fm�u�T"�H&��t"�kF�h{�큶�h[��/l�����	�O�T"�H&��t2���mCۆ�m�6�mh[�'vk�Զ�����K$�D:��_�}Y��PX`'�[`��p�j_���P�\"��&҉|�a_V�'���	6o�}��վ�u?�B�D.�Ld�d
�f��z�-��u�qc[�71na��8|��߶J��=��5X9����w�mO�=��D۲�-l�-�����m}ߡ�CP.�Ld�D>׌&�N��h;�v��Dۉ��w�e�G�����D2�M��\3*{��X`'ؼ��5��y˸���⼭{�:R.�Ld�<�G��v��Fۍ�m7�^�ɉql�=�Gm���ߡW(����=�h��m랷��o����l�؅q�j�zߡ���M��g�&�����m�6h[����`���m�޾���F&�J��D6�N���h{�큶�h{���֍��^�nm랷��J��D6�N�sͨ�mCۆ�m�6�mh[������=o���\"��&҉|�u��h{m;���N���nm��J%MP2�MN�)�eؗ�=�b_V���M������j_��z��i���l"���gF���|�-��u�v�M��������?�	e`"x�%��l"����Dۉ�m'�N��h;Ѷ�.�Þ�m�<��D6�N�s�h��Bۅ�m�.�]h�ж�.��v�mݗ՟)��&҉|�m��h��v��Fۍ�m7���EV(�H%r�d"�H'��Ψ��
k`�����N;���ϻھ~Y��T"�t�!x�O��5��m�6h[�e��`l����/�P&�J��D6�N�s��@�m�=��@�m��"˸�q��u_V�T"�H&��t2���mCۆ�m�6�mh�ж������T"�t.�H'S��:�v��h�Ѷ�mٗ�ql�����EV(�4��Ld�SP>׌��h;�v� �  mٗ}���h[�9-'���\"��&����~F��Ca���l�-���K�m��J��D6�N�s�h��Bۅ�m�.�]���`��7���MP2�M���{I�m7�n��h��v�m��N���/ɣm�;Tx�%��l/	��wۺw(��u�v�M��o�}Mx�*�J䒮�e�D>׌��A۠m�6h��m�{���Q��}�*�M��\3:��@�m��V�'�M����nm�ޡB�D.�L��t"�kFm�6�mh[��M���nm�ޡ�CP.�Ld�D>׌:�v��h�Ѷ�mGێ�m��t*��T"�H&��t"�kFm��h;�v��@ہ�u���h[��𦑒�l"���gF?�EY���:� ;�&����e���J%M#%�D:��5���m7�n��h��v��F�zo�B�D*i:\2�M��|gT׷�5�6�N�	�����۾ַ��H%M�wA�D:��5��m�6h��m��A�zo�B�D*�K$�D:��5�m�=��@�m�=��@ۺ��0�R�\"��&҉|�5�mh�ж�mCۆ�m���c�0�R�\�u�l"���QGێ�m;�v��h�Ѷ<�T�����m)��%��l"����@ہ�m��h;ж�o�����:��H�D2�M�������>���:� ;�&��`y�=��V(��%��l"���;��+��u�v�M������5X)��%��l"���QY���:� ;�&��`��uVG)�H&��t"�kF�h{�큶�h{�큶���5Xyhd�Ld�D>׌�6�mh�ж�mCۆ�m�=�D���t�M�wA�D:��5���m;�v��h�Ѷ�mGۺ�@��k�:R.�Ld�D>׌��h;�v��@ہ�m�s�F��K$�D:��ό~�uBa���l��{�ʸ?m���$R�\"��&҉|�m��A۠m�6h���uB�D*�K$�D:��5�m�=��@�m���ql����uB)��%��lr
��QCۆ�m�^�'�M��c7����uB)��%���N�sͨ�mGێ�m�:��	�n�ݶ����$R�\"��&҉|��h;�v��@ہ��9�2n����uB)��%��l"�L�_?m�ϲ�X`'�[7v?o�?�^F&�J��D6�N�s��@�m�=��@�m�����=Զ�����D6�N�sͨ�mCۆ�m�6�mh�pޖ�;ԃ#�H%r�d"�H'�f�Ѷ�mGێ�m;�>ߕ��6حmyW���D2�M��)�e�ϲ�X`��׷�-��nm���j;�v��Pۡ��,�����:� ;o�Ѷ�[`��g��$���%��lr
��QCۆ�m�>��M����1�ֶ���94R.�L��)8���mGێ�m����	��6حmW����p�D2�M��\3h;�v��@ہ�m��:o�����J��D6�N��D��	�5�6�N�	����=ۖ��I�%�D:��5���m;�v��h�Ѷ�mGۮ���P�!(�H&��t"�kFm��h;�v��@ہ���PaA�D2�M��|>���ma���l�-��w����CP.�Ld�D>׌��h;�v��@ہ�m�y[a��D2�M��|�����:� ;�&��`��h��z�&(��&��������?;o��      �     x�]�MN�0���)z�*�_�� 1�+ذ��B�	$n�ӔΘl����~�L<d؇��~��iA�Z)�B�w,��Ar�1��F�6Y��N!y����t��t��A�``�!�c|��Y��#1�6�8D�4T�Aͽҥ�0������*�p�W�� �\�8�_`�����9c���R��	��@W���S��n��sx��� p{:��^IA�<��VF���ფ9��_��n��R��y�����H�G��o�.�׭��;*�#      �     x�mS�n1}6_���+l���m�Ҥ�"�%/�wHܽ��J�}����m9sf��!e�4I�ZK�l��g�^�'��3��c���[ԝ��9����z+푯-�� �,�PCo㎂-�4X�(�^
�R���Y@,����@�՞o�
�5P��a�ؒfHc�TRӒ��3g�Ak'����d�ת�� G�zE��zN�
B����p ��8�d��#���%L(c���������Z�\2���#�|�ݎ,��s�K?�c?z��e�����8v�B�$rj�a�{i}-w1���)A�#^�w�sz����;��Ѐ��S ���V��'�5�Fs�2�t֘�\�	̗���\��S�|��e��3�ꅖ�p�μ�x|�)ϒn�o��xK幾���/q��U>s_�����l��T��+<h��Z���,��*�i��+��J�U�9����]�~^�`��ӱ{�_K�Y�Y>-b�bo�;���4aY9�.� ϯ.C��������|�L&� w�<�      �   @  x�u��n�0���)����=F�*P%�D�\&�cF1��Ry��I ��7�5�7^����?l���d�ƴ�I�-La{fN��(�3��{�MX���d��r�I����O�WJ_���u�h��#��~r�����P��	�-����ޥ�h-{+aO����F�p�@-�QW��0�d�_Ű�ܤDSlo��Q����x�V�a�N
��@�:��N/��:oPB�dM�:^�����-��6����6�g�!��A�T�x���
y�%X�I����2�2cÌl<�mn'La�M�m��kZ�&�8�	��&��u �OI����5      �      x�u�K�Ɏ��aF��O����2�X	7�ٔH�x&ô�ħ������z~�����?�_����!��"8	.��n��x���B��C�
��+0XX�7�a��$�I��d'�N����p���?��e'�N��(;Qv��D�I��${��A��${���Zy�쁲�({�쁲�({��"�E��d�.�]$�hg��/���)fRم�e�.�](�H�$ٓdO�=I�$ٓdO�=igO�=��;fR�eO�=Q�D�eO��H�"ًd/��H�"ًd/��P�B�e/��P�B�e/��H�&ٛdo��I�&ٛdo����l��k�F�eo��Q�F�eo�}H�!هd�}H�!هd��e��e�}P�A�e�}@���w��0	�Ep\7��d��O�����S�
�,0����?��n0	�Ep\�����J�n��*0U`��\���Ɂi��`��$�n�G!���;�P*���N1�ʶ>��j��`��$�n�G!ɶ>�S�����s�l�;����&�A�N���V.��o}�R�=Q��ٝb,�m}v��LL���� X'�Ep<
ig[�ݾ@e[��)�R��gw������n0	�Ep\7����w��ٝb*�m}v�Lek����}v�Ip,���"�B9����nߪ����c�l�;�d��Y��`��$�n�.�_G�B��C�
��+0X`�ρ����5��"8	.�[�-��&�S�*0U`��\���Ɂi��`��$�n� ��f�ϫl���)�R���u��T��~o��_�Ip,���R.[o���*�Z��*�Z�N1�ʶ֯SK���k0	�Ep\�B����u��T��~�b,�m�_��LL[��� X'�Ep+�e�-־C�lk�:�\*�Z�No��_�Ip,���ReDo���*�Z��*�Z�N1�ʶ֯SK沭�k0	�Ep\�B��~��}>0S`��T��sL�9����v#&�A�N�Kέ<��&�-�*0U`��\���l�FL��`��M�(�m|��l�F:�X*ۺ�N1��v#&�A�N�K!�l�ՠʶn�S����s�l�F:��v#&�A�N�K!��n�A�m�H�Je[7�)�R�֍tzC�FL��`���d��֍t��T�u#�b.�m�H��n��$8�Ip�
]�߈�3�
L+0W`��d��_��d�Ip,���Rx��}��nK3�
L+0W`��d [O�&�A�N���V��r�S̤���)�R�v���Ɂ�	��$8�Ip)���OjT����S����)�R�v���z�l0	�Ep\�B��v��>�����b*�m'�N1����_h'��� X'���w���V�l�\�k1T`��X����%�e�Omy&�A�N���Vx�춲���r��b��T��sL&�5��$8�Ip)��5�> �.j:�P*�jv��Ke[���Z�L��`��M�(�}pg�-�N1�ʶ��)S�Z��/��&�A�N���V�e�kv�|X�p�^�;�X���&�آ2�`��T��r��C+��40S`��T��s�ٝ�P�H�Ip,���R.[�H[����H��me�S�����tj�\����� X'�Ep+���e�}>0SX�p�^F:�\���}l��n0	�Ep\���e�����3���}-�
�,0�}`��L��`��M����LZ�p�~��c�
��s`�d7��"8	.�[�]Fl�;�L��S�
�,0����O�߿��(L��`����Gv����|`��P��c�
�L,Iv��$�I��d'�N��~�IW��l;��b(��(;Qv��D�I��${��A��${���L�(���~��({�쁲�$�Hv��"�E��d�.�]$�Pv��Bم�e�.�](�H�$ٓdO�=I�$ٓdO�=�fO��kv,fS�쉲'ʞ({��E��^${��E��^${��^({��^({�셲�^({��E�7��${��M�7��$��bUx��*{�썲7��({�썲7��$���C��>$���C���C����ݯ �b(�}P�A�e�}@v��Q��"8	.���Q����*0U`��\���}�}��}v�Ip,���"��e��&�S�*0U`��\���Ɂi��`��$�n� {�	�}^e�m}v�Ke[��)&��>��$8��0\v�	��Cߩ�eʶ>�S������Ԓ�l��L��`��B��}v�*���N1�ʶ>�S̥������g7��"8	.� [��U��ٝb(�m}v��Ke[�����n0	�Ep\7�CPe[�ݩ�
�m}v��Ke[�����n0	�Ep\
ag�m}v��Ie[��)�R��gwj�\���&�A�N���V�5���N1S`��T��sL�9��m�L��`���{g���V6�miX&)#}-�
��+0XX2���_�Ip,���R��k�*�n�v��T��~�b.�m�_�7�֯�$8�Ip�
�e[��)fR���u��T��~�b290m�L��`���d/����X���b*�m�_�Lek�����_�Ip,���"��썲��kߪ��k�Ke[��)&��֯�$8�Ip)|\��~ߐd�-�N1�ʶ֯S̥�������5��"8	.�[����%�N���_��*0V`��`��>��&�A�N�K�ݍ���V6�6(@� 0T`��X����%�ڍ� ��`���0\�u#�b&�m݈
0��T�u#:(���A
�"8	.���!���F�
0��T�u#6(�(&��nD(��$�n�G!�l�F:�P*ۺ`��l�FtP��$8�Ip)��}����v#���P*ۺ`��l�FtP��$8�Ip�
]�߈�A����S�
�,0���tP��$8�Ip)�w�
Џ7�6(��b��T��sK�����Ep\
A�^�۠ �R�moD٠ �Ke�	���� uP��A�N���V��l{Rөe
�m'H`s�l;Aꠀ��
P8�Ip�
A�� mP@�$�N�6(�(�R�v��A?�N�:(@� X'���ˈ� �/޿hi`��P��c�
�얭�&�A�N�K�-[�Ǜ�40S`��T��sK��f� ��`��M�(�m5��P*�j�
0��T��l�0	�Ep\���e[���0�ʶ�m��b.�m5[�@��:(@� X'���ˈ�l�_�)0T`��X����%�e� �Ip,���"�	�"��P��c�
�LLˈ
P8�Ip)���FlP�~�ʶ2b��b,�me�����p,���R�C_��AF1S`��T��sKv��A
�� X'����VZ�dw��C�
��+0XX2�m;[(��T&�vv���Sd�	�S�*0V`��` �v�
P��"8	.��l�o�;�Lr��AF1V`��`a�^����/4�<o�L��`�
�\�r<�d�L��S�
��M1�X��$�I��d'�����&x��|�Tى�e'�N��(;Qv����Ip,���"�	�Mv��)0TX��e���+0X`�� -#
�� X'�Ep+��ue��b&�ש{1���_��e�(&�K��$;Iv��$�I��d���Pe�2bk1��N��(;Qv�l��ZF&�A�N�����Էl+#F1����q��k1��ԗl+#7-�F����n��)�Fʻ������B7Rԍv#��Ha7R؍v#��Ha7R؍��$�I��d'�N��$�Z7.;Qv��Dى�e'�N��([wv��p�.�F����n��)�F��VB7R؍v#��HA7"�;�\ԍv#E�HQ7Rԍu#E�HQ7Rލ��֕Ѝv#��Ha7R؍v#��Ha7R؍��$�I��d'�N��$�����0ى�e'�N��(;Qv��Dٺ���(��vQ7Rԍu#E�HQ7Rލ�-�ʈQE�Ha7R؍v#��HP7ԍu#A�HP7ԍ�w#?��q�(A�H`7؍v#��H`7؍v �	  #�݈�N��$;Iv��$�I�� t#&�w1���qى�e'�N��;{��A��${��A��${�쁲�({�쁲�({��"�E��d�.�]$��N��CWم�e�.�](�Pv��"ٓdO�=I�$ٓdO�=�f�|�C��}��Q��'ʞ({�쉲'�^${��E��^${���;5���C��*{�셲�^({�셲��${��M�7��${��Med���({�썲7��({�썲7��$���C��>$���C���C;��~�KUveؾS�샲�>(�����Wa��$�n�G!������PᲯ�F1W`��dp�&�FTЍ��QA7��nD=�u��~Ef7�Dv��nDވ
�x#*�F���>��$8�Ip��� ٣��~�ʶ>�S�������Ɂi��`��$�n���KO���*���N1�ʶ>�S����~C��L��`���pٓd�_�3j���X��)�R��gwj�@���&�A�N���&xRYXF���S�l�;�`*[��7�>��$8�Ip)���igo��O��gw��T��ٝb0��}�j��`��$���C;��ζ>�}�ʶ>�S������Ԓ�l�L��`����w��b�.�5�z��(�
�,0���ޯ\j��`��$��;��<���nK�2��S�
���ӗ���<��塧/=}y���Co�>�.��O_����ӗ��<�����/>}y��˃O_|�b��d'�N��$;Iv��$�I�� =}qى�e'�N��(;Qv���s�p���%�C��]�?t	��%�C�<t	�� ���%����^�?x	��%���]�c}+�P��
��$8�Ip�
�k�=�iK�f�l���ciͶ+�N1��^A6��"8	.�p��+�U�]Av��T�]Av��T�]AvzC��l0	�Ep\
A�^A��*{�ζ+�N1�ʶ+�N1���+��_m�z�� X'���q����A�mW�}-�R�v�)�R�v���
��$8�Ip�
�����>���
�SL���
�S���
�/�+��� X'�Ep+t����S�*0U`��\���}Lg�*L��`����d�,V�|`��P��c�
�LL��Ūp,���R.[��M_�y�m��m�Q�����Y�Fo�݈�bU8�Ip�
�e[7b�X�[U�u#6��(�R�֍�,��nDg�*��$������}�鋖�l�Fl�Q�����Y�Fo�݈�bU8�Ip��B��v?�S����Y�F1���nDg�*L��`�
�d�A
}�Ⱦ�P��c�
���Y�
�� X'�Ep+�e���/�|`��P��b5���&����bU8�Ip)����}��>������jc�l;A�,V�7���bU8�Ip�
agۋ�6��(�R�v��Y�F1�����bU��"8	.���!���ن��l;A�,V��Ke�	Rg��@;A�,V��`����d�	�f��L��S�
�,,�-[g�*L��`��M�(���b5��S�
�,0���l�Ūp,���"��˶��>��2�l��6��(�R�V�u�j��Y�
�"8	.�Ჵf���/��Ie[ͶY�F1�ʶ���X��l�Ūp,���"����[��b��P��c�
��s`:�Ua��$�n���>��EK�2I�Y�F1V`��`�������,V��`���d[�3�l+#6��(�R�VFt��2��X�Ep\7��d{��M��e�f��\���}Lg�*L��`������}�鋖�e�2b�X�b��\����f;[g�*��$�n�Ga��x���6��(�
��+0X`�ρ�,V�Ip,���"��� �|�}>0S`��T��sH���Mo�n�5�@x5t����x}�@�~�i�Ȧy#�x����7^�������7^7���׍o���$�I��}��j��N���T�^��N�����쯥��k��?��xuى�e'�N��| ����Mo�nz�u����~>Z��N���*��Rz�u���x�����7^7������Ϟ�ڜ����a���І���Vh�Ϟ��;æ�}d��g�d��g�d��g�d���ްAaᲓd'��ZiC��e�����g�������,U���o�\4��e���2��u�ZF�.[ˈB�~v����2����R=��N-Wܲ�����H�?;[᠏�I_7}���x�ҰL�F-�Gv��2bԂ}d�a+#>.���x�
_.;?5[�!���	�(�Rٽ�����Dى�ugkQ��"8	.��l-#
����3�
L+0W`��d?���ʈ���$����/�F-�gg�T��m�r}j�QL&�$���Ca��$�I��d�2�Pe��Q���	�(�R���}���|޲��$��O��&ۺ�*0U`��\���ZK���������� �By�      �     x�u�Ar�0��ڕ�|L���;��u��ti4+Ae�޶�|]���=���坸$U�&I�d�dH�T�lDL�cr����<&�19��y\�v��ek��]�v��e�*�U٭�nUv��[�ݚl�d�&4٠�]���>]���>�L�e�.ӆ\3�g"�$v3RY�c;~�8K�˴.ӺL+9�}�{�"�=�߅ �I��� �N������~�g�΃���-��<h�Ix�el����іA�5�Ҥ-�`7�e솶����-�`�el��4i� ��r�m�Ж&m9	�ɶ���6]��A�������oV�����N�|�A�-�':�ǉ��[���A��y�o��<� ��[�߂`k��K��n� ��6	wC��� � ���oAp��$��-���\�m^�_��D�� ��˴.ӺL9m����D���$՞��K�D[##_�<��z���vv�q��2/�W����U��]�� G�z���k��ZF�Mˉ����<{���֟Ǻ���ɵ~      �      x�e�Mv�8��q�b�d���F��i�oM�T��y$�������7��O�����F��A��E�%�|ȗ����a�;ƒ�e����7w\:.��Kǥ��O����u�t]�.]��Kץ��q�\.����e�2X/C�πc��1��-c���u�2q��L\&.������xq�?*6�c�X2��5c�gօ��e�pY�,\.����zY>��/�c�X2��5c�g֍��e�qٸl\6.���z�>���e�uٺl]�.������rp9�������C��_\���s�c�X2��r��Ϭ������rq��\\.�/W���u�\]�.W�����>.?3���;y��b����,�?���b����,�?�����%��Y������g��Y�����,�.��k+�/���g�y��g��e2�e����7V�`5V��e�2p)���o���2ʣ�X1v�%c�X3�|f��L\&.����e�Rv'���.S����e�2u��L]&.����e�pYϳj9~8~9^\Vy�gX1v�%c�,��̺qٸl\6.��zٸl\vy�)$�a��1��-c�����rp9�\.���nٝ����^����rt9�]�.������rq��],���C���r]/��ru��\]�.W��;�������N�I^%]��C����RN�ӼĎ�dl��=�Y'.����e>���C���2u��L]>��t����3��e�pY�,��b�,\��Q9^\��Q=Ê�c,[f9`�g֍��e�qٸl��~�w��[r{�l���e�uٺl]�.������rp9�\��^�����z�c�X2��5c�g֋����rq��\\..�g�9^\����ru��\]�.W��z��s��nɝ<ȓ�ț|ȷ��q�x�_��b�KƖ�f��̺pY�,\.����e�tY�,]�.K����e�pٸl\6.����e�q��R~�ۥ��K�KƖ�f���zp9�\.�����<�\\껔u�y�c��2֌=�Y/.������rq��\�����r]/W������ru)ϻ�y\5r'�$/�&�����u)'Ć�b��X2��5c�g֍��e�qٸl\6.����vٺ���#b�X2��5c�gփ����rp9�\~�i��d\��K�b�KƖ�f��|q��\\..���}������ru��������ru�������N�I^�M>�[��Rl+�{�%c�X3�|f=�\.������R^�K..G���ѥ>��-c�����rq��\\..���e�ܲ�]�ac�X1v�%c�X3��|�^/%w� O�"o�!_�K��o+첢�KƖ�f���zq��\\..������R��v��+b��1��-c�����ۥ�N�I^�M>�[���Rl+�{�%c˼k.�N��:]�c���썏��7>fo|���r�����c��o��9!6�c�X2��5��k���	�j5��@�T�ɛ�|�|a
5��BM��PS�)Tu�t\:.���o���}̼\�.]��Kץ��u�t]:.����e�2p�\.C����e�2t�]�.�qi���;y�'y�7���7d�u)'Ć�b�KƖ�f���:p�\.�������r�o�L�!3����2�o�L�!�r����q)��y�y���I�����'���I��R,[ƚ|R{^�G��ȝ<ȓ�����^�/����~=��b�KƖ������\:.��Kǥ���+6��/�_�G����b�KƖ��#\:.����e�2p���z�=~9�����.C����e�2t�L\&.��S{r|�7�p�����p��L]>�ϰe�{>�.\.��zY�,\�e�^��e�tY�,���e�tY�l\6.����e�Y/���u�>�l�w�.[����e�q9�\.������rX/���q������rt9�].������rq��\\..��r]/����c,[ƚ��w�
�\>��y�y����v��Ɗ�c,[ƚ��3kp	.�%���\�~~�/.�%��?v�%c�X3�|fe���a���a����|J~��ߍ��?gX1�K,[ƚ��3+�ݰ��ݰ��ݰ���C�\_\����n��~~f,[ƚٞ���w�~7�w�~7�w�~��O�o����h�1�3lkƞϬ�w�~7�w?y�W���2Y/�w?��L]����n����n����n�~�s��u)��y�y�����y�/��ԁ�%v|�/���z�5c�gց��e�2p�\.��K�o,W�ޗ�e�R��5c�g։��e�2q��L\&.�z���e�RG�KƖ�f��̺pY�,\.����e�tY>�Vyޭv�%c�X3�|fݸl\6.����e�R�K~���e�uٺl]�.[������rp9�\.������rt���u���e�{>�^\..������rq)��%�~s�������ru��\]�ۥ�7��Ƀ<ɋ�ɇ|K~��?q���c,[ƚ��3kp	.�%���\�KX/�
�@s���dlkƞϬ��Kå��pi�4\.M��Kӥ��ti��^��u��Ϭ�w�~7�w�~7�w�~7�w�~�u�XjC\����ϰe�{>����ݰ��ݰ��ݰ��ݸߍ���}c�X2��5c�gV��a���a���a��������2]/S�����2֌=f�|.�u)��y�y�����y>���:`��1��-c���u�2q��L\&.��KY/%�~��zTϰc,[ƚ��3��e�pY�,\.���ҥ��+Ǝ�dlkƞϬ����e�qٸ��}�r��_�I�z�>���e���:`�X����o������rp9�\���rt9���q���q�]�.������rq��\\..���~�V�ht���5c������N�I^�M>%��_^�Gu 4�KƖ�f���\�Kp	.�%���]�zy��3�KƖ�f����pi�4\.��K{?����J..��R?W�v�%c�X3ہo�t\:.��Kǥ�R�J..]��K�q�u�t]�.��a���a���a���a���q�������3c��2֌=�Y���n���n���n�\��/.���X1v�%c�X3ہ��7)�.%w� ϒ�ǥ�?��/[�q�V|�e��u��1���/[�].���¥���ɇ\��.K��K�����X2��5c�g֍��e�qٸl\6.�s�r��l�r��qT�KƖ�f���zp9�\.����qtX/��r\/G��z9�]�.G������rq��\\��}�r��/���-p��\�����ru��ܷK�(��Gɩ.�>����������_W~B�݁�ϰe����7��\�^/�>��]��%���}@��a�;ƒ�e����77\.��Kå�R>'��Ks�4G���:`�X2��5c�g֎Kǥ��q�t\:.�>����u�>�����Kץ��u�\.�����I^��ɇ|�ť~��X1�KƖYl���n��~��㓼ț|ȗ�_\����n����-c���g��~����Ƀ<ɋ��￴t^i�y��v�%c�X3�|fݸl\6.����e�R����]�.[����e�uٺl\.������rp9�\����rt9�]�.G������rq��\\..�����^�.u�[�KƖ�f�����wK��Qr��'/���C�\�����.WĊ�c�Ӂ�,�|f.�%��^�~��M>%��w_��:`�X1v�%c�X3�|fm�4\.��Kå��]�_���K���߭��-c�l����q�t\:.��Kǥ�w��V�3�Ė�f��<p�\.���-������e�2t���g�2�{>�N\&.����e�^&�e�2u��L]&�ӯ�n�e������笲�+��y�y�������ԁ8`��1��-c�����rp9�\.��r����g ��4���-c��_�{�\\..���ť��Y��%��z��\]����ru��ܷK�ו�Ƀ<ɋ�ɇ|K~?�^��:`��1�KlkƞϬ�%���\�Kp	.a���uu�9`�X2��5c�gֆKå��pi�}@9�ɇ|���4]�.���ti�4]�.��Kǥ� A  �q鬗�Kǥ��]/]��Kw�t]�.]��K�e�2p�\.����e�^�.C��z�]�.C����e�2q��L\&.���t�L]�.S����k_W�{���3X�/%w� O�"o�!׿D���:�����-c�����rq��\\..������ru��KՁ�%��-c���;kݿ��Ƀ<ɋ�ɇ|K~���/�X1�K���5c�g��\�Kp	.�%���]�Kt���:`�X3�|fm�4\.��Kå��pi�4]�/��K�dlkƞϬ��Kǥ��q�t\:.]��Kץ��u�>��.]����e�2p�\.��9l9^\�.�s�:`�X2��5c�g։��e�2q��L\&.��2u��L]��R�KƖ�f��3���Z]J��A��E��C���2��:`��1��-c���;k}�.��y�y������t=Ê�c,[ƚ��3kp	.�%���\�Kt�.ѥ��PϰdlkƞϬ��Kå��pi�4\.M��Kӥ�R�Y�Ė�f����q�t\:.��Kǥ��u�t]��t�d8`�X3�|f�\.����e�2p�]�.��R_��-c���u�2q��L\&.���ĥ~_�ā�c��2֌=f��\}=*��y�y�O��}]9��RN�c��1��-c���5���\�Kp	.�%�D��]�Kt�.�%�4\.��Kå=���|�ť��ti�4]�.M��Kå��q�t\��y@9�ɇ�/ǋKץ��u�t]�.]����e�2p����e�2p�]�.C����e�2t�L\&.����e�R��P�_rq��L]�.S����e���t)ϻ5w� O�"o�)��z���9!6�c�X2��5c�gֆKå��pi�4\.��n�ť�Rޯ{�1��-c�����q�t\:.��Kg������a�;ƒ�e�{>�\.����e����D=~��e�2t�]�.C����e�2q��L\&.��%��p�%����e�2u��L]�.�y7�㪑;y�'y��u)����<�=6Lc��1��-���3kǥ��q�<���7�p��xq)��zE�g�1��t`9�����e�2p����R�!_rq���3�.�c,[ƚ��3��e�2q��L\&.���t���z�c�X2��5c��C��8*��y�y������b�4/�X2��5c�gց��e�2p�\.��K}Ձ�c��2֌=�Y'.����e�2q��L\�.S����e�2u��L]�㨳^J��A��E��C��?{N�Kh�1��-c���u�2q��L\&.���ĥ��:�;ƒ�e�{~^��.��p̓<ɋ�ɇ|����{¯��%c�X3���?����G�mw      �   �  x�m�K�� E��b�?��F��J��ʭA�!�x*��G.���!�|��w���>v�&hA'�	��`۠�$%IJ��$)IR��$ɨ�Qu��FՍ�UOT(Q�D�JT�)�SN��N93}���L��,Y7�ӝO7T������F0mP)R)�6X�gxݚ���:�7}����w�P��c������=��i�X�(Vc���|�	��t��5��;c(�N�� �`�����vw�w���
���ם-��c<Al�(��2�pK��ڔ�������>��ņ3�sr�b�5Ø�kocTBl�j����1d'<��'��ۘ�@�^ͱ7��{s<M�����Xk��9 ���M����]d<�ܻ �;-�w,����w=���������-i��UTV�Ɋ�*އ�5��54|o54��ȝ�<T{���K���Ҵ9��PM��t�r"ԅ�ō#JoSp�Ș�k�1�W&���<�?1N�      �   �   x�U��
�0E�7_�/����Up� �u3i�0I��ܸ��s�w�QJ���}Ԕ&a���C�%J� ����ʒ��Y�G���8�F��Y�mV��K�k������\��8}h�~Q���M�e�q}!�M�̚�s�,�6�1�|ut3�      �   b  x�5��m�0��v1�4��������쉘�Ã���u���_��p.�x���B^�s�.8��p����^�@�R��6n���[B*��C��A!"�z�Fb��0�a4
�h��(4J��A�e�h4�i4���1Nc0��Ƞ12�o�(HFC2�8�8���8a�0΁d$��ɠa2h��4#h8F�p���A�e�p44o�82hh�q0��6O�<iF����͓�6O�<ih�͓�6/ڼhh�͋�6/ڼhh�͋�6/ڼhh�͛�6oڼih�͛�6�|�o�.HFC2a̾��� �qc$# 4�����CC�m�����}�_JY�8      �     x��U[n�0�&O����g)P(��*M$#6���]�!Җ@X����.M�������/d�n���@1��l�{3<Q�q��5��
 c��^�^�;��B�,�,.N���}�~s��fx���Y�!M��X�31a���T��׉#�q�Y�������_&�6.�y���|�����(@P�̚གྷ�"��㢃
2+a�����{yc�@>�	�w�_�?��e����@�x$��l�UU����.Fu! E��ܸ5�'�x$��l%6���� �C .����e�D#9�
9�����5dJo�&�X����[D����>�)�`�]�>#?qq��JX�ዑ��۶���F:N�� %mI�32�3gȢ�E�ɸ2��W{za[C�2�V�����3�BkԈ	�E�u��8��}�_����gb�2Ç~2�W���}��Xа�����5��e��30J�qU""bB�Xy��P��q9�2�`1~�Ȼ$�㊪��AJ�Ɓ�,���O�mg,��9	�cc�����      �   �   x�e�;�0E�z�
6`�y�v*V�
h�@$BP>�'��A����ކ�E���ӢK��?�e�%�� �"0<:�aK���E]M���	ٺd9�뭃��i�[��)H��Ls���:�곌�{�q^B#`a�n79�A�.p)�s��^���l�-���݋�r4�| �F82      �   6   x�˹  D��_�P<z��:\��&,,H�t�rP��r��b�͑��ߜۀj'      �   Z   x�3�,.-H-RHL����,.)J,�/�420��5��54Q0��!S.#NG������������!�	�wbq&B�����������9W� �{u     