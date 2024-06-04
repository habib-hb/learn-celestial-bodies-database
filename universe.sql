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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    star_id integer,
    radius integer,
    size integer,
    distance numeric,
    description text,
    name character varying(20) NOT NULL
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
    name character varying(20) NOT NULL,
    has_life boolean DEFAULT false,
    size integer DEFAULT 3,
    distance numeric
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
    star_id integer,
    radius integer,
    size integer,
    distance numeric,
    description text,
    name character varying(20) NOT NULL,
    planet_id integer DEFAULT 1
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
    radius integer,
    size integer,
    distance numeric,
    description text,
    name character varying(20) NOT NULL
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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean DEFAULT false,
    distance numeric
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

INSERT INTO public.blackhole VALUES (1, 1, 10000, 20000, 0.5, 'First blackhole in the system', 'BlackholeA');
INSERT INTO public.blackhole VALUES (2, 1, 11000, 21000, 1.0, 'Second blackhole in the system', 'BlackholeB');
INSERT INTO public.blackhole VALUES (3, 1, 12000, 22000, 1.5, 'Third blackhole in the system', 'BlackholeC');
INSERT INTO public.blackhole VALUES (4, 1, 13000, 23000, 2.0, 'Fourth blackhole in the system', 'BlackholeD');
INSERT INTO public.blackhole VALUES (5, 1, 14000, 24000, 2.5, 'Fifth blackhole in the system', 'BlackholeE');
INSERT INTO public.blackhole VALUES (6, 1, 15000, 25000, 3.0, 'Sixth blackhole in the system', 'BlackholeF');
INSERT INTO public.blackhole VALUES (7, 1, 16000, 26000, 3.5, 'Seventh blackhole in the system', 'BlackholeG');
INSERT INTO public.blackhole VALUES (8, 1, 17000, 27000, 4.0, 'Eighth blackhole in the system', 'BlackholeH');
INSERT INTO public.blackhole VALUES (9, 1, 18000, 28000, 4.5, 'Ninth blackhole in the system', 'BlackholeI');
INSERT INTO public.blackhole VALUES (10, 1, 19000, 29000, 5.0, 'Tenth blackhole in the system', 'BlackholeJ');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ANDROMEDA', false, 3, NULL);
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA2', false, 3, NULL);
INSERT INTO public.galaxy VALUES (3, 'ANDROMEDA32', false, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'milkyway', false, 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'milkyway2', false, 3, NULL);
INSERT INTO public.galaxy VALUES (6, 'milkyway3', false, 3, NULL);
INSERT INTO public.galaxy VALUES (7, 'milkyway4', false, 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 1000, 2000, 0.1, 'First moon in the system', 'MoonA', 1);
INSERT INTO public.moon VALUES (2, 1, 1100, 2100, 0.2, 'Second moon in the system', 'MoonB', 1);
INSERT INTO public.moon VALUES (3, 1, 1200, 2200, 0.3, 'Third moon in the system', 'MoonC', 1);
INSERT INTO public.moon VALUES (4, 1, 1300, 2300, 0.4, 'Fourth moon in the system', 'MoonD', 1);
INSERT INTO public.moon VALUES (5, 1, 1400, 2400, 0.5, 'Fifth moon in the system', 'MoonE', 1);
INSERT INTO public.moon VALUES (6, 1, 1500, 2500, 0.6, 'Sixth moon in the system', 'MoonF', 1);
INSERT INTO public.moon VALUES (7, 1, 1600, 2600, 0.7, 'Seventh moon in the system', 'MoonG', 1);
INSERT INTO public.moon VALUES (8, 1, 1700, 2700, 0.8, 'Eighth moon in the system', 'MoonH', 1);
INSERT INTO public.moon VALUES (9, 1, 1800, 2800, 0.9, 'Ninth moon in the system', 'MoonI', 1);
INSERT INTO public.moon VALUES (10, 1, 1900, 2900, 1.0, 'Tenth moon in the system', 'MoonJ', 1);
INSERT INTO public.moon VALUES (11, 1, 2000, 3000, 1.1, 'Eleventh moon in the system', 'MoonK', 1);
INSERT INTO public.moon VALUES (12, 1, 2100, 3100, 1.2, 'Twelfth moon in the system', 'MoonL', 1);
INSERT INTO public.moon VALUES (13, 1, 2200, 3200, 1.3, 'Thirteenth moon in the system', 'MoonM', 1);
INSERT INTO public.moon VALUES (14, 1, 2300, 3300, 1.4, 'Fourteenth moon in the system', 'MoonN', 1);
INSERT INTO public.moon VALUES (15, 1, 2400, 3400, 1.5, 'Fifteenth moon in the system', 'MoonO', 1);
INSERT INTO public.moon VALUES (16, 1, 2500, 3500, 1.6, 'Sixteenth moon in the system', 'MoonP', 1);
INSERT INTO public.moon VALUES (17, 1, 2600, 3600, 1.7, 'Seventeenth moon in the system', 'MoonQ', 1);
INSERT INTO public.moon VALUES (18, 1, 2700, 3700, 1.8, 'Eighteenth moon in the system', 'MoonR', 1);
INSERT INTO public.moon VALUES (19, 1, 2800, 3800, 1.9, 'Nineteenth moon in the system', 'MoonS', 1);
INSERT INTO public.moon VALUES (20, 1, 2900, 3900, 2.0, 'Twentieth moon in the system', 'MoonT', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 10000, 20000, 0.5, 'First planet in the system', 'PlanetA');
INSERT INTO public.planet VALUES (2, 1, 12000, 22000, 1.0, 'Second planet in the system', 'PlanetB');
INSERT INTO public.planet VALUES (3, 1, 11000, 21000, 1.5, 'Third planet in the system', 'PlanetC');
INSERT INTO public.planet VALUES (4, 1, 13000, 23000, 2.0, 'Fourth planet in the system', 'PlanetD');
INSERT INTO public.planet VALUES (5, 1, 14000, 24000, 2.5, 'Fifth planet in the system', 'PlanetE');
INSERT INTO public.planet VALUES (6, 1, 15000, 25000, 3.0, 'Sixth planet in the system', 'PlanetF');
INSERT INTO public.planet VALUES (7, 1, 16000, 26000, 3.5, 'Seventh planet in the system', 'PlanetG');
INSERT INTO public.planet VALUES (8, 1, 17000, 27000, 4.0, 'Eighth planet in the system', 'PlanetH');
INSERT INTO public.planet VALUES (9, 1, 18000, 28000, 4.5, 'Ninth planet in the system', 'PlanetI');
INSERT INTO public.planet VALUES (10, 1, 19000, 29000, 5.0, 'Tenth planet in the system', 'PlanetJ');
INSERT INTO public.planet VALUES (11, 1, 20000, 30000, 5.5, 'Eleventh planet in the system', 'PlanetK');
INSERT INTO public.planet VALUES (12, 1, 21000, 31000, 6.0, 'Twelfth planet in the system', 'PlanetL');
INSERT INTO public.planet VALUES (13, 1, 22000, 32000, 6.5, 'Thirteenth planet in the system', 'PlanetM');
INSERT INTO public.planet VALUES (14, 1, 23000, 33000, 7.0, 'Fourteenth planet in the system', 'PlanetN');
INSERT INTO public.planet VALUES (15, 1, 24000, 34000, 7.5, 'Fifteenth planet in the system', 'PlanetO');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'SUN', false, NULL);
INSERT INTO public.star VALUES (2, 1, 'SUN2', false, NULL);
INSERT INTO public.star VALUES (3, 1, 'SUN32', false, NULL);
INSERT INTO public.star VALUES (4, 1, 'SUN342', false, NULL);
INSERT INTO public.star VALUES (5, 1, 'SUN3342', false, NULL);
INSERT INTO public.star VALUES (7, 1, 'SUN334442', false, NULL);
INSERT INTO public.star VALUES (8, 1, 'SUN334444352', false, NULL);
INSERT INTO public.star VALUES (9, 1, 'SUN3343252', false, NULL);
INSERT INTO public.star VALUES (10, 1, 'SUN366252', false, NULL);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: blackhole blackhole_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

