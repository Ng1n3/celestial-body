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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    tail_length integer NOT NULL,
    orbit_period integer NOT NULL,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(50) NOT NULL,
    distance integer NOT NULL,
    mass numeric(20,2) NOT NULL,
    description text
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
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    diameter integer NOT NULL,
    distance_from_planet integer NOT NULL,
    description text
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
    has_rings boolean NOT NULL,
    is_habitable boolean NOT NULL,
    mass numeric(20,2) NOT NULL,
    description text
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
    galaxy_id integer NOT NULL,
    type character varying(50) NOT NULL,
    mass numeric(20,2) NOT NULL,
    luminosity boolean NOT NULL,
    description text
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley comet', 24, 75, 'The most famous periodic comet');
INSERT INTO public.comet VALUES (2, 'Comet Hale-bopp', 60, 2533, 'A comet visible to the naked eye for 18 months');
INSERT INTO public.comet VALUES (3, 'comet neowise', 5, 6800, 'A comet visible in July 2020');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Sombrero', 'Lenticular', 29000000, 900.00, 'Notable for its bright nucleus');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Irregular', 163000, 100.00, 'A satellite galaxy of the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Spiral', 0, 1500.00, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'Spiral', 2537000, 1800.00, 'Closest spiral galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral', 3000000, 500.00, 'Another memeber of the Local Group');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 23000000, 800.00, 'Known for its spiral structure');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, 384400, 'Earth only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, 9377, 'A moon of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, 23460, 'Another moon of Mars');
INSERT INTO public.moon VALUES (4, 'Europa', 3, 3121, 670900, 'A moon of Jupiter with a possible subsurface ocean');
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, 5268, 1070400, 'The largest moon in the solar system');
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 4820, 1882700, 'A heavily cratered moon of Jupiter');
INSERT INTO public.moon VALUES (7, 'Titan', 4, 5150, 1221870, 'Saturn largest moon');
INSERT INTO public.moon VALUES (8, 'Enceladus', 4, 504, 238041, 'A moon of saturn with geysers');
INSERT INTO public.moon VALUES (9, 'Iapetus', 4, 1469, 3560820, 'A moon of Saturn with a distinctive two-tone coloration');
INSERT INTO public.moon VALUES (10, 'Rhea', 4, 1528, 527040, 'Another moon of Saturn');
INSERT INTO public.moon VALUES (11, 'Triton', 5, 2706, 354800, 'The largest moon of Neptune');
INSERT INTO public.moon VALUES (12, 'Proxima b Moon', 5, 0, 0, 'A hypothetical moon of proxima b');
INSERT INTO public.moon VALUES (13, 'Alpha Centauri bb Moon', 6, 0, 0, 'A hypothetical moon of Alpha centauri Bb');
INSERT INTO public.moon VALUES (14, 'Betelgeuse b Moon', 7, 0, 0, 'A hypothetical moon of Betelgeuse b');
INSERT INTO public.moon VALUES (15, 'Sirius b Moon', 8, 0, 0, 'A hypothetical moon of Sirius b');
INSERT INTO public.moon VALUES (16, 'Vega b Moon', 9, 0, 0, 'A hypothetical moon of Vega b');
INSERT INTO public.moon VALUES (17, 'Vega c Moon', 10, 0, 0, 'A hypothetical moon of Vega c');
INSERT INTO public.moon VALUES (18, 'Sirius c Moon', 11, 0, 0, 'A hypothetical moon of Sirius c');
INSERT INTO public.moon VALUES (19, 'Jupiter II Moon', 12, 0, 0, 'A hypothetical moon of Jupiter II');
INSERT INTO public.moon VALUES (20, 'Europa II', 3, 3121, 670900, 'A hypothetical moon of Jupiter');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, false, true, 1.00, 'The only planet known to support life');
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, false, 0.11, 'known as the red planet');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, true, false, 317.80, 'The largest planet in the solar system');
INSERT INTO public.planet VALUES (4, 'Saturn', 1, true, false, 95.20, 'famous for its ring system');
INSERT INTO public.planet VALUES (5, 'Proxima b', 2, false, true, 1.20, 'A potentially habitable exoplanet');
INSERT INTO public.planet VALUES (6, 'Alpha centauri Bb', 2, false, false, 1.10, 'An exoplanet in the Alpha Centauri system');
INSERT INTO public.planet VALUES (7, 'Betelgeuse b', 3, false, false, 3.50, 'A hypothtical planet oribiting Betelgeuse');
INSERT INTO public.planet VALUES (8, 'Sirius b', 4, false, false, 1.20, 'A white dwarf star with a planetary system');
INSERT INTO public.planet VALUES (9, 'Vega b', 6, false, false, 2.50, 'A planet orbiting the star Vega');
INSERT INTO public.planet VALUES (10, 'vega c', 6, false, false, 3.00, 'Another planet in the Vega System');
INSERT INTO public.planet VALUES (11, 'Sirius c', 4, false, false, 1.00, 'Another planet in the Sirius system');
INSERT INTO public.planet VALUES (12, 'Jupiter II', 1, true, false, 317.80, 'A hypothetical planet in the solar system');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 3, 'G-Type', 1.00, true, 'The star at the center of our solar system');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4, 'M-Type', 0.12, true, 'Closest known star to the Sun');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 4, 'M-Type', 20.00, true, 'A red supergiant in Orion');
INSERT INTO public.star VALUES (4, 'Sirius', 3, 'A-Type', 2.10, true, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (5, 'Rigel', 4, 'B-Type', 21.00, true, 'A blue supergiant in Orion');
INSERT INTO public.star VALUES (6, 'Vega', 3, 'A-Type', 2.30, true, 'One of the most luminous stars in the night sky');


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

