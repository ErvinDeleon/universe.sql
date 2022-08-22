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
    name character varying(30) NOT NULL,
    moon_id integer,
    description integer,
    is_spherical integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    is_spherical text,
    description integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    description integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description integer,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight numeric(4,1),
    description integer,
    has_life integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Virgo A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Enceladus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Mimas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'LO', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Callisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Lapetus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Hyperion', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Daphnis', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Albiorix', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Erriapus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Anthe', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Methone', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Fenrir', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Bestla', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Greip', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Hyrrokin', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Ceres', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Haumer', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Crux', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Leo', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Lyra', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Taurus', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Draco', NULL, NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Mitra', NULL, NULL, NULL);
INSERT INTO public.sun VALUES (2, 'Ravi', NULL, NULL, NULL);
INSERT INTO public.sun VALUES (3, 'Surya', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_description_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key1 UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_description_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key1 UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_description_key UNIQUE (description);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: galaxy galaxy_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

