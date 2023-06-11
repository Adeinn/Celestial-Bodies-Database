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
    name character varying(30),
    description text,
    galaxy_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth integer,
    galaxy_size numeric(10,2)
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
-- Name: la_cinquieme; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.la_cinquieme (
    name character varying(30),
    description text,
    la_cinquieme_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth integer
);


ALTER TABLE public.la_cinquieme OWNER TO freecodecamp;

--
-- Name: la_cinquieme_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.la_cinquieme_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.la_cinquieme_planet_id_seq OWNER TO freecodecamp;

--
-- Name: la_cinquieme_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.la_cinquieme_planet_id_seq OWNED BY public.la_cinquieme.la_cinquieme_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    description text,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    date_creation date
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
    name character varying(30),
    description text,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth integer,
    star_id integer
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
    name character varying(30),
    description text,
    star_id integer NOT NULL,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_moon_id_seq OWNER TO freecodecamp;

--
-- Name: star_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_moon_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: la_cinquieme la_cinquieme_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.la_cinquieme ALTER COLUMN la_cinquieme_id SET DEFAULT nextval('public.la_cinquieme_planet_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_moon_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('la voie lactée', 'where we live', 1, true, 0, NULL);
INSERT INTO public.galaxy VALUES ('andromede', 'closest galaxy', 2, false, 254322, NULL);
INSERT INTO public.galaxy VALUES ('roue de chario', 'Elle tire son nom de sa ressemblance à une roue de charrette.', 3, false, 18999, NULL);
INSERT INTO public.galaxy VALUES ('Galaxie-comète', 'Nommée d''après sa forme rappelant une comète.', 4, false, 8753, NULL);
INSERT INTO public.galaxy VALUES ('cigare', 'Elle ressemble à un cigare.', 5, false, 535789, NULL);
INSERT INTO public.galaxy VALUES ('Objet de Hoag', 'Nommée d''après son découvreur Art Hoag.', 6, false, 24680, NULL);
INSERT INTO public.galaxy VALUES ('Grand Nuage de Magellan', 'Nommée d''après Ferdinand de Magellan', 7, false, 987532, NULL);


--
-- Data for Name: la_cinquieme; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.la_cinquieme VALUES ('il le faut', NULL, 5, true, NULL);
INSERT INTO public.la_cinquieme VALUES ('peu importe', NULL, 6, false, NULL);
INSERT INTO public.la_cinquieme VALUES ('mais il le faut', NULL, 9, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('la lune', 'le satellite de la terre', 4, 3, NULL);
INSERT INTO public.moon VALUES ('Phobos', 'Satellite de Mars, proche de sa surface', 5, 3, NULL);
INSERT INTO public.moon VALUES ('Deimos', 'Satellite de Mars, plus éloigné de sa surface', 6, 10, NULL);
INSERT INTO public.moon VALUES ('Europe', 'Satellite de Jupiter, lisse et gelé', 7, 2, NULL);
INSERT INTO public.moon VALUES ('Io', 'Satellite de Jupiter, volcaniquement actif', 8, 11, NULL);
INSERT INTO public.moon VALUES ('Ganymède', 'Satellite de Jupiter, le plus grand du système solaire', 9, 6, NULL);
INSERT INTO public.moon VALUES ('Callisto', 'Satellite de Jupiter, très ancien et cratérisé', 10, 8, NULL);
INSERT INTO public.moon VALUES ('Titan', 'Satellite de Saturne, avec une atmosphère épaisse', 11, 5, NULL);
INSERT INTO public.moon VALUES ('Encelade', 'Satellite de Saturne, connu pour ses geysers de glace', 12, 1, NULL);
INSERT INTO public.moon VALUES ('Mimas', 'Satellite de Saturne, avec un grand cratère appelé Herschel', 13, 9, NULL);
INSERT INTO public.moon VALUES ('Téthys', 'Satellite de Saturne, avec une vaste vallée appelée Ithaca Chasma', 14, 12, NULL);
INSERT INTO public.moon VALUES ('Dione', 'Satellite de Saturne, présentant des bandes de fractures', 15, 4, NULL);
INSERT INTO public.moon VALUES ('Rhéa', 'Satellite de Saturne, avec une surface couverte de cratères', 16, 7, NULL);
INSERT INTO public.moon VALUES ('Hypérion', 'Satellite de Saturne, irrégulier et poreux', 17, 3, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 'Satellite de Saturne, avec une couleur contrastée', 18, 10, NULL);
INSERT INTO public.moon VALUES ('Miranda', 'Satellite d''Uranus, avec des falaises et des canyons', 19, 2, NULL);
INSERT INTO public.moon VALUES ('Ariel', 'Satellite d''Uranus, présentant des vallées et des plaines', 20, 11, NULL);
INSERT INTO public.moon VALUES ('Titania', 'Satellite d''Uranus, avec des fissures et des cratères', 21, 6, NULL);
INSERT INTO public.moon VALUES ('Oberon', 'Satellite d''Uranus, couvert de glace et de roches', 22, 8, NULL);
INSERT INTO public.moon VALUES ('Triton', 'Satellite de Neptune, rétrograde et géologiquement actif', 23, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercure', 'la planète brûlée', 1, false, 1000, 13);
INSERT INTO public.planet VALUES ('venus', 'la planète des femmes', 2, false, 500, 13);
INSERT INTO public.planet VALUES ('terre', 'la planète bleue', 3, true, 0, 13);
INSERT INTO public.planet VALUES ('mars', 'elon is coming', 4, false, 500, 13);
INSERT INTO public.planet VALUES ('jupiter', 'la planète gazeuse', 5, false, 1000, 13);
INSERT INTO public.planet VALUES ('saturn', 'la planète à anneaux', 6, false, 1500, 13);
INSERT INTO public.planet VALUES ('URANUS', 'la planète tordue', 7, false, 2000, 13);
INSERT INTO public.planet VALUES ('NEPTUNE', 'la planète oubliée', 8, false, 2500, 13);
INSERT INTO public.planet VALUES ('PLUTON', 'ce n''est plus une planète', 9, false, 3000, 13);
INSERT INTO public.planet VALUES ('exo planet', 'nom générique', 10, false, 3500, 16);
INSERT INTO public.planet VALUES ('kb78', 'planète vivante inventée', 11, true, 50000, 18);
INSERT INTO public.planet VALUES ('adeinn', 'planet de bgs', 12, true, 100000, 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('SOLEIL', 'le coeur de notre systeme', 13, 2000, 1);
INSERT INTO public.star VALUES ('Bélénos', 'Nom du dieu gaulois de la Lumière, du Soleil et de la Santé.
Choix de la France', 14, 200000, 3);
INSERT INTO public.star VALUES ('Eltanin', 'Le grand Serpent (arabe).', 15, 300000, 6);
INSERT INTO public.star VALUES ('Isida', 'le nom me plait', 16, 928379, 3);
INSERT INTO public.star VALUES ('Kerb', 'et pourquoi pas', 17, 98737839, 4);
INSERT INTO public.star VALUES ('Propus', 'la sauveuse de projets', 18, 786408, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: la_cinquieme_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.la_cinquieme_planet_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_moon_id_seq', 18, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: la_cinquieme la_cinquieme_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.la_cinquieme
    ADD CONSTRAINT la_cinquieme_pkey PRIMARY KEY (la_cinquieme_id);


--
-- Name: la_cinquieme la_cinquieme_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.la_cinquieme
    ADD CONSTRAINT la_cinquieme_planet_id_key UNIQUE (la_cinquieme_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_w_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_w_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_w_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_w_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

