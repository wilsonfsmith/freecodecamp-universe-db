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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type character varying(50) NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    description text,
    galaxy_power_level integer NOT NULL,
    tasty_looking_true_or_false boolean NOT NULL,
    galaxy_rizz_level integer NOT NULL
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    surface_composition text,
    moon_power_level integer NOT NULL,
    tasty_looking_true_false boolean NOT NULL,
    moon_rizz_level integer NOT NULL
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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_type character varying(50) NOT NULL,
    distance_from_star numeric NOT NULL,
    description text,
    planet_power_level integer NOT NULL,
    tasty_looking_true_false boolean NOT NULL,
    planet_rizz_level integer NOT NULL
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
    name character varying(255) NOT NULL,
    star_type character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    in_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    star_power_level integer NOT NULL,
    distance_from_earth numeric,
    description text,
    tasty_looking_true_false boolean NOT NULL,
    star_rizz_level integer NOT NULL
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
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, true, 'Our home galaxy containing the Solar System and billions of stars.', 9001, false, 10);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, false, 'The nearest major galaxy to the Milky Way, predicted to collide with it in the future.', 8000, true, 8);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Spiral', 3000000, false, 'A smaller galaxy near the Andromeda Galaxy, part of the Local Group.', 7500, true, 7);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral', 23000000, false, 'Known for its stunning spiral structure, located in the Canes Venatici constellation.', 8500, false, 6);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Lenticular', 29000000, false, 'A bright galaxy with a massive black hole at its center, resembling a sombrero.', 9500, true, 9);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular', 163000, false, 'A satellite galaxy of the Milky Way, home to the Tarantula Nebula.', 5000, false, 5);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral', 'A galaxy with a flat, rotating disk of stars, gas, and dust, often with a central bulge and spiral arms.');
INSERT INTO public.galaxy_type VALUES (2, 'Elliptical', 'A galaxy with an ellipsoidal shape, containing older stars and little gas or dust.');
INSERT INTO public.galaxy_type VALUES (3, 'Irregular', 'A galaxy with no specific shape, often chaotic in appearance and lacking structure.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury Moon 1', 1, false, 1000, 'Dusty and small with craters', 100, false, 1);
INSERT INTO public.moon VALUES (2, 'Mercury Moon 2', 1, true, 1500, 'Metallic with reflective surfaces', 200, false, 2);
INSERT INTO public.moon VALUES (3, 'Venus Moon 1', 2, true, 2000, 'Volcanic and covered in ash', 300, false, 3);
INSERT INTO public.moon VALUES (4, 'Venus Moon 2', 2, true, 2200, 'Rocky and mountainous', 400, false, 4);
INSERT INTO public.moon VALUES (5, 'Luna', 3, true, 4500, 'Rocky with large craters', 5000, true, 10);
INSERT INTO public.moon VALUES (6, 'Phobos', 4, false, 4500, 'Dark and dusty with irregular shape', 600, false, 6);
INSERT INTO public.moon VALUES (7, 'Deimos', 4, false, 4600, 'Small and irregularly shaped', 500, false, 5);
INSERT INTO public.moon VALUES (8, 'Centauri Moon 1', 5, true, 3000, 'Icy and reflective', 700, false, 4);
INSERT INTO public.moon VALUES (9, 'Centauri Moon 2', 5, false, 3500, 'Covered with frozen lakes', 800, false, 3);
INSERT INTO public.moon VALUES (10, 'Sirius A-1 Moon 1', 6, true, 10000, 'Made of gas and ice crystals', 1500, false, 8);
INSERT INTO public.moon VALUES (11, 'Betelgeuse I Moon 1', 7, false, 6000, 'Hot with volcanic activity', 900, false, 5);
INSERT INTO public.moon VALUES (12, 'Betelgeuse I Moon 2', 7, false, 7000, 'Thick atmosphere with clouds', 1000, false, 6);
INSERT INTO public.moon VALUES (13, 'Betelgeuse II Moon 1', 8, true, 2000, 'Solid rock and dry surface', 400, false, 3);
INSERT INTO public.moon VALUES (14, 'Proxima Moon 1', 9, true, 5000, 'Rocky surface with deep craters', 1200, false, 7);
INSERT INTO public.moon VALUES (15, 'Proxima Moon 2', 10, false, 4000, 'Icy with dark streaks', 1100, false, 6);
INSERT INTO public.moon VALUES (16, 'Vega-1 Moon 1', 11, true, 6000, 'Bright and icy with rings', 1800, false, 9);
INSERT INTO public.moon VALUES (17, 'Vega-1 Moon 2', 11, true, 5800, 'Covered in methane ice', 1600, false, 8);
INSERT INTO public.moon VALUES (18, 'Vega-2 Moon 1', 12, false, 1000, 'Flat and rocky with smooth surface', 300, false, 2);
INSERT INTO public.moon VALUES (19, 'Vega-2 Moon 2', 12, true, 2000, 'Solid ice with reflective surface', 500, false, 4);
INSERT INTO public.moon VALUES (20, 'Europa', 3, true, 4500, 'Icy surface with a possible subsurface ocean', 5500, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, true, 'Terrestrial', 0.39, 'The smallest planet in the Solar System.', 2000, false, 3);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, true, 'Terrestrial', 0.72, 'A planet with a thick, toxic atmosphere.', 3000, false, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, true, 'Terrestrial', 1.0, 'Our home planet.', 5000, true, 10);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, true, 'Terrestrial', 1.52, 'The Red Planet with potential signs of past water.', 2500, false, 6);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 2, false, true, 'Exoplanet', 1.13, 'An exoplanet near the Alpha Centauri system.', 4000, false, 4);
INSERT INTO public.planet VALUES (6, 'Sirius A-1', 2, false, false, 'Gas Giant', 5.0, 'A gas giant orbiting Sirius A.', 7000, false, 7);
INSERT INTO public.planet VALUES (7, 'Betelgeuse I', 3, false, false, 'Gas Giant', 3.2, 'A large gas giant orbiting Betelgeuse.', 8000, false, 2);
INSERT INTO public.planet VALUES (8, 'Betelgeuse II', 3, false, true, 'Terrestrial', 0.5, 'A rocky planet close to Betelgeuse.', 1000, false, 3);
INSERT INTO public.planet VALUES (9, 'Proxima b', 1, false, true, 'Exoplanet', 0.05, 'An Earth-like exoplanet in the habitable zone.', 4500, true, 8);
INSERT INTO public.planet VALUES (10, 'Proxima c', 1, false, false, 'Gas Giant', 1.5, 'A cold super-Earth orbiting Proxima Centauri.', 3000, false, 5);
INSERT INTO public.planet VALUES (11, 'Vega-1', 4, false, false, 'Gas Giant', 10.0, 'A massive gas giant orbiting Vega.', 6000, false, 4);
INSERT INTO public.planet VALUES (12, 'Vega-2', 4, false, true, 'Terrestrial', 0.9, 'A small, rocky planet near Vega.', 1500, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 1, true, 4600, 9000, 0.0000158, 'The central star of the Solar System.', false, 8);
INSERT INTO public.star VALUES (2, 'Sirius', 'Main Sequence', 2, true, 242, 12000, 8.6, 'Bright as heck', false, 10);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', 3, false, 10000, 15000, 643, 'A massive star near the end of its life cycle.', true, 5);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Red Dwarf', 1, true, 4500, 5000, 4.24, 'The closest star to the Sun.', false, 7);
INSERT INTO public.star VALUES (5, 'Vega', 'White Main Sequence', 4, true, 455, 8000, 25.04, 'One of the brightest stars in the night sky.', false, 9);
INSERT INTO public.star VALUES (6, 'Rigel', 'Blue Supergiant', 2, true, 860, 17000, 863, 'A luminous star in the Orion constellation.', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


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
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: galaxy_type galaxy_type_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_type_name_key UNIQUE (name);


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

