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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: find; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.find (
    is_this boolean,
    name character varying(20) NOT NULL,
    find_id integer NOT NULL
);


ALTER TABLE public.find OWNER TO freecodecamp;

--
-- Name: find_find_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.find_find_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.find_find_id_seq OWNER TO freecodecamp;

--
-- Name: find_find_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.find_find_id_seq OWNED BY public.find.find_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_names text,
    galaxy_code integer NOT NULL,
    near_milk boolean,
    same_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.same_id;


--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq1 OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq1 OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_types integer NOT NULL,
    near_earth boolean,
    happy boolean,
    unhappy boolean,
    same_id integer NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.same_id;


--
-- Name: moon_moon_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq1 OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq1 OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_types integer NOT NULL,
    near_earth boolean NOT NULL,
    in_galaxy boolean,
    same_id integer NOT NULL,
    near_check text,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.same_id;


--
-- Name: planet_planet_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq1 OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq1 OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_count numeric(4,1),
    star_code integer,
    star_like text,
    same_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.same_id;


--
-- Name: star_star_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq1 OWNER TO freecodecamp;

--
-- Name: star_star_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq1 OWNED BY public.star.star_id;


--
-- Name: find find_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find ALTER COLUMN find_id SET DEFAULT nextval('public.find_find_id_seq'::regclass);


--
-- Name: galaxy same_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN same_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq1'::regclass);


--
-- Name: moon same_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN same_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq1'::regclass);


--
-- Name: planet same_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN same_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq1'::regclass);


--
-- Name: star same_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN same_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq1'::regclass);


