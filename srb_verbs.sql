toc.dat                                                                                             0000600 0004000 0002000 00000002643 14530330041 0014435 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           	        
    {            eng_srb    16.0    16.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    24590    eng_srb    DATABASE     i   CREATE DATABASE eng_srb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE eng_srb;
                postgres    false         �            1259    24632    eng_srb_verb_a    TABLE     �   CREATE TABLE public.eng_srb_verb_a (
    inf_eng text,
    inf text,
    present_i text,
    present_thou text,
    present_one text,
    present_we text,
    present_you text,
    present_they text
);
 "   DROP TABLE public.eng_srb_verb_a;
       public         heap    postgres    false                   0    24632    eng_srb_verb_a 
   TABLE DATA           �   COPY public.eng_srb_verb_a (inf_eng, inf, present_i, present_thou, present_one, present_we, present_you, present_they) FROM stdin;
    public          postgres    false    215       3585.dat                                                                                             3585.dat                                                                                            0000600 0004000 0002000 00000006270 14530330041 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        inf_eng	inf	present_I	present_thou	present_one	present_we	present_you	present_they
have	imati	imam	imaš	ima	imamo	imate	imaju
know	znati	znam	znaš	zna	znamo	znate	znaju
watch	gledati	gledam	gledaš	gleda	dledamo	dledate	dledaju
listen	slušati	slušam	slušaš	sluša	slušamo	slušate	slušaju
wait	u010dkati	čkam	čkaš	čka	čkamo	čkate	čkaju
ask	pitati	pitam	pitaš	pita	pitamo	pitate	pitaju
answer	odgovarati	odgovaram	odgovaraš	odgovara	odgovaramo	odgovarate	odgovaraju
play	igrati	igram	igraš	igra	igramo	igrate	igraju
swim	plivati	plivam	plivaš	pliva	plivamo	plivate	plivaju
plan	planirati	planiram	planiraš	planira	planiramo	planirate	planiraju
draw	slikati	slikam	slikaš	slika	slikmo	slikate	slikaju
sketch	crtati	crtam	crtaš	crta	crtamo	crtate	crtaju
walk	šetati	šetam	šetaš	šeta	šetamo	šetate	šetaju
think	razmišljati	razmišljam	razmišljaš	razmišlja	razmišljamo	razmišljate	razmišljaju
open	otvarati	otvaram	otvaraš	otvara	otvaramo	otvarate	otvaraju
close	zatvarti	zatvaram	zatvaraš	zatvara	zatvaramo	zatvarate	zatvaraju
cook	kuvati	kuvam	kuvaš	kuva	kuvamo	kuvate	kuvaju
prepare	spremati	spremam	spremaš	sprema	spremamo	spremate	spremaju
feel	osećati	osećam	osećaš	oseća	osećamo	osećate	osećaju
leave	ostavljati	ostavljam	ostavljaš	ostavlja	ostavljamo	ostavljate	ostavljaju
keep	čuvati	čuvam	čuvaš	čuva	čuvamo	čuvate	čuvaju
let	dozvoljavati	dozvoljavam	dozvoljavaš	dozvoljava	dozvoljavamo	dozvoljavate	dozvoljavaju
look	izgledati	izgledam	izgledaš	izgleda	izgledamo	izgledate	izgledaju
pour	sipati	sipam	sipaš	sipa	sipamo	sipate	sipaju
pay	plaćati	plaćam	plaćaš	plaća	plaćamo	plaćate	plaćaju
continue	nastavljati	nastavljam	nastavljaš	nastavlja	nastavljamo	nastavljate	nastavljaju
change	menjati	menjam	menjaš	menja	menjamo	menjate	menjaju
return	vraćati	vraćam	vraćaš	vraća	vraćamo	vraćate	vraćaju
explain	objašnjavati	objašnjavam	objašnjavaš	objašnjava	objašnjavamo	objašnjavate	objašnjavaju
hope	nadati se	nadam se	nadaš se	nada se	nadamo se	nadate se	nadaju se
support	podržavati	podržavam	podržavaš	podržava	podržavamo	podržavate	podržavaju
cover	pokrivati	pokrivam	pokrivaš	pokriva	pokrivamo	pokrivate	pokrivaju
choose	birati	biram	biraš	bira	biramo	birate	biraju
talk	pričati	pričam	pričaš	priča	pričamo	pričate	pričaju
have lunch	ručati	ručam	ručaš	ruča	ručamo	ručate	ručaju
have dinner	večerati	večeram	večeraš	večera	večeramo	večerate	večeraju
rest	odmarati	odmaram	odmaraš	odmara	odmaramo	odmarate	odmaraju
finish	završavati	završavam	završavaš	završava	završavamo	završavate	završavaju
like	sviđati se	sviđam se	sviđaš se	sviđa se	sviđamo se	sviđate se	sviđaju se
sing	pevati	pevam	pevaš	peva	pevamo	pevate	pevaju
remember	sećati se	sećam se	sećaš se	seća se	sećamo se	sećate se	sećaju se
must	morati	moram	moraš	mora	moramo	morate	moraju
solve	rešavati	rešavam	rešavaš	rešava	rešavamo	rešavate	rešavaju
sleep	spavati	spavam	spavaš	spava	spavamo	spavate	spavaju
take	uzimati	uzimam	uzimaš	uzima	uzimamo	uzimate	uzimaju
trying	pokušavati	pokušavam	pokušavaš	pokušava	pokušavamo	pokušavate	pokušavaju
try	pokušati	pokušam	pokušaš	pokuša	pokušamo	pokušate	pokušaju
\.


                                                                                                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000003747 14530330041 0015370 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE eng_srb;
--
-- Name: eng_srb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE eng_srb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE eng_srb OWNER TO postgres;

\connect eng_srb

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
-- Name: eng_srb_verb_a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eng_srb_verb_a (
    inf_eng text,
    inf text,
    present_i text,
    present_thou text,
    present_one text,
    present_we text,
    present_you text,
    present_they text
);


ALTER TABLE public.eng_srb_verb_a OWNER TO postgres;

--
-- Data for Name: eng_srb_verb_a; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eng_srb_verb_a (inf_eng, inf, present_i, present_thou, present_one, present_we, present_you, present_they) FROM stdin;
\.
COPY public.eng_srb_verb_a (inf_eng, inf, present_i, present_thou, present_one, present_we, present_you, present_they) FROM '$$PATH$$/3585.dat';

--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         