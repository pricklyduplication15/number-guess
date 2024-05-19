--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('23', 1, 7);
INSERT INTO public.users VALUES ('user_1716154975259', 2, 531);
INSERT INTO public.users VALUES ('user_1716154975260', 5, 6);
INSERT INTO public.users VALUES ('user_1716156354982', 2, 154);
INSERT INTO public.users VALUES ('user_1716155347142', 2, 313);
INSERT INTO public.users VALUES ('user_1716155347143', 5, 59);
INSERT INTO public.users VALUES ('user_1716156354983', 5, 26);
INSERT INTO public.users VALUES ('user_1716155488166', 2, 305);
INSERT INTO public.users VALUES ('user_1716157216091', 2, 247);
INSERT INTO public.users VALUES ('user_1716155488167', 5, 313);
INSERT INTO public.users VALUES ('user_1716158275681', 5, 63);
INSERT INTO public.users VALUES ('user_1716156384170', 2, 423);
INSERT INTO public.users VALUES ('user_1716155749134', 2, 104);
INSERT INTO public.users VALUES ('user_1716157216092', 5, 190);
INSERT INTO public.users VALUES ('user_1716155749135', 5, 59);
INSERT INTO public.users VALUES ('user_1716156384171', 5, 355);
INSERT INTO public.users VALUES ('user_1716155792193', 2, 743);
INSERT INTO public.users VALUES ('user_1716155792194', 5, 212);
INSERT INTO public.users VALUES ('user_1716155874851', 2, 357);
INSERT INTO public.users VALUES ('user_1716156389631', 2, 396);
INSERT INTO public.users VALUES ('user_1716157773907', 2, 591);
INSERT INTO public.users VALUES ('user_1716155874852', 5, 215);
INSERT INTO public.users VALUES ('user_1716155895043', 2, 220);
INSERT INTO public.users VALUES ('user_1716156389632', 5, 348);
INSERT INTO public.users VALUES ('user_1716155895044', 5, 336);
INSERT INTO public.users VALUES ('user_1716157324176', 2, 89);
INSERT INTO public.users VALUES ('user_1716155992802', 2, 24);
INSERT INTO public.users VALUES ('user_1716156391941', 2, 728);
INSERT INTO public.users VALUES ('user_1716155992803', 5, 63);
INSERT INTO public.users VALUES ('user_1716156024178', 2, 7);
INSERT INTO public.users VALUES ('7777', 1, 12);
INSERT INTO public.users VALUES ('user_1716156391942', 5, 302);
INSERT INTO public.users VALUES ('user_1716156024179', 5, 200);
INSERT INTO public.users VALUES ('user_1716156099946', 2, 257);
INSERT INTO public.users VALUES ('user_1716157324177', 5, 18);
INSERT INTO public.users VALUES ('user_1716156099947', 5, 4);
INSERT INTO public.users VALUES ('user_1716156403193', 2, 108);
INSERT INTO public.users VALUES ('user_1716156227442', 2, 241);
INSERT INTO public.users VALUES ('user_1716157773908', 5, 24);
INSERT INTO public.users VALUES ('user_1716156227443', 5, 152);
INSERT INTO public.users VALUES ('user_1716156403194', 5, 16);
INSERT INTO public.users VALUES ('user_1716156442134', 2, 605);
INSERT INTO public.users VALUES ('user_1716157329242', 2, 65);
INSERT INTO public.users VALUES ('user_1716156442135', 5, 423);
INSERT INTO public.users VALUES ('user_1716156461337', 2, 412);
INSERT INTO public.users VALUES ('user_1716157329243', 5, 146);
INSERT INTO public.users VALUES ('user_1716156461338', 5, 51);
INSERT INTO public.users VALUES ('user_1716156487713', 2, 367);
INSERT INTO public.users VALUES ('user_1716157331723', 2, 133);
INSERT INTO public.users VALUES ('user_1716156487714', 5, 83);
INSERT INTO public.users VALUES ('user_1716158280764', 2, 330);
INSERT INTO public.users VALUES ('user_1716157789126', 2, 231);
INSERT INTO public.users VALUES ('user_1716156799810', 2, 134);
INSERT INTO public.users VALUES ('user_1716157331724', 5, 149);
INSERT INTO public.users VALUES ('user_1716156799811', 5, 26);
INSERT INTO public.users VALUES ('user_1716156872945', 2, 712);
INSERT INTO public.users VALUES ('user_1716158794743', 2, 485);
INSERT INTO public.users VALUES ('user_1716156872946', 5, 33);
INSERT INTO public.users VALUES ('user_1716157335413', 2, 41);
INSERT INTO public.users VALUES ('user_1716156891526', 2, 412);
INSERT INTO public.users VALUES ('user_1716157789127', 5, 17);
INSERT INTO public.users VALUES ('user_1716156891527', 5, 389);
INSERT INTO public.users VALUES ('[F[B[6~', 1, 12);
INSERT INTO public.users VALUES ('user_1716157335414', 5, 400);
INSERT INTO public.users VALUES ('user_1716157092258', 2, 484);
INSERT INTO public.users VALUES ('user_1716158280765', 5, 225);
INSERT INTO public.users VALUES ('user_1716157092259', 5, 342);
INSERT INTO public.users VALUES ('user_1716157348256', 2, 701);
INSERT INTO public.users VALUES ('user_1716157811162', 2, 638);
INSERT INTO public.users VALUES ('user_1716157348257', 5, 74);
INSERT INTO public.users VALUES ('user_1716157433592', 2, 129);
INSERT INTO public.users VALUES ('user_1716157811163', 5, 87);
INSERT INTO public.users VALUES ('user_1716157433593', 5, 79);
INSERT INTO public.users VALUES ('500', 1, 11);
INSERT INTO public.users VALUES ('user_1716157622007', 2, 25);
INSERT INTO public.users VALUES ('user_1716157622008', 5, 204);
INSERT INTO public.users VALUES ('user_1716157832305', 2, 448);
INSERT INTO public.users VALUES ('user_1716157653877', 2, 401);
INSERT INTO public.users VALUES ('user_1716158336393', 2, 856);
INSERT INTO public.users VALUES ('user_1716158781317', 2, 673);
INSERT INTO public.users VALUES ('user_1716157653878', 5, 160);
INSERT INTO public.users VALUES ('user_1716157832306', 5, 152);
INSERT INTO public.users VALUES ('user_1716157719959', 2, 489);
INSERT INTO public.users VALUES ('user_1716157719960', 5, 222);
INSERT INTO public.users VALUES ('user_1716159698501', 1, 778);
INSERT INTO public.users VALUES ('user_1716158116046', 2, 591);
INSERT INTO public.users VALUES ('user_1716158336394', 5, 297);
INSERT INTO public.users VALUES ('user_1716158781318', 5, 58);
INSERT INTO public.users VALUES ('user_1716158116047', 5, 451);
INSERT INTO public.users VALUES ('user_1716158151569', 2, 643);
INSERT INTO public.users VALUES ('user_1716158794744', 5, 123);
INSERT INTO public.users VALUES ('user_1716158151570', 5, 119);
INSERT INTO public.users VALUES ('user_1716158275680', 2, 595);
INSERT INTO public.users VALUES ('user_1716158481121', 2, 23);
INSERT INTO public.users VALUES ('user_1716158787631', 2, 164);
INSERT INTO public.users VALUES ('48884', 1, 11);
INSERT INTO public.users VALUES ('user_1716158481122', 5, 233);
INSERT INTO public.users VALUES ('123', 6, 5);
INSERT INTO public.users VALUES ('user_1716158787632', 5, 161);
INSERT INTO public.users VALUES ('user_1716158642437', 2, 209);
INSERT INTO public.users VALUES ('user_1716159122124', 5, 213);
INSERT INTO public.users VALUES ('user_1716158642438', 5, 108);
INSERT INTO public.users VALUES ('user_1716158791841', 2, 719);
INSERT INTO public.users VALUES ('user_1716159092352', 2, 533);
INSERT INTO public.users VALUES ('user_1716158791842', 5, 320);
INSERT INTO public.users VALUES ('user_1716159434387', 2, 301);
INSERT INTO public.users VALUES ('user_1716159092353', 5, 164);
INSERT INTO public.users VALUES ('user_1716159724719', 1, 594);
INSERT INTO public.users VALUES ('user_1716159122123', 2, 111);
INSERT INTO public.users VALUES ('user_1716159128434', 2, 377);
INSERT INTO public.users VALUES ('user_1716159724718', 1, 105);
INSERT INTO public.users VALUES ('user_1716159434388', 5, 353);
INSERT INTO public.users VALUES ('user_1716159128435', 5, 3);
INSERT INTO public.users VALUES ('456', 7, 8);
INSERT INTO public.users VALUES ('700', 1, 11);
INSERT INTO public.users VALUES ('user_1716159698502', 1, 385);
INSERT INTO public.users VALUES ('user_1716159732365', 1, 139);
INSERT INTO public.users VALUES ('user_1716159732364', 1, 548);
INSERT INTO public.users VALUES ('user_1716159766976', 1, 940);
INSERT INTO public.users VALUES ('user_1716159766975', 1, 816);
INSERT INTO public.users VALUES ('user_1716159815515', 1, 330);
INSERT INTO public.users VALUES ('user_1716159815514', 1, 510);
INSERT INTO public.users VALUES ('user_1716159817920', 1, 602);
INSERT INTO public.users VALUES ('user_1716159817919', 1, 248);
INSERT INTO public.users VALUES ('user_1716159820036', 1, 84);
INSERT INTO public.users VALUES ('user_1716159820035', 1, 639);
INSERT INTO public.users VALUES ('user_1716159953083', 1, 964);
INSERT INTO public.users VALUES ('user_1716159953082', 1, 153);
INSERT INTO public.users VALUES ('user_1716159959631', 1, 965);
INSERT INTO public.users VALUES ('user_1716159959630', 1, 275);
INSERT INTO public.users VALUES ('user_1716159969747', 1, 43);
INSERT INTO public.users VALUES ('user_1716159969746', 1, 572);
INSERT INTO public.users VALUES ('user_1716160006947', 1, 746);
INSERT INTO public.users VALUES ('user_1716160006946', 1, 476);
INSERT INTO public.users VALUES ('user_1716160016476', 1, 180);
INSERT INTO public.users VALUES ('user_1716160016475', 1, 734);
INSERT INTO public.users VALUES ('user_1716160018818', 1, 573);
INSERT INTO public.users VALUES ('user_1716160018817', 1, 342);
INSERT INTO public.users VALUES ('user_1716160020756', 1, 833);
INSERT INTO public.users VALUES ('user_1716160020755', 1, 191);
INSERT INTO public.users VALUES ('user_1716160022497', 1, 746);
INSERT INTO public.users VALUES ('user_1716160022496', 1, 41);
INSERT INTO public.users VALUES ('user_1716160024461', 1, 278);
INSERT INTO public.users VALUES ('user_1716160024460', 1, 585);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

