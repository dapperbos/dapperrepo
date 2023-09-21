--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_name character varying(30),
    galaxy_type character varying(40),
    galaxy_age numeric(3,2),
    personal_rank integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30),
    text text,
    not_bull integer NOT NULL
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

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_not_bull_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_not_bull_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_not_bull_seq OWNER TO freecodecamp;

--
-- Name: galaxy_not_bull_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_not_bull_seq OWNED BY public.galaxy.not_bull;


--
-- Name: misc_planet_facts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.misc_planet_facts (
    planet_id integer,
    weight_kg integer,
    circumference_km integer,
    avg_temp_celcius numeric(3,1),
    alien_type character varying(40),
    name character varying(30),
    misc_planet_facts_id integer NOT NULL,
    text text,
    not_bull integer NOT NULL,
    "real" boolean
);


ALTER TABLE public.misc_planet_facts OWNER TO freecodecamp;

--
-- Name: misc_planet_facts_fact_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.misc_planet_facts_fact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_planet_facts_fact_id_seq OWNER TO freecodecamp;

--
-- Name: misc_planet_facts_fact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.misc_planet_facts_fact_id_seq OWNED BY public.misc_planet_facts.misc_planet_facts_id;


--
-- Name: misc_planet_facts_not_bull_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.misc_planet_facts_not_bull_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_planet_facts_not_bull_seq OWNER TO freecodecamp;

--
-- Name: misc_planet_facts_not_bull_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.misc_planet_facts_not_bull_seq OWNED BY public.misc_planet_facts.not_bull;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(40),
    planet_id integer,
    distance_lyrs integer,
    color character varying(30),
    name character varying(30),
    text text,
    not_bull integer NOT NULL
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

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_not_bull_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_not_bull_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_not_bull_seq OWNER TO freecodecamp;

--
-- Name: moon_not_bull_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_not_bull_seq OWNED BY public.moon.not_bull;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(40),
    galaxy_id integer,
    distance_lyrs integer,
    color character varying(30),
    name character varying(30),
    text text,
    not_bull integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_not_bull_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_not_bull_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_not_bull_seq OWNER TO freecodecamp;

--
-- Name: planet_not_bull_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_not_bull_seq OWNED BY public.planet.not_bull;


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

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(40),
    galaxy_id integer,
    distance_lyrs integer,
    color character varying(30),
    name character varying(30),
    text text,
    not_bull integer NOT NULL,
    planet_id integer,
    "boolean" boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_not_bull_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_not_bull_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_not_bull_seq OWNER TO freecodecamp;

--
-- Name: star_not_bull_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_not_bull_seq OWNED BY public.star.not_bull;


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

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy not_bull; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN not_bull SET DEFAULT nextval('public.galaxy_not_bull_seq'::regclass);


--
-- Name: misc_planet_facts misc_planet_facts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_planet_facts ALTER COLUMN misc_planet_facts_id SET DEFAULT nextval('public.misc_planet_facts_fact_id_seq'::regclass);