--
-- Data for Name: find; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.find VALUES (NULL, 'kapil', 1);
INSERT INTO public.find VALUES (NULL, 'binju', 2);
INSERT INTO public.find VALUES (NULL, 'thapa', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('sept_galaxy', NULL, 1, true, 1, 1);
INSERT INTO public.galaxy VALUES ('hept_galaxy', NULL, 2, false, 2, 2);
INSERT INTO public.galaxy VALUES ('kept_galaxy', NULL, 3, false, 3, 3);
INSERT INTO public.galaxy VALUES ('lept_galaxy', NULL, 4, true, 4, 4);
INSERT INTO public.galaxy VALUES ('dept_galaxy', NULL, 5, true, 5, 5);
INSERT INTO public.galaxy VALUES ('gept_galaxy', NULL, 6, false, 6, 6);
INSERT INTO public.galaxy VALUES ('trpt_galaxy', NULL, 23, true, 7, 7);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 8, 9);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 9, 11);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 10, 12);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 11, 13);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 12, 14);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 13, 15);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 14, 16);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 15, 17);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 16, 18);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 17, 19);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 18, 20);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 19, 21);
INSERT INTO public.galaxy VALUES ('tre_galaxy', NULL, 12, true, 20, 22);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('half_moon', 1, true, false, true, 1, 1);
INSERT INTO public.moon VALUES ('full_moon', 2, false, true, false, 2, 2);
INSERT INTO public.moon VALUES ('way_moon', 2, true, false, true, 3, 3);
INSERT INTO public.moon VALUES ('like_moon', 1, true, false, true, 4, 4);
INSERT INTO public.moon VALUES ('dislike_moon', 2, true, true, false, 5, 5);
INSERT INTO public.moon VALUES ('harm_moon', 3, false, true, false, 6, 6);
INSERT INTO public.moon VALUES ('cool_moon', 2, true, false, true, 7, 7);
INSERT INTO public.moon VALUES ('face_moon', 2, true, false, true, 8, 8);
INSERT INTO public.moon VALUES ('k_moon', 5, true, false, true, 9, 9);
INSERT INTO public.moon VALUES ('H_moon', 3, true, false, true, 10, 10);
INSERT INTO public.moon VALUES ('j_moon', 6, true, true, false, 11, 11);
INSERT INTO public.moon VALUES ('y_moon', 1, false, false, true, 12, 12);
INSERT INTO public.moon VALUES ('l_moon', 34, true, false, true, 13, 13);
INSERT INTO public.moon VALUES ('d_moon', 12, true, false, true, 14, 14);
INSERT INTO public.moon VALUES ('p_moon', 56, false, true, false, 15, 15);
INSERT INTO public.moon VALUES ('o_moon', 12, true, false, true, 16, 16);
INSERT INTO public.moon VALUES ('i_moon', 56, false, true, false, 17, 17);
INSERT INTO public.moon VALUES ('q_moon', 1, true, false, true, 18, 18);
INSERT INTO public.moon VALUES ('u_moon', 2, true, false, true, 19, 19);
INSERT INTO public.moon VALUES ('z_moon', 3, true, false, true, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 1, true, true, 1, NULL, 1);
INSERT INTO public.planet VALUES ('mars', 2, false, true, 2, NULL, 2);
INSERT INTO public.planet VALUES ('jupiter', 3, false, true, 3, NULL, 3);
INSERT INTO public.planet VALUES ('pluto', 4, false, true, 4, NULL, 4);
INSERT INTO public.planet VALUES ('neptune', 5, false, true, 5, NULL, 5);
INSERT INTO public.planet VALUES ('saturn', 6, false, true, 6, NULL, 6);
INSERT INTO public.planet VALUES ('mrs', 8, false, false, 7, NULL, 7);
INSERT INTO public.planet VALUES ('juper', 9, false, true, 8, NULL, 8);
INSERT INTO public.planet VALUES ('horse', 10, false, true, 9, NULL, 9);
INSERT INTO public.planet VALUES ('Sun', 123, true, false, 10, NULL, 10);
INSERT INTO public.planet VALUES ('Uranus', 12, false, true, 11, NULL, 11);
INSERT INTO public.planet VALUES ('suner', 23, true, true, 12, NULL, 12);
INSERT INTO public.planet VALUES ('kaal', 23, true, true, 13, 'hello', 13);
INSERT INTO public.planet VALUES ('daal', 23, true, true, 14, NULL, 14);
INSERT INTO public.planet VALUES ('vaal', 22, true, true, 15, NULL, 15);
INSERT INTO public.planet VALUES ('kkal', 53, true, true, 16, NULL, 16);
INSERT INTO public.planet VALUES ('khal', 73, true, true, 17, NULL, 17);
INSERT INTO public.planet VALUES ('klal', 63, true, true, 18, NULL, 18);
INSERT INTO public.planet VALUES ('kmal', 23, true, true, 19, NULL, 19);
INSERT INTO public.planet VALUES ('laal', 23, true, true, 20, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('k_star', 1.0, NULL, 'good', 1, 1);
INSERT INTO public.star VALUES ('p_star', 4.0, NULL, 'like', 2, 2);
INSERT INTO public.star VALUES ('j_star', 8.0, NULL, 'dislike', 3, 3);
INSERT INTO public.star VALUES ('y_star', 34.0, NULL, 'cool', 4, 4);
INSERT INTO public.star VALUES ('d_star', 78.0, NULL, 'excellent', 5, 5);
INSERT INTO public.star VALUES ('a_star', 12.0, NULL, 'bye', 6, 6);
INSERT INTO public.star VALUES ('rupt', 23.0, NULL, 'uo', 7, 7);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 8, 8);
INSERT INTO public.star VALUES ('u_star', 2.0, NULL, 'giver', 9, 9);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 10, 10);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 11, 11);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 12, 12);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 13, 13);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 14, 14);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 15, 15);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 16, 16);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 17, 17);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 18, 18);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 19, 19);
INSERT INTO public.star VALUES ('q_star', 2.0, NULL, 'tg', 20, 20);


--
-- Name: find_find_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.find_find_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq1', 22, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_moon_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq1', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: planet_planet_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq1', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: star_star_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq1', 20, true);


--
-- Name: find find_find_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find
    ADD CONSTRAINT find_find_id_key UNIQUE (find_id);


--
-- Name: find find_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find
    ADD CONSTRAINT find_pkey PRIMARY KEY (find_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (same_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (same_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_near_check_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_near_check_key UNIQUE (near_check);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (same_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (same_id);


--
-- Name: moon moon_same_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_same_id_fkey FOREIGN KEY (same_id) REFERENCES public.planet(same_id);


--
-- Name: planet planet_same_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_same_id_fkey1 FOREIGN KEY (same_id) REFERENCES public.star(same_id);


--
-- Name: star star_same_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_same_id_fkey FOREIGN KEY (same_id) REFERENCES public.galaxy(same_id);


--
-- PostgreSQL database dump complete
--

