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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    text1 text,
    int1 integer DEFAULT 0 NOT NULL,
    int2 integer,
    numeric1 numeric,
    boolean1 boolean DEFAULT false NOT NULL,
    boolean2 boolean DEFAULT false NOT NULL
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
    name character varying(50) NOT NULL,
    int1 integer DEFAULT 0 NOT NULL,
    int2 integer,
    numeric1 numeric,
    boolean1 boolean DEFAULT false NOT NULL,
    boolean2 boolean DEFAULT false NOT NULL,
    planet_id integer DEFAULT 1 NOT NULL
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
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer DEFAULT 0 NOT NULL,
    int2 integer,
    numeric1 numeric,
    boolean1 boolean DEFAULT false NOT NULL,
    boolean2 boolean DEFAULT false NOT NULL
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_other_id_seq OWNER TO freecodecamp;

--
-- Name: other_other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    int1 integer DEFAULT 0 NOT NULL,
    int2 integer,
    numeric1 numeric,
    boolean1 boolean DEFAULT false NOT NULL,
    boolean2 boolean DEFAULT false NOT NULL,
    star_id integer DEFAULT 1 NOT NULL
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
    name character varying(50) NOT NULL,
    int1 integer DEFAULT 0 NOT NULL,
    int2 integer,
    numeric1 numeric,
    boolean1 boolean DEFAULT false NOT NULL,
    boolean2 boolean DEFAULT false NOT NULL,
    galaxy_id integer DEFAULT 1 NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 0, NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, 0, NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', NULL, 0, NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (4, 'Cigar', NULL, 0, NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, 0, NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, 0, NULL, NULL, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (5, 'Europa', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (6, 'Io', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (8, 'Titan', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (9, 'Rhea', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (11, 'Dione', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (12, 'Hyperion', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (13, 'Enceladus', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (14, 'Mimas', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (15, 'Phoebe', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (16, 'Tethys', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (17, 'Oberon', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (18, 'Titania', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (19, 'Ariel', 0, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (20, 'Umbriel', 0, NULL, NULL, false, false, 1);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'oh', 0, NULL, NULL, false, false);
INSERT INTO public.other VALUES (2, 'my', 0, NULL, NULL, false, false);
INSERT INTO public.other VALUES (3, 'lorde', 0, NULL, NULL, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 0, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 0, NULL, NULL, false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0, NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 0, NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 0, NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 0, NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (6, 'Antares', 0, NULL, NULL, false, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: other_other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_other_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: other other_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_name_key UNIQUE (name);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


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

