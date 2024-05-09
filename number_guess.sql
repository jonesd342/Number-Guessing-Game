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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 14);
INSERT INTO public.games VALUES (2, 37, 336);
INSERT INTO public.games VALUES (3, 37, 434);
INSERT INTO public.games VALUES (4, 38, 751);
INSERT INTO public.games VALUES (5, 38, 287);
INSERT INTO public.games VALUES (6, 37, 577);
INSERT INTO public.games VALUES (7, 37, 1);
INSERT INTO public.games VALUES (8, 37, 41);
INSERT INTO public.games VALUES (9, 1, 1);
INSERT INTO public.games VALUES (10, 39, 247);
INSERT INTO public.games VALUES (11, 39, 238);
INSERT INTO public.games VALUES (12, 40, 768);
INSERT INTO public.games VALUES (13, 40, 54);
INSERT INTO public.games VALUES (14, 39, 664);
INSERT INTO public.games VALUES (15, 39, 1);
INSERT INTO public.games VALUES (16, 39, 613);
INSERT INTO public.games VALUES (17, 1, 1);
INSERT INTO public.games VALUES (18, 41, 373);
INSERT INTO public.games VALUES (19, 41, 59);
INSERT INTO public.games VALUES (20, 42, 601);
INSERT INTO public.games VALUES (21, 42, 980);
INSERT INTO public.games VALUES (22, 41, 115);
INSERT INTO public.games VALUES (23, 41, 1);
INSERT INTO public.games VALUES (24, 41, 242);
INSERT INTO public.games VALUES (25, 43, 11);
INSERT INTO public.games VALUES (26, 43, 644);
INSERT INTO public.games VALUES (27, 44, 520);
INSERT INTO public.games VALUES (28, 44, 699);
INSERT INTO public.games VALUES (29, 43, 138);
INSERT INTO public.games VALUES (30, 43, 1);
INSERT INTO public.games VALUES (31, 43, 51);
INSERT INTO public.games VALUES (32, 1, 2);
INSERT INTO public.games VALUES (33, 45, 141);
INSERT INTO public.games VALUES (34, 45, 36);
INSERT INTO public.games VALUES (35, 46, 62);
INSERT INTO public.games VALUES (36, 46, 843);
INSERT INTO public.games VALUES (37, 45, 919);
INSERT INTO public.games VALUES (38, 45, 1);
INSERT INTO public.games VALUES (39, 45, 510);
INSERT INTO public.games VALUES (40, 1, 1);
INSERT INTO public.games VALUES (41, 48, 333);
INSERT INTO public.games VALUES (42, 48, 378);
INSERT INTO public.games VALUES (43, 49, 623);
INSERT INTO public.games VALUES (44, 49, 155);
INSERT INTO public.games VALUES (45, 48, 407);
INSERT INTO public.games VALUES (46, 48, 1);
INSERT INTO public.games VALUES (47, 48, 314);
INSERT INTO public.games VALUES (48, 1, 1);
INSERT INTO public.games VALUES (49, 1, 1);
INSERT INTO public.games VALUES (50, 50, 430);
INSERT INTO public.games VALUES (51, 50, 829);
INSERT INTO public.games VALUES (52, 51, 940);
INSERT INTO public.games VALUES (53, 51, 289);
INSERT INTO public.games VALUES (54, 50, 783);
INSERT INTO public.games VALUES (55, 50, 838);
INSERT INTO public.games VALUES (56, 50, 544);
INSERT INTO public.games VALUES (57, 52, 735);
INSERT INTO public.games VALUES (58, 52, 136);
INSERT INTO public.games VALUES (59, 53, 758);
INSERT INTO public.games VALUES (60, 53, 403);
INSERT INTO public.games VALUES (61, 52, 641);
INSERT INTO public.games VALUES (62, 52, 188);
INSERT INTO public.games VALUES (63, 52, 519);
INSERT INTO public.games VALUES (64, 54, 898);
INSERT INTO public.games VALUES (65, 54, 862);
INSERT INTO public.games VALUES (66, 55, 332);
INSERT INTO public.games VALUES (67, 55, 556);
INSERT INTO public.games VALUES (68, 54, 340);
INSERT INTO public.games VALUES (69, 54, 290);
INSERT INTO public.games VALUES (70, 54, 715);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Dan', 1);
INSERT INTO public.users VALUES ('user_1715237343462', 2);
INSERT INTO public.users VALUES ('user_1715237343461', 3);
INSERT INTO public.users VALUES ('user_1715237425106', 4);
INSERT INTO public.users VALUES ('user_1715237425105', 5);
INSERT INTO public.users VALUES ('user_1715237454109', 6);
INSERT INTO public.users VALUES ('user_1715237454108', 7);
INSERT INTO public.users VALUES ('user_1715237540327', 8);
INSERT INTO public.users VALUES ('user_1715237540326', 9);
INSERT INTO public.users VALUES ('user_1715237653769', 10);
INSERT INTO public.users VALUES ('user_1715237653768', 11);
INSERT INTO public.users VALUES ('user_1715237692110', 12);
INSERT INTO public.users VALUES ('user_1715237692109', 13);
INSERT INTO public.users VALUES ('user_1715238258212', 14);
INSERT INTO public.users VALUES ('user_1715238258211', 15);
INSERT INTO public.users VALUES ('user_1715238300455', 16);
INSERT INTO public.users VALUES ('user_1715238300454', 17);
INSERT INTO public.users VALUES ('user_1715238342765', 18);
INSERT INTO public.users VALUES ('user_1715238342764', 19);
INSERT INTO public.users VALUES ('user_1715238353441', 20);
INSERT INTO public.users VALUES ('user_1715238353440', 21);
INSERT INTO public.users VALUES ('user_1715238447940', 22);
INSERT INTO public.users VALUES ('user_1715238447939', 23);
INSERT INTO public.users VALUES ('user_1715238479758', 24);
INSERT INTO public.users VALUES ('user_1715238479757', 25);
INSERT INTO public.users VALUES ('dAN', 26);
INSERT INTO public.users VALUES ('user_1715238644115', 27);
INSERT INTO public.users VALUES ('user_1715238644114', 28);
INSERT INTO public.users VALUES ('user_1715238692660', 29);
INSERT INTO public.users VALUES ('user_1715238692659', 30);
INSERT INTO public.users VALUES ('user_1715238732438', 31);
INSERT INTO public.users VALUES ('user_1715238732437', 32);
INSERT INTO public.users VALUES ('user_1715238882372', 33);
INSERT INTO public.users VALUES ('user_1715238882371', 34);
INSERT INTO public.users VALUES ('user_1715239034527', 35);
INSERT INTO public.users VALUES ('user_1715239034526', 36);
INSERT INTO public.users VALUES ('user_1715239193307', 37);
INSERT INTO public.users VALUES ('user_1715239193306', 38);
INSERT INTO public.users VALUES ('user_1715239614005', 39);
INSERT INTO public.users VALUES ('user_1715239614004', 40);
INSERT INTO public.users VALUES ('user_1715239863470', 41);
INSERT INTO public.users VALUES ('user_1715239863469', 42);
INSERT INTO public.users VALUES ('user_1715239958274', 43);
INSERT INTO public.users VALUES ('user_1715239958273', 44);
INSERT INTO public.users VALUES ('user_1715240103021', 45);
INSERT INTO public.users VALUES ('user_1715240103020', 46);
INSERT INTO public.users VALUES ('dan', 47);
INSERT INTO public.users VALUES ('user_1715240333246', 48);
INSERT INTO public.users VALUES ('user_1715240333245', 49);
INSERT INTO public.users VALUES ('user_1715240768927', 50);
INSERT INTO public.users VALUES ('user_1715240768926', 51);
INSERT INTO public.users VALUES ('user_1715240817703', 52);
INSERT INTO public.users VALUES ('user_1715240817702', 53);
INSERT INTO public.users VALUES ('user_1715240830957', 54);
INSERT INTO public.users VALUES ('user_1715240830956', 55);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT name_uniq UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

