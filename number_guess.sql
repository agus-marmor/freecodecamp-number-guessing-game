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
    user_id integer,
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL
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
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 499, 498);
INSERT INTO public.games VALUES (2, 1, 171, 170);
INSERT INTO public.games VALUES (3, 2, 442, 441);
INSERT INTO public.games VALUES (4, 2, 593, 592);
INSERT INTO public.games VALUES (5, 1, 761, 758);
INSERT INTO public.games VALUES (6, 1, 836, 834);
INSERT INTO public.games VALUES (7, 1, 37, 36);
INSERT INTO public.games VALUES (8, 3, 552, 551);
INSERT INTO public.games VALUES (9, 3, 309, 308);
INSERT INTO public.games VALUES (10, 4, 920, 919);
INSERT INTO public.games VALUES (11, 4, 634, 633);
INSERT INTO public.games VALUES (12, 3, 69, 66);
INSERT INTO public.games VALUES (13, 3, 173, 171);
INSERT INTO public.games VALUES (14, 3, 688, 687);
INSERT INTO public.games VALUES (15, 5, 917, 916);
INSERT INTO public.games VALUES (16, 5, 333, 332);
INSERT INTO public.games VALUES (17, 6, 773, 772);
INSERT INTO public.games VALUES (18, 6, 743, 742);
INSERT INTO public.games VALUES (19, 5, 591, 588);
INSERT INTO public.games VALUES (20, 5, 620, 618);
INSERT INTO public.games VALUES (21, 5, 869, 868);
INSERT INTO public.games VALUES (22, 7, 386, 385);
INSERT INTO public.games VALUES (23, 7, 199, 198);
INSERT INTO public.games VALUES (24, 8, 891, 890);
INSERT INTO public.games VALUES (25, 8, 715, 714);
INSERT INTO public.games VALUES (26, 7, 17, 14);
INSERT INTO public.games VALUES (27, 7, 514, 512);
INSERT INTO public.games VALUES (28, 7, 458, 457);
INSERT INTO public.games VALUES (29, 9, 374, 373);
INSERT INTO public.games VALUES (30, 9, 616, 615);
INSERT INTO public.games VALUES (31, 10, 197, 196);
INSERT INTO public.games VALUES (32, 10, 877, 876);
INSERT INTO public.games VALUES (33, 9, 824, 821);
INSERT INTO public.games VALUES (34, 9, 714, 712);
INSERT INTO public.games VALUES (35, 9, 405, 404);
INSERT INTO public.games VALUES (36, 11, 412, 411);
INSERT INTO public.games VALUES (37, 11, 436, 435);
INSERT INTO public.games VALUES (38, 12, 112, 111);
INSERT INTO public.games VALUES (39, 12, 171, 170);
INSERT INTO public.games VALUES (40, 11, 378, 375);
INSERT INTO public.games VALUES (41, 11, 446, 444);
INSERT INTO public.games VALUES (42, 11, 792, 791);
INSERT INTO public.games VALUES (43, 13, 8, 7);
INSERT INTO public.games VALUES (44, 13, 449, 448);
INSERT INTO public.games VALUES (45, 14, 369, 368);
INSERT INTO public.games VALUES (46, 14, 209, 208);
INSERT INTO public.games VALUES (47, 13, 647, 644);
INSERT INTO public.games VALUES (48, 13, 144, 142);
INSERT INTO public.games VALUES (49, 13, 197, 196);
INSERT INTO public.games VALUES (50, 15, 656, 655);
INSERT INTO public.games VALUES (51, 15, 311, 310);
INSERT INTO public.games VALUES (52, 16, 946, 945);
INSERT INTO public.games VALUES (53, 16, 857, 856);
INSERT INTO public.games VALUES (54, 15, 768, 765);
INSERT INTO public.games VALUES (55, 15, 986, 984);
INSERT INTO public.games VALUES (56, 15, 356, 355);
INSERT INTO public.games VALUES (57, 17, 82, 81);
INSERT INTO public.games VALUES (58, 17, 19, 18);
INSERT INTO public.games VALUES (59, 18, 950, 949);
INSERT INTO public.games VALUES (60, 18, 357, 356);
INSERT INTO public.games VALUES (61, 17, 653, 650);
INSERT INTO public.games VALUES (62, 17, 576, 574);
INSERT INTO public.games VALUES (63, 17, 166, 165);
INSERT INTO public.games VALUES (64, 19, 900, 899);
INSERT INTO public.games VALUES (65, 19, 649, 648);
INSERT INTO public.games VALUES (66, 20, 656, 655);
INSERT INTO public.games VALUES (67, 20, 914, 913);
INSERT INTO public.games VALUES (68, 19, 181, 178);
INSERT INTO public.games VALUES (69, 19, 634, 632);
INSERT INTO public.games VALUES (70, 19, 895, 894);
INSERT INTO public.games VALUES (71, 21, 479, 478);
INSERT INTO public.games VALUES (72, 21, 155, 154);
INSERT INTO public.games VALUES (73, 22, 520, 519);
INSERT INTO public.games VALUES (74, 22, 803, 802);
INSERT INTO public.games VALUES (75, 21, 259, 256);
INSERT INTO public.games VALUES (76, 21, 54, 52);
INSERT INTO public.games VALUES (77, 21, 75, 74);
INSERT INTO public.games VALUES (78, 23, 993, 992);
INSERT INTO public.games VALUES (79, 23, 207, 206);
INSERT INTO public.games VALUES (80, 24, 563, 562);
INSERT INTO public.games VALUES (81, 24, 745, 744);
INSERT INTO public.games VALUES (82, 23, 22, 19);
INSERT INTO public.games VALUES (83, 23, 630, 628);
INSERT INTO public.games VALUES (84, 23, 194, 193);
INSERT INTO public.games VALUES (85, 25, 382, 381);
INSERT INTO public.games VALUES (86, 25, 544, 543);
INSERT INTO public.games VALUES (87, 26, 949, 948);
INSERT INTO public.games VALUES (88, 26, 402, 401);
INSERT INTO public.games VALUES (89, 25, 172, 169);
INSERT INTO public.games VALUES (90, 25, 245, 243);
INSERT INTO public.games VALUES (91, 25, 264, 263);
INSERT INTO public.games VALUES (92, 27, 580, 579);
INSERT INTO public.games VALUES (93, 27, 751, 750);
INSERT INTO public.games VALUES (94, 28, 930, 929);
INSERT INTO public.games VALUES (95, 28, 648, 647);
INSERT INTO public.games VALUES (96, 27, 429, 426);
INSERT INTO public.games VALUES (97, 27, 802, 800);
INSERT INTO public.games VALUES (98, 27, 545, 544);
INSERT INTO public.games VALUES (99, 29, 548, 547);
INSERT INTO public.games VALUES (100, 29, 819, 818);
INSERT INTO public.games VALUES (101, 30, 635, 634);
INSERT INTO public.games VALUES (102, 30, 325, 324);
INSERT INTO public.games VALUES (103, 29, 693, 690);
INSERT INTO public.games VALUES (104, 29, 647, 645);
INSERT INTO public.games VALUES (105, 29, 65, 64);
INSERT INTO public.games VALUES (106, 31, 481, 480);
INSERT INTO public.games VALUES (107, 31, 524, 523);
INSERT INTO public.games VALUES (108, 32, 708, 707);
INSERT INTO public.games VALUES (109, 32, 358, 357);
INSERT INTO public.games VALUES (110, 31, 253, 250);
INSERT INTO public.games VALUES (111, 31, 336, 334);
INSERT INTO public.games VALUES (112, 31, 815, 814);
INSERT INTO public.games VALUES (113, 33, 434, 433);
INSERT INTO public.games VALUES (114, 33, 696, 695);
INSERT INTO public.games VALUES (115, 34, 321, 320);
INSERT INTO public.games VALUES (116, 34, 648, 647);
INSERT INTO public.games VALUES (117, 33, 348, 345);
INSERT INTO public.games VALUES (118, 33, 475, 473);
INSERT INTO public.games VALUES (119, 33, 592, 591);
INSERT INTO public.games VALUES (120, 35, 713, 712);
INSERT INTO public.games VALUES (121, 35, 2, 1);
INSERT INTO public.games VALUES (122, 36, 676, 675);
INSERT INTO public.games VALUES (123, 36, 387, 386);
INSERT INTO public.games VALUES (124, 35, 180, 177);
INSERT INTO public.games VALUES (125, 35, 307, 305);
INSERT INTO public.games VALUES (126, 35, 195, 194);
INSERT INTO public.games VALUES (127, 37, 7, 758);
INSERT INTO public.games VALUES (128, 37, 9, 197);
INSERT INTO public.games VALUES (129, 38, 462, 461);
INSERT INTO public.games VALUES (130, 38, 40, 39);
INSERT INTO public.games VALUES (131, 39, 704, 703);
INSERT INTO public.games VALUES (132, 39, 384, 383);
INSERT INTO public.games VALUES (133, 38, 668, 665);
INSERT INTO public.games VALUES (134, 38, 415, 413);
INSERT INTO public.games VALUES (135, 38, 293, 292);
INSERT INTO public.games VALUES (136, 40, 657, 656);
INSERT INTO public.games VALUES (137, 40, 499, 498);
INSERT INTO public.games VALUES (138, 41, 300, 299);
INSERT INTO public.games VALUES (139, 41, 176, 175);
INSERT INTO public.games VALUES (140, 40, 68, 65);
INSERT INTO public.games VALUES (141, 40, 933, 931);
INSERT INTO public.games VALUES (142, 40, 344, 343);
INSERT INTO public.games VALUES (143, 42, 580, 579);
INSERT INTO public.games VALUES (144, 42, 556, 555);
INSERT INTO public.games VALUES (145, 43, 553, 552);
INSERT INTO public.games VALUES (146, 43, 639, 638);
INSERT INTO public.games VALUES (147, 42, 174, 171);
INSERT INTO public.games VALUES (148, 42, 207, 205);
INSERT INTO public.games VALUES (149, 42, 824, 823);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1723411313454');
INSERT INTO public.users VALUES (2, 'user_1723411313453');
INSERT INTO public.users VALUES (3, 'user_1723411325581');
INSERT INTO public.users VALUES (4, 'user_1723411325580');
INSERT INTO public.users VALUES (5, 'user_1723411327815');
INSERT INTO public.users VALUES (6, 'user_1723411327814');
INSERT INTO public.users VALUES (7, 'user_1723411330030');
INSERT INTO public.users VALUES (8, 'user_1723411330029');
INSERT INTO public.users VALUES (9, 'user_1723411331969');
INSERT INTO public.users VALUES (10, 'user_1723411331968');
INSERT INTO public.users VALUES (11, 'user_1723411333919');
INSERT INTO public.users VALUES (12, 'user_1723411333918');
INSERT INTO public.users VALUES (13, 'user_1723411335844');
INSERT INTO public.users VALUES (14, 'user_1723411335843');
INSERT INTO public.users VALUES (15, 'user_1723411337737');
INSERT INTO public.users VALUES (16, 'user_1723411337736');
INSERT INTO public.users VALUES (17, 'user_1723411339832');
INSERT INTO public.users VALUES (18, 'user_1723411339831');
INSERT INTO public.users VALUES (19, 'user_1723411341718');
INSERT INTO public.users VALUES (20, 'user_1723411341717');
INSERT INTO public.users VALUES (21, 'user_1723411343830');
INSERT INTO public.users VALUES (22, 'user_1723411343829');
INSERT INTO public.users VALUES (23, 'user_1723411345701');
INSERT INTO public.users VALUES (24, 'user_1723411345700');
INSERT INTO public.users VALUES (25, 'user_1723411347665');
INSERT INTO public.users VALUES (26, 'user_1723411347664');
INSERT INTO public.users VALUES (27, 'user_1723411349658');
INSERT INTO public.users VALUES (28, 'user_1723411349657');
INSERT INTO public.users VALUES (29, 'user_1723411352858');
INSERT INTO public.users VALUES (30, 'user_1723411352857');
INSERT INTO public.users VALUES (31, 'user_1723411355121');
INSERT INTO public.users VALUES (32, 'user_1723411355120');
INSERT INTO public.users VALUES (33, 'user_1723411357212');
INSERT INTO public.users VALUES (34, 'user_1723411357211');
INSERT INTO public.users VALUES (35, 'user_1723411359330');
INSERT INTO public.users VALUES (36, 'user_1723411359329');
INSERT INTO public.users VALUES (37, 'Agustin');
INSERT INTO public.users VALUES (38, 'user_1723411475762');
INSERT INTO public.users VALUES (39, 'user_1723411475761');
INSERT INTO public.users VALUES (40, 'user_1723411478086');
INSERT INTO public.users VALUES (41, 'user_1723411478085');
INSERT INTO public.users VALUES (42, 'user_1723411503671');
INSERT INTO public.users VALUES (43, 'user_1723411503670');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 149, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