--
-- Name: misc_planet_facts not_bull; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_planet_facts ALTER COLUMN not_bull SET DEFAULT nextval('public.misc_planet_facts_not_bull_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon not_bull; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN not_bull SET DEFAULT nextval('public.moon_not_bull_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet not_bull; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN not_bull SET DEFAULT nextval('public.planet_not_bull_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star not_bull; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN not_bull SET DEFAULT nextval('public.star_not_bull_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 'spiral', 1.00, 1, 1, 'mkw', NULL, 1);
INSERT INTO public.galaxy VALUES ('andromeda', 'spiral', 1.00, 21, 2, 'adr', NULL, 2);
INSERT INTO public.galaxy VALUES ('eliptical', 'oblong', 1.00, 14, 3, 'eli', NULL, 3);
INSERT INTO public.galaxy VALUES ('sombrero', 'spiral bulbous', 1.00, 8, 4, 'som', NULL, 4);
INSERT INTO public.galaxy VALUES ('pinwheel', 'shell', 1.00, 18, 5, 'pin', NULL, 5);
INSERT INTO public.galaxy VALUES ('whirlpool', 'barred', 1.00, 11, 6, 'whl', NULL, 6);


--
-- Data for Name: misc_planet_facts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.misc_planet_facts VALUES (3, 10, 3, 7.0, 'gren', 'earth 313', 1, NULL, 1, NULL);
INSERT INTO public.misc_planet_facts VALUES (1, 6, 2, 5.0, 'oran', 'merc', 2, NULL, 2, NULL);
INSERT INTO public.misc_planet_facts VALUES (9, 1, 1, 0.0, 'disney', 'plu', 3, NULL, 3, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'earth_moon', 3, 4, 'gray', 'EM', NULL, 1);
INSERT INTO public.moon VALUES (2, 'ganymede', 5, 4, 'white', 'G', NULL, 2);
INSERT INTO public.moon VALUES (3, 'europa', 5, 4, 'white', 'EU', NULL, 3);
INSERT INTO public.moon VALUES (4, 'callisto', 5, 4, 'graphite', 'CL', NULL, 4);
INSERT INTO public.moon VALUES (5, 'io', 5, 4, 'orange_eggshell', 'IO', NULL, 5);
INSERT INTO public.moon VALUES (6, 'thebe', 5, 4, 'fog', 'TH', NULL, 6);
INSERT INTO public.moon VALUES (7, 'himalia', 5, 4, 'obscure', 'HM', NULL, 7);
INSERT INTO public.moon VALUES (8, 'titan', 6, 3, 'yellow', 'TN', NULL, 8);
INSERT INTO public.moon VALUES (9, 'dione', 6, 3, 'bone', 'DE', NULL, 9);
INSERT INTO public.moon VALUES (10, 'phobos', 4, 2, 'tan', 'PH', NULL, 10);
INSERT INTO public.moon VALUES (11, 'triton', 8, 7, 'cream', 'TR', NULL, 11);
INSERT INTO public.moon VALUES (12, 'hydra', 9, 8, 'powder', 'HY', NULL, 12);
INSERT INTO public.moon VALUES (13, 'prometheus', 6, 3, 'smoke', 'PS', NULL, 13);
INSERT INTO public.moon VALUES (14, 'pandora', 6, 3, 'pebble', 'PA', NULL, 14);
INSERT INTO public.moon VALUES (15, 'pan', 6, 3, 'cloud', 'P', NULL, 15);
INSERT INTO public.moon VALUES (16, 'oberon', 7, 6, 'copper', 'OB', NULL, 16);
INSERT INTO public.moon VALUES (17, 'ariel', 7, 6, 'tan', 'AR', NULL, 17);
INSERT INTO public.moon VALUES (18, 'cupid', 7, 6, 'pearl', 'CP', NULL, 18);
INSERT INTO public.moon VALUES (19, 'kalyke', 5, 4, 'n/a', 'KY', NULL, 19);
INSERT INTO public.moon VALUES (20, 'bestla', 6, 3, 'n/a', 'BS', NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'earth', 1, 3, 'blue', 'earf', NULL, 1, 1);
INSERT INTO public.planet VALUES (1, 'mercury', 1, 3, 'orange', 'merc', NULL, 2, 1);
INSERT INTO public.planet VALUES (4, 'mars', 1, 3, 'red', 'mrs', NULL, 3, 1);
INSERT INTO public.planet VALUES (6, 'saturn', 1, 3, 'mellon', 'sega', NULL, 4, 1);
INSERT INTO public.planet VALUES (2, 'venus', 1, 3, 'cerulean', 'gilette', NULL, 5, 1);
INSERT INTO public.planet VALUES (8, 'neptune', 1, 3, 'ocean', 'nep', NULL, 6, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, 3, 'marble', 'stupider', NULL, 7, 1);
INSERT INTO public.planet VALUES (7, 'uranus', 1, 3, 'not venus', 'ass', NULL, 8, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 1, 3, 'white', 'mickey', NULL, 9, 1);
INSERT INTO public.planet VALUES (10, 'aya', 2, 4, 'blue', 'm1', NULL, 10, 3);
INSERT INTO public.planet VALUES (11, 'elaaden', 2, 4, 'brown', 'm2', NULL, 11, 3);
INSERT INTO public.planet VALUES (12, 'eos', 2, 4, 'golden', 'm3', NULL, 12, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'betelgeuse', 1, 2, 'orange', 'Bel', NULL, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'altair', 1, 2, 'white', 'Alt', NULL, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'bellatrix', 1, 2, 'n/a', 'bel', NULL, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'antares', 1, 3, 'fiery', 'ant', NULL, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'arcturus', 1, 2, 'red', 'arc', NULL, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'achernar', 1, 3, 'blue', 'ach', NULL, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_not_bull_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_not_bull_seq', 6, true);


--
-- Name: misc_planet_facts_fact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.misc_planet_facts_fact_id_seq', 1, false);


--
-- Name: misc_planet_facts_not_bull_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.misc_planet_facts_not_bull_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_not_bull_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_not_bull_seq', 20, true);


--
-- Name: planet_not_bull_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_not_bull_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_not_bull_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_not_bull_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_text_key UNIQUE (text);


--
-- Name: misc_planet_facts misc_planet_facts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_planet_facts
    ADD CONSTRAINT misc_planet_facts_pkey PRIMARY KEY (misc_planet_facts_id);


--
-- Name: misc_planet_facts misc_planet_facts_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc_planet_facts
    ADD CONSTRAINT misc_planet_facts_text_key UNIQUE (text);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_text_key UNIQUE (text);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_text_key UNIQUE (text);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_text_key UNIQUE (text);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

