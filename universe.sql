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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    radius_in_km integer,
    age_billion_year integer,
    light_away_earth numeric(4,4),
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    radius_in_km integer,
    age_billion_years integer,
    light_away_earth numeric(4,4),
    description text,
    is_life boolean,
    is_spherical boolean,
    no_of_blackholes integer,
    type_galaxy character varying(50)
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    radius_in_km integer,
    age_billion_years integer,
    light_away_earth numeric(4,4),
    description text,
    is_life boolean
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
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    radius_in_km integer,
    age_billion_years integer,
    light_away_earth numeric(4,4),
    description text,
    is_life boolean
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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    radius_in_km integer,
    age_billion_years integer,
    light_away_earth numeric(4,4),
    description text,
    is_life boolean
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Big Sur', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.blackhole VALUES (2, 'Bucket', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.blackhole VALUES (3, 'Nape ball', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.blackhole VALUES (4, 'Rat', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.blackhole VALUES (5, 'Femona', NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', 19000000, 5, NULL, 'our own galaxy', true, false, 2, 'known');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 14300000, 7, NULL, 'near to our galaxy', false, true, 3, 'unknown');
INSERT INTO public.galaxy VALUES (3, 'kilasam', 39000000, 5, NULL, 'kailsam lokam', true, false, 2, 'unknown');
INSERT INTO public.galaxy VALUES (4, 'vaikunta', 15300000, 10, NULL, 'vaikuntam lokam', false, true, 3, 'unknown');
INSERT INTO public.galaxy VALUES (5, 'satyalokam', 3000000, 5, NULL, 'satya lokam', true, false, 2, 'unknown');
INSERT INTO public.galaxy VALUES (6, 'brahmalokam', 1300000, 10, NULL, 'brahma lokam', false, true, 3, 'unknown');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (2, 'Titan', 6, NULL, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (3, 'Europa', 6, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (4, 'Lo', 6, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (6, 'Miranda', 7, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (7, 'Hyperion', 11, NULL, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (8, 'Kela', 12, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (9, 'srya', 10, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (10, 'madO', 8, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (11, 'Ariel', 7, NULL, NULL, NULL, NULL, true);
INSERT INTO public.moon VALUES (12, 'Ching', 4, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (13, 'Chang', 4, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (14, 'Yin', 6, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (15, 'Yang', 6, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (16, 'xoz', 9, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (17, 'Bees', 10, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (18, 'Fuck', 10, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (19, 'Ducky', 11, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (20, 'Muck', 11, NULL, NULL, NULL, NULL, false);
INSERT INTO public.moon VALUES (21, 'Pose', 12, NULL, NULL, NULL, NULL, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL, NULL, NULL, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, NULL, NULL, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (8, 'Pandora', 1, NULL, NULL, NULL, NULL, true);
INSERT INTO public.planet VALUES (9, 'Xintra', 2, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (10, 'Cintra', 2, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (11, 'djubit-02', 3, NULL, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (12, 'xo-01', 4, NULL, NULL, NULL, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 2000000, 1, NULL, 'our own sun', true);
INSERT INTO public.star VALUES (2, 'Sirus', 1, 150000000, 2, NULL, 'nearest star', false);
INSERT INTO public.star VALUES (3, 'Vega', 1, 23000000, 4, NULL, 'close star', false);
INSERT INTO public.star VALUES (4, 'Rigel', 2, 1500000, 1, NULL, 'yellow star', false);
INSERT INTO public.star VALUES (5, 'Avis', 2, 12309879, 32, NULL, 'Dying star', false);
INSERT INTO public.star VALUES (6, 'Reddis', 3, 542398023, 12, NULL, 'Red star', false);
INSERT INTO public.star VALUES (7, 'Bodi', 3, 90909090, 10, NULL, 'Big star', false);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: blackhole fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

