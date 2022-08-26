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
-- Name: constelations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelations (
    constelations_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_in_it character varying(30)
);


ALTER TABLE public.constelations OWNER TO freecodecamp;

--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelations_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelations_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelations_constelation_id_seq OWNED BY public.constelations.constelations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    galaxy_types character varying(30),
    description character varying(200)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    distance_from_his_planet integer,
    size_in_km numeric(7,2),
    name character varying(30) NOT NULL
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    size_in_km numeric(7,2),
    has_life boolean
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

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    description text,
    is_bigger_than_the_sun boolean
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

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelations constelations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations ALTER COLUMN constelations_id SET DEFAULT nextval('public.constelations_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelations VALUES (1, 'Aries', 'Hamal');
INSERT INTO public.constelations VALUES (2, 'Taurus', 'Aldebaran');
INSERT INTO public.constelations VALUES (3, 'Gemini', 'Polux');
INSERT INTO public.constelations VALUES (4, 'Cancer', 'Assellus Australis');
INSERT INTO public.constelations VALUES (5, 'Leo', 'Regulus');
INSERT INTO public.constelations VALUES (6, 'Virgo', 'Spica');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 'Espiral', 'It is the galaxy in which we reside');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 28000, 'Disputed', 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf', 70000, 'Eliptic', 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 163000, 'Espiral', 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Bootes I', 197000, 'Spheroidal', 'Satellite of Milky Way');
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 2500000, 'Espiral', 'One of the bigger galaxys of our local group');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 384400, 3474.80, 'Moon');
INSERT INTO public.moon VALUES (2, 4, 9376, 22.53, 'Fobos');
INSERT INTO public.moon VALUES (3, 4, 23460, 12.40, 'Deimos');
INSERT INTO public.moon VALUES (4, 5, 128980, 16.40, 'Adastrea');
INSERT INTO public.moon VALUES (5, 5, 23547000, 3.00, 'Aitne');
INSERT INTO public.moon VALUES (6, 5, 421600, 3643.20, 'Io');
INSERT INTO public.moon VALUES (7, 5, 671100, 3122.00, 'Europa');
INSERT INTO public.moon VALUES (8, 5, 1070400, 5262.00, 'Ganimedes');
INSERT INTO public.moon VALUES (9, 5, 1882700, 4821.00, 'Calisto');
INSERT INTO public.moon VALUES (10, 5, 11460000, 170.00, 'Himalia');
INSERT INTO public.moon VALUES (11, 5, 128000, 43.00, 'Metis');
INSERT INTO public.moon VALUES (12, 5, 181365, 167.00, 'Amaltea');
INSERT INTO public.moon VALUES (13, 5, 221889, 99.00, 'Tebe');
INSERT INTO public.moon VALUES (14, 6, 1221870, 5150.00, 'Titan');
INSERT INTO public.moon VALUES (15, 6, 185520, 397.20, 'Mimas');
INSERT INTO public.moon VALUES (16, 7, 129000, 470.00, 'Miranda');
INSERT INTO public.moon VALUES (17, 7, 1991000, 1160.00, 'Ariel');
INSERT INTO public.moon VALUES (18, 7, 266000, 1170.00, 'Umbriel');
INSERT INTO public.moon VALUES (19, 7, 436000, 1580.00, 'Titania');
INSERT INTO public.moon VALUES (20, 7, 58400, 1520.00, 'Oberon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 2439.70, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 6051.80, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 6378.10, true);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 3389.50, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 71492.00, false);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 58232.00, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 25362.00, false);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 24622.00, false);
INSERT INTO public.planet VALUES (9, 6, 'Alfa Centauri Bb', NULL, false);
INSERT INTO public.planet VALUES (10, 6, 'Proxima Centauri b', NULL, false);
INSERT INTO public.planet VALUES (11, 7, 'Draugr', NULL, false);
INSERT INTO public.planet VALUES (12, 7, 'Poltergeist', NULL, false);
INSERT INTO public.planet VALUES (13, 7, 'Phobetor', NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'The star of Solar System', false);
INSERT INTO public.star VALUES (2, 2, 'Sirius', 'The brightest star in the sky', true);
INSERT INTO public.star VALUES (3, 5, 'Artucrus', 'The third brightest star in the sky', true);
INSERT INTO public.star VALUES (4, 2, 'VY Canis Majoris', 'It is one of the largest know stars', true);
INSERT INTO public.star VALUES (5, 1, 'Canopus', 'The second brightest star in the sky', true);
INSERT INTO public.star VALUES (6, 1, 'Proxima Centauri', '', true);
INSERT INTO public.star VALUES (7, 1, 'Lich', 'First planet system find', NULL);


--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelations_constelation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constelations constelations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_name_key UNIQUE (name);


--
-- Name: constelations constelations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_pkey PRIMARY KEY (constelations_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- PostgreSQL database dump complete
--

