--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-21 14:42:51 GMT

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
-- TOC entry 231 (class 1259 OID 24592)
-- Name: matchresults; Type: TABLE; Schema: epl_matches; Owner: postgres
--

CREATE TABLE epl_matches.matchresults (
    match_id integer NOT NULL,
    round integer,
    matchdate date,
    hometeam character varying,
    fthg integer,
    ftag integer,
    hthg integer,
    htag integer,
    awayteam character varying
);


ALTER TABLE epl_matches.matchresults OWNER TO postgres;

--
-- TOC entry 3626 (class 0 OID 24592)
-- Dependencies: 231
-- Data for Name: matchresults; Type: TABLE DATA; Schema: epl_matches; Owner: postgres
--

INSERT INTO epl_matches.matchresults VALUES (1, 1, '2017-08-12', 'Watford FC', 3, 3, 2, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (2, 1, '2017-08-11', 'Arsenal FC', 4, 3, 2, 2, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (3, 1, '2017-08-12', 'Southampton FC', 0, 0, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (4, 1, '2017-08-12', 'Brighton & Hove Albion FC', 0, 2, 0, 0, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (5, 1, '2017-08-13', 'Newcastle United FC', 0, 2, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (6, 1, '2017-08-12', 'Crystal Palace FC', 0, 3, 0, 2, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (7, 1, '2017-08-12', 'Chelsea FC', 2, 3, 0, 3, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (8, 1, '2017-08-12', 'Everton FC', 1, 0, 1, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (9, 1, '2017-08-12', 'West Bromwich Albion FC', 1, 0, 1, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (10, 1, '2017-08-13', 'Manchester United FC', 4, 0, 1, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (11, 2, '2017-08-19', 'Southampton FC', 3, 2, 2, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (12, 2, '2017-08-19', 'Burnley FC', 0, 1, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (13, 2, '2017-08-19', 'AFC Bournemouth', 0, 2, 0, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (14, 2, '2017-08-19', 'Liverpool FC', 1, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (15, 2, '2017-08-19', 'Stoke City FC', 1, 0, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (16, 2, '2017-08-20', 'Huddersfield Town AFC', 1, 0, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (17, 2, '2017-08-21', 'Manchester City FC', 1, 1, 0, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (18, 2, '2017-08-20', 'Tottenham Hotspur FC', 1, 2, 0, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (19, 2, '2017-08-19', 'Swansea City AFC', 0, 4, 0, 1, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (20, 2, '2017-08-19', 'Leicester City FC', 2, 0, 1, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (21, 3, '2017-08-26', 'AFC Bournemouth', 1, 2, 1, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (22, 3, '2017-08-27', 'Tottenham Hotspur FC', 1, 1, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (23, 3, '2017-08-27', 'West Bromwich Albion FC', 1, 1, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (24, 3, '2017-08-26', 'Huddersfield Town AFC', 0, 0, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (25, 3, '2017-08-26', 'Watford FC', 0, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (26, 3, '2017-08-26', 'Manchester United FC', 2, 0, 0, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (27, 3, '2017-08-26', 'Crystal Palace FC', 0, 2, 0, 1, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (28, 3, '2017-08-26', 'Newcastle United FC', 3, 0, 1, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (29, 3, '2017-08-27', 'Chelsea FC', 2, 0, 2, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (30, 3, '2017-08-27', 'Liverpool FC', 4, 0, 2, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (31, 4, '2017-09-09', 'Stoke City FC', 2, 2, 1, 1, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (32, 4, '2017-09-10', 'Swansea City AFC', 0, 1, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (33, 4, '2017-09-11', 'West Ham United FC', 2, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (34, 4, '2017-09-09', 'Leicester City FC', 1, 2, 0, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (35, 4, '2017-09-09', 'Southampton FC', 0, 2, 0, 1, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (36, 4, '2017-09-09', 'Everton FC', 0, 3, 0, 2, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (37, 4, '2017-09-09', 'Brighton & Hove Albion FC', 3, 1, 1, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (38, 4, '2017-09-10', 'Burnley FC', 1, 0, 1, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (39, 4, '2017-09-09', 'Arsenal FC', 3, 0, 2, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (40, 4, '2017-09-09', 'Manchester City FC', 5, 0, 2, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (41, 5, '2017-09-16', 'Liverpool FC', 1, 1, 1, 1, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (42, 5, '2017-09-16', 'Huddersfield Town AFC', 1, 1, 0, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (43, 5, '2017-09-15', 'AFC Bournemouth', 2, 1, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (44, 5, '2017-09-16', 'Tottenham Hotspur FC', 0, 0, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (45, 5, '2017-09-16', 'West Bromwich Albion FC', 0, 0, 0, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (46, 5, '2017-09-17', 'Chelsea FC', 0, 0, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (47, 5, '2017-09-16', 'Crystal Palace FC', 0, 1, 0, 1, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (48, 5, '2017-09-16', 'Watford FC', 0, 6, 0, 3, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (49, 5, '2017-09-16', 'Newcastle United FC', 2, 1, 1, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (50, 5, '2017-09-17', 'Manchester United FC', 4, 0, 1, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (51, 6, '2017-09-23', 'Leicester City FC', 2, 3, 1, 2, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (52, 6, '2017-09-23', 'Everton FC', 2, 1, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (53, 6, '2017-09-23', 'Burnley FC', 0, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (54, 6, '2017-09-24', 'Brighton & Hove Albion FC', 1, 0, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (55, 6, '2017-09-23', 'Swansea City AFC', 1, 2, 0, 1, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (56, 6, '2017-09-23', 'Southampton FC', 0, 1, 0, 1, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (57, 6, '2017-09-23', 'West Ham United FC', 2, 3, 0, 2, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (58, 6, '2017-09-23', 'Stoke City FC', 0, 4, 0, 2, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (59, 6, '2017-09-25', 'Arsenal FC', 2, 0, 1, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (60, 6, '2017-09-23', 'Manchester City FC', 5, 0, 1, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (61, 7, '2017-10-01', 'Newcastle United FC', 1, 1, 1, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (62, 7, '2017-09-30', 'West Bromwich Albion FC', 2, 2, 2, 1, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (63, 7, '2017-09-30', 'AFC Bournemouth', 0, 0, 0, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (64, 7, '2017-09-30', 'Chelsea FC', 0, 1, 0, 0, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (65, 7, '2017-09-30', 'West Ham United FC', 1, 0, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (66, 7, '2017-10-01', 'Everton FC', 0, 1, 0, 1, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (67, 7, '2017-09-30', 'Huddersfield Town AFC', 0, 4, 0, 3, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (68, 7, '2017-09-30', 'Stoke City FC', 2, 1, 1, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (69, 7, '2017-10-01', 'Arsenal FC', 2, 0, 1, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (70, 7, '2017-09-30', 'Manchester United FC', 4, 0, 2, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (71, 8, '2017-10-14', 'Crystal Palace FC', 2, 1, 2, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (72, 8, '2017-10-14', 'Manchester City FC', 7, 2, 3, 1, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (73, 8, '2017-10-15', 'Brighton & Hove Albion FC', 1, 1, 0, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (74, 8, '2017-10-16', 'Leicester City FC', 1, 1, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (75, 8, '2017-10-14', 'Liverpool FC', 0, 0, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (76, 8, '2017-10-14', 'Tottenham Hotspur FC', 1, 0, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (77, 8, '2017-10-14', 'Burnley FC', 1, 1, 0, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (78, 8, '2017-10-14', 'Watford FC', 2, 1, 0, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (79, 8, '2017-10-15', 'Southampton FC', 2, 2, 0, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (80, 8, '2017-10-14', 'Swansea City AFC', 2, 0, 1, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (81, 9, '2017-10-21', 'Chelsea FC', 4, 2, 1, 1, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (82, 9, '2017-10-22', 'Everton FC', 2, 5, 1, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (83, 9, '2017-10-22', 'Tottenham Hotspur FC', 4, 1, 3, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (84, 9, '2017-10-21', 'Newcastle United FC', 1, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (85, 9, '2017-10-21', 'Southampton FC', 1, 0, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (86, 9, '2017-10-21', 'Swansea City AFC', 1, 2, 0, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (87, 9, '2017-10-21', 'Stoke City FC', 1, 2, 0, 2, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (88, 9, '2017-10-20', 'West Ham United FC', 0, 3, 0, 2, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (89, 9, '2017-10-21', 'Manchester City FC', 3, 0, 1, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (90, 9, '2017-10-21', 'Huddersfield Town AFC', 2, 1, 2, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (91, 10, '2017-10-28', 'West Bromwich Albion FC', 2, 3, 1, 2, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (92, 10, '2017-10-28', 'AFC Bournemouth', 0, 1, 0, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (93, 10, '2017-10-28', 'Manchester United FC', 1, 0, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (94, 10, '2017-10-30', 'Burnley FC', 1, 0, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (95, 10, '2017-10-28', 'Liverpool FC', 3, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (96, 10, '2017-10-29', 'Brighton & Hove Albion FC', 1, 1, 0, 1, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (97, 10, '2017-10-28', 'Arsenal FC', 2, 1, 0, 1, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (98, 10, '2017-10-28', 'Watford FC', 0, 1, 0, 1, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (99, 10, '2017-10-28', 'Crystal Palace FC', 2, 2, 0, 2, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (100, 10, '2017-10-29', 'Leicester City FC', 2, 0, 2, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (101, 11, '2017-11-04', 'Stoke City FC', 2, 2, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (102, 11, '2017-11-05', 'Everton FC', 3, 2, 0, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (103, 11, '2017-11-04', 'Newcastle United FC', 0, 1, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (104, 11, '2017-11-04', 'Southampton FC', 0, 1, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (105, 11, '2017-11-05', 'Chelsea FC', 1, 0, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (106, 11, '2017-11-05', 'Tottenham Hotspur FC', 1, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (107, 11, '2017-11-04', 'Swansea City AFC', 0, 1, 0, 1, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (108, 11, '2017-11-04', 'West Ham United FC', 1, 4, 0, 2, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (109, 11, '2017-11-05', 'Manchester City FC', 3, 1, 1, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (110, 11, '2017-11-04', 'Huddersfield Town AFC', 1, 0, 1, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (111, 12, '2017-11-18', 'Manchester United FC', 4, 1, 2, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (112, 12, '2017-11-20', 'Brighton & Hove Albion FC', 2, 2, 1, 2, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (113, 12, '2017-11-18', 'Crystal Palace FC', 2, 2, 2, 2, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (114, 12, '2017-11-18', 'Leicester City FC', 0, 2, 0, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (115, 12, '2017-11-18', 'West Bromwich Albion FC', 0, 4, 0, 3, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (116, 12, '2017-11-19', 'Watford FC', 2, 0, 1, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (117, 12, '2017-11-18', 'Arsenal FC', 2, 0, 2, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (118, 12, '2017-11-18', 'Burnley FC', 2, 0, 2, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (119, 12, '2017-11-18', 'Liverpool FC', 3, 0, 2, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (120, 12, '2017-11-18', 'AFC Bournemouth', 4, 0, 2, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (121, 13, '2017-11-24', 'West Ham United FC', 1, 1, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (122, 13, '2017-11-26', 'Southampton FC', 4, 1, 1, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (123, 13, '2017-11-25', 'Liverpool FC', 1, 1, 0, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (124, 13, '2017-11-25', 'Crystal Palace FC', 2, 1, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (125, 13, '2017-11-25', 'Swansea City AFC', 0, 0, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (126, 13, '2017-11-26', 'Burnley FC', 0, 1, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (127, 13, '2017-11-25', 'Manchester United FC', 1, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (128, 13, '2017-11-25', 'Tottenham Hotspur FC', 1, 1, 0, 1, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (129, 13, '2017-11-25', 'Newcastle United FC', 0, 3, 0, 2, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (130, 13, '2017-11-26', 'Huddersfield Town AFC', 1, 2, 1, 0, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (131, 14, '2017-11-29', 'Manchester City FC', 2, 1, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (132, 14, '2017-11-28', 'Brighton & Hove Albion FC', 0, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (133, 14, '2017-11-29', 'Chelsea FC', 1, 0, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (134, 14, '2017-11-29', 'AFC Bournemouth', 1, 2, 0, 1, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (135, 14, '2017-11-29', 'Stoke City FC', 0, 3, 0, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (136, 14, '2017-11-28', 'Watford FC', 2, 4, 0, 3, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (137, 14, '2017-11-28', 'West Bromwich Albion FC', 2, 2, 1, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (138, 14, '2017-11-29', 'Arsenal FC', 5, 0, 1, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (139, 14, '2017-11-28', 'Leicester City FC', 2, 1, 2, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (140, 14, '2017-11-29', 'Everton FC', 4, 0, 2, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (141, 15, '2017-12-02', 'Watford FC', 1, 1, 1, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (142, 15, '2017-12-02', 'Stoke City FC', 2, 1, 2, 1, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (143, 15, '2017-12-02', 'Chelsea FC', 3, 1, 2, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (144, 15, '2017-12-02', 'West Bromwich Albion FC', 0, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (145, 15, '2017-12-02', 'Everton FC', 2, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (146, 15, '2017-12-03', 'Manchester City FC', 2, 1, 0, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (147, 15, '2017-12-02', 'Arsenal FC', 1, 3, 0, 2, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (148, 15, '2017-12-02', 'Brighton & Hove Albion FC', 1, 5, 0, 2, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (149, 15, '2017-12-03', 'AFC Bournemouth', 1, 1, 1, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (150, 15, '2017-12-02', 'Leicester City FC', 1, 0, 1, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (151, 16, '2017-12-10', 'Manchester United FC', 1, 2, 1, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (152, 16, '2017-12-09', 'Newcastle United FC', 2, 3, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (153, 16, '2017-12-09', 'Crystal Palace FC', 2, 2, 2, 2, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (154, 16, '2017-12-09', 'Swansea City AFC', 1, 0, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (155, 16, '2017-12-10', 'Liverpool FC', 1, 1, 1, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (156, 16, '2017-12-10', 'Southampton FC', 1, 1, 1, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (157, 16, '2017-12-09', 'Tottenham Hotspur FC', 5, 1, 1, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (158, 16, '2017-12-09', 'Burnley FC', 1, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (159, 16, '2017-12-09', 'West Ham United FC', 1, 0, 1, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (160, 16, '2017-12-09', 'Huddersfield Town AFC', 2, 0, 2, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (161, 17, '2017-12-13', 'Liverpool FC', 0, 0, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (162, 17, '2017-12-13', 'West Ham United FC', 0, 0, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (163, 17, '2017-12-12', 'Burnley FC', 1, 0, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (164, 17, '2017-12-12', 'Crystal Palace FC', 2, 1, 0, 1, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (165, 17, '2017-12-13', 'Newcastle United FC', 0, 1, 0, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (166, 17, '2017-12-12', 'Huddersfield Town AFC', 1, 3, 0, 2, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (167, 17, '2017-12-13', 'Swansea City AFC', 0, 4, 0, 2, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (168, 17, '2017-12-13', 'Southampton FC', 1, 4, 0, 3, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (169, 17, '2017-12-13', 'Manchester United FC', 1, 0, 1, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (170, 17, '2017-12-13', 'Tottenham Hotspur FC', 2, 0, 1, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (171, 18, '2017-12-18', 'Everton FC', 3, 1, 1, 1, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (172, 18, '2017-12-16', 'Brighton & Hove Albion FC', 0, 0, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (173, 18, '2017-12-16', 'Stoke City FC', 0, 3, 0, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (174, 18, '2017-12-17', 'West Bromwich Albion FC', 1, 2, 0, 2, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (175, 18, '2017-12-16', 'Watford FC', 1, 4, 0, 2, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (176, 18, '2017-12-16', 'Leicester City FC', 0, 3, 0, 2, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (177, 18, '2017-12-17', 'AFC Bournemouth', 0, 4, 0, 3, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (178, 18, '2017-12-16', 'Manchester City FC', 4, 1, 1, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (179, 18, '2017-12-16', 'Arsenal FC', 1, 0, 1, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (180, 18, '2017-12-16', 'Chelsea FC', 1, 0, 1, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (181, 19, '2017-12-23', 'Leicester City FC', 2, 2, 1, 1, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (182, 19, '2017-12-23', 'West Ham United FC', 2, 3, 1, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (183, 19, '2017-12-23', 'Swansea City AFC', 1, 1, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (184, 19, '2017-12-23', 'Everton FC', 0, 0, 0, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (185, 19, '2017-12-23', 'Brighton & Hove Albion FC', 1, 0, 0, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (186, 19, '2017-12-22', 'Arsenal FC', 3, 3, 0, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (187, 19, '2017-12-23', 'Burnley FC', 0, 3, 0, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (188, 19, '2017-12-23', 'Southampton FC', 1, 1, 1, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (189, 19, '2017-12-23', 'Manchester City FC', 4, 0, 1, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (190, 19, '2017-12-23', 'Stoke City FC', 3, 1, 2, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (191, 20, '2017-12-26', 'Watford FC', 2, 1, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (192, 20, '2017-12-26', 'AFC Bournemouth', 3, 3, 1, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (193, 20, '2017-12-26', 'West Bromwich Albion FC', 0, 0, 0, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (194, 20, '2017-12-26', 'Chelsea FC', 2, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (195, 20, '2017-12-28', 'Crystal Palace FC', 2, 3, 0, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (196, 20, '2017-12-27', 'Newcastle United FC', 0, 1, 0, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (197, 20, '2017-12-26', 'Manchester United FC', 2, 2, 0, 2, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (198, 20, '2017-12-26', 'Huddersfield Town AFC', 1, 1, 1, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (199, 20, '2017-12-26', 'Liverpool FC', 5, 0, 1, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (200, 20, '2017-12-26', 'Tottenham Hotspur FC', 5, 2, 2, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (201, 21, '2017-12-31', 'West Bromwich Albion FC', 1, 1, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (202, 21, '2017-12-30', 'Huddersfield Town AFC', 0, 0, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (203, 21, '2017-12-30', 'Manchester United FC', 0, 0, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (204, 21, '2017-12-30', 'Newcastle United FC', 0, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (205, 21, '2017-12-31', 'Crystal Palace FC', 0, 0, 0, 0, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (206, 21, '2017-12-30', 'Liverpool FC', 2, 1, 0, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (207, 21, '2017-12-30', 'AFC Bournemouth', 2, 1, 1, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (208, 21, '2017-12-30', 'Watford FC', 1, 2, 1, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (209, 21, '2017-12-30', 'Chelsea FC', 5, 0, 3, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (210, 22, '2018-01-01', 'Brighton & Hove Albion FC', 2, 2, 1, 1, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (211, 22, '2018-01-04', 'Tottenham Hotspur FC', 1, 1, 0, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (212, 22, '2018-01-01', 'Burnley FC', 1, 2, 0, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (213, 22, '2018-01-03', 'Arsenal FC', 2, 2, 0, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (214, 22, '2018-01-01', 'Stoke City FC', 0, 1, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (215, 22, '2018-01-01', 'Everton FC', 0, 2, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (216, 22, '2018-01-01', 'Leicester City FC', 3, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (217, 22, '2018-01-02', 'West Ham United FC', 2, 1, 0, 1, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (218, 22, '2018-01-02', 'Swansea City AFC', 0, 2, 0, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (219, 22, '2018-01-02', 'Southampton FC', 1, 2, 1, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (220, 22, '2018-01-02', 'Manchester City FC', 3, 1, 2, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (221, 23, '2018-01-14', 'Liverpool FC', 4, 3, 1, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (222, 23, '2018-01-13', 'Huddersfield Town AFC', 1, 4, 1, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (223, 23, '2018-01-13', 'Newcastle United FC', 1, 1, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (224, 23, '2018-01-14', 'AFC Bournemouth', 2, 1, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (225, 23, '2018-01-13', 'Chelsea FC', 0, 0, 0, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (226, 23, '2018-01-13', 'Watford FC', 2, 2, 0, 2, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (227, 23, '2018-01-13', 'Crystal Palace FC', 1, 0, 1, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (228, 23, '2018-01-13', 'West Bromwich Albion FC', 2, 0, 1, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (229, 23, '2018-01-13', 'Tottenham Hotspur FC', 4, 0, 1, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (230, 23, '2018-01-15', 'Manchester United FC', 3, 0, 2, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (231, 24, '2018-01-21', 'Southampton FC', 1, 1, 1, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (232, 24, '2018-01-20', 'West Ham United FC', 1, 1, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (233, 24, '2018-01-20', 'Burnley FC', 0, 1, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (234, 24, '2018-01-20', 'Stoke City FC', 2, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (235, 24, '2018-01-20', 'Everton FC', 1, 1, 0, 1, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (236, 24, '2018-01-20', 'Brighton & Hove Albion FC', 0, 4, 0, 2, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (237, 24, '2018-01-20', 'Manchester City FC', 3, 1, 1, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (238, 24, '2018-01-22', 'Swansea City AFC', 1, 0, 1, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (239, 24, '2018-01-20', 'Leicester City FC', 2, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (240, 24, '2018-01-20', 'Arsenal FC', 4, 1, 4, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (241, 25, '2018-01-30', 'West Ham United FC', 1, 1, 1, 1, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (242, 25, '2018-01-30', 'Swansea City AFC', 3, 1, 1, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (243, 25, '2018-01-31', 'Newcastle United FC', 1, 1, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (244, 25, '2018-01-31', 'Stoke City FC', 0, 0, 0, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (245, 25, '2018-01-31', 'Chelsea FC', 0, 3, 0, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (246, 25, '2018-01-31', 'Southampton FC', 1, 1, 0, 1, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (247, 25, '2018-01-30', 'Huddersfield Town AFC', 0, 3, 0, 2, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (248, 25, '2018-01-31', 'Manchester City FC', 3, 0, 1, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (249, 25, '2018-01-31', 'Everton FC', 2, 1, 2, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (250, 25, '2018-01-31', 'Tottenham Hotspur FC', 2, 0, 2, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (251, 26, '2018-02-03', 'Brighton & Hove Albion FC', 3, 1, 1, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (252, 26, '2018-02-03', 'West Bromwich Albion FC', 2, 3, 1, 2, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (253, 26, '2018-02-03', 'Manchester United FC', 2, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (254, 26, '2018-02-03', 'Burnley FC', 1, 1, 0, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (255, 26, '2018-02-04', 'Crystal Palace FC', 1, 1, 0, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (256, 26, '2018-02-03', 'AFC Bournemouth', 2, 1, 0, 1, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (257, 26, '2018-02-03', 'Leicester City FC', 1, 1, 1, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (258, 26, '2018-02-05', 'Watford FC', 4, 1, 1, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (259, 26, '2018-02-04', 'Liverpool FC', 2, 2, 1, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (260, 26, '2018-02-03', 'Arsenal FC', 5, 1, 4, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (261, 27, '2018-02-10', 'Manchester City FC', 5, 1, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (262, 27, '2018-02-11', 'Huddersfield Town AFC', 4, 1, 2, 1, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (263, 27, '2018-02-10', 'Everton FC', 3, 1, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (264, 27, '2018-02-10', 'Swansea City AFC', 1, 0, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (265, 27, '2018-02-10', 'Tottenham Hotspur FC', 1, 0, 0, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (266, 27, '2018-02-11', 'Newcastle United FC', 1, 0, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (267, 27, '2018-02-10', 'Stoke City FC', 1, 1, 0, 1, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (268, 27, '2018-02-11', 'Southampton FC', 0, 2, 0, 2, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (269, 27, '2018-02-10', 'West Ham United FC', 2, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (270, 27, '2018-02-12', 'Chelsea FC', 3, 0, 1, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (271, 28, '2018-02-25', 'Manchester United FC', 2, 1, 1, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (272, 28, '2018-02-24', 'Burnley FC', 1, 1, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (273, 28, '2018-02-24', 'West Bromwich Albion FC', 1, 2, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (274, 28, '2018-02-25', 'Crystal Palace FC', 0, 1, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (275, 28, '2018-02-24', 'Watford FC', 1, 0, 0, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (276, 28, '2018-02-24', 'Leicester City FC', 1, 1, 0, 1, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (277, 28, '2018-02-24', 'AFC Bournemouth', 2, 2, 0, 2, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (278, 28, '2018-03-01', 'Arsenal FC', 0, 3, 0, 3, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (279, 28, '2018-02-24', 'Brighton & Hove Albion FC', 4, 1, 1, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (280, 28, '2018-02-24', 'Liverpool FC', 4, 1, 1, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (281, 29, '2018-03-04', 'Brighton & Hove Albion FC', 2, 1, 2, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (282, 29, '2018-03-03', 'Southampton FC', 0, 0, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (283, 29, '2018-03-03', 'Watford FC', 1, 0, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (284, 29, '2018-03-04', 'Manchester City FC', 1, 0, 0, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (285, 29, '2018-03-03', 'Leicester City FC', 1, 1, 0, 1, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (286, 29, '2018-03-03', 'Burnley FC', 2, 1, 0, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (287, 29, '2018-03-05', 'Crystal Palace FC', 2, 3, 1, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (288, 29, '2018-03-03', 'Liverpool FC', 2, 0, 1, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (289, 29, '2018-03-03', 'Tottenham Hotspur FC', 2, 0, 1, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (290, 29, '2018-03-03', 'Swansea City AFC', 4, 1, 2, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (291, 30, '2018-03-10', 'West Bromwich Albion FC', 1, 4, 1, 1, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (292, 30, '2018-03-11', 'AFC Bournemouth', 1, 4, 1, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (293, 30, '2018-03-10', 'Huddersfield Town AFC', 0, 0, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (294, 30, '2018-03-10', 'West Ham United FC', 0, 3, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (295, 30, '2018-03-10', 'Everton FC', 2, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (296, 30, '2018-03-12', 'Stoke City FC', 0, 2, 0, 1, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (297, 30, '2018-03-11', 'Arsenal FC', 3, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (298, 30, '2018-03-10', 'Chelsea FC', 2, 1, 2, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (299, 30, '2018-03-10', 'Manchester United FC', 2, 1, 2, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (300, 30, '2018-03-10', 'Newcastle United FC', 3, 0, 2, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (301, 31, '2018-03-31', 'Watford FC', 2, 2, 1, 1, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (302, 31, '2018-04-01', 'Chelsea FC', 1, 3, 1, 1, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (303, 31, '2018-03-17', 'AFC Bournemouth', 2, 1, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (304, 31, '2018-03-17', 'Stoke City FC', 0, 1, 0, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (305, 31, '2018-03-31', 'Brighton & Hove Albion FC', 0, 2, 0, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (306, 31, '2018-03-31', 'Newcastle United FC', 1, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (307, 31, '2018-04-01', 'Arsenal FC', 3, 0, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (308, 31, '2018-03-31', 'West Bromwich Albion FC', 1, 2, 0, 1, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (309, 31, '2018-03-17', 'Huddersfield Town AFC', 0, 2, 0, 1, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (310, 31, '2018-03-31', 'Everton FC', 1, 3, 0, 3, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (311, 31, '2018-03-31', 'Crystal Palace FC', 1, 2, 1, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (312, 31, '2018-03-31', 'Manchester United FC', 2, 0, 2, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (313, 31, '2018-03-17', 'Liverpool FC', 5, 0, 2, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (314, 31, '2018-03-31', 'West Ham United FC', 3, 0, 3, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (315, 32, '2018-04-07', 'Brighton & Hove Albion FC', 1, 1, 1, 1, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (316, 32, '2018-04-08', 'Arsenal FC', 3, 2, 2, 1, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (317, 32, '2018-04-07', 'West Bromwich Albion FC', 1, 1, 0, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (318, 32, '2018-04-07', 'Stoke City FC', 1, 2, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (319, 32, '2018-04-07', 'Watford FC', 1, 2, 0, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (320, 32, '2018-04-07', 'AFC Bournemouth', 2, 2, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (321, 32, '2018-04-07', 'Everton FC', 0, 0, 0, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (322, 32, '2018-04-07', 'Leicester City FC', 1, 2, 0, 1, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (323, 32, '2018-04-08', 'Chelsea FC', 1, 1, 1, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (324, 32, '2018-04-07', 'Manchester City FC', 2, 3, 2, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (325, 33, '2018-04-15', 'Newcastle United FC', 2, 1, 1, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (326, 33, '2018-04-14', 'Tottenham Hotspur FC', 1, 3, 1, 2, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (327, 33, '2018-04-14', 'Crystal Palace FC', 3, 2, 3, 2, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (328, 33, '2018-04-16', 'West Ham United FC', 1, 1, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (329, 33, '2018-04-15', 'Manchester United FC', 0, 1, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (330, 33, '2018-04-14', 'Huddersfield Town AFC', 1, 0, 0, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (331, 33, '2018-04-14', 'Swansea City AFC', 1, 1, 0, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (332, 33, '2018-04-14', 'Southampton FC', 2, 3, 1, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (333, 33, '2018-04-14', 'Liverpool FC', 3, 0, 1, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (334, 33, '2018-04-14', 'Burnley FC', 2, 1, 2, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (335, 34, '2018-04-17', 'Brighton & Hove Albion FC', 1, 1, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (336, 34, '2018-04-22', 'Arsenal FC', 4, 1, 0, 0, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (337, 34, '2018-04-19', 'Leicester City FC', 0, 0, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (338, 34, '2018-04-21', 'Watford FC', 0, 0, 0, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (339, 34, '2018-04-23', 'Everton FC', 1, 0, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (340, 34, '2018-04-19', 'Burnley FC', 1, 2, 0, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (341, 34, '2018-04-21', 'West Bromwich Albion FC', 2, 2, 0, 1, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (342, 34, '2018-04-18', 'AFC Bournemouth', 0, 2, 0, 1, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (343, 34, '2018-04-22', 'Stoke City FC', 1, 1, 1, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (344, 34, '2018-04-22', 'Manchester City FC', 5, 0, 2, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (345, 35, '2018-04-28', 'Southampton FC', 2, 1, 1, 1, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (346, 35, '2018-04-29', 'West Ham United FC', 1, 4, 1, 2, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (347, 35, '2018-04-28', 'Burnley FC', 0, 0, 0, 0, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (348, 35, '2018-04-28', 'Liverpool FC', 0, 0, 0, 0, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (349, 35, '2018-04-28', 'Newcastle United FC', 0, 1, 0, 1, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (350, 35, '2018-04-28', 'Swansea City AFC', 0, 1, 0, 1, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (351, 35, '2018-04-28', 'Huddersfield Town AFC', 0, 2, 0, 1, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (352, 35, '2018-04-29', 'Manchester United FC', 2, 1, 1, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (353, 35, '2018-04-30', 'Tottenham Hotspur FC', 2, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (354, 35, '2018-04-28', 'Crystal Palace FC', 5, 0, 2, 0, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (355, 36, '2018-05-06', 'Manchester City FC', 0, 0, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (356, 36, '2018-05-05', 'Everton FC', 0, 1, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (357, 36, '2018-05-04', 'Brighton & Hove Albion FC', 1, 0, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (358, 36, '2018-05-05', 'West Bromwich Albion FC', 1, 0, 0, 0, 'Tottenham Hotspur FC');
INSERT INTO epl_matches.matchresults VALUES (359, 36, '2018-05-05', 'Leicester City FC', 0, 2, 0, 1, 'West Ham United FC');
INSERT INTO epl_matches.matchresults VALUES (360, 36, '2018-05-05', 'Stoke City FC', 1, 2, 1, 0, 'Crystal Palace FC');
INSERT INTO epl_matches.matchresults VALUES (361, 36, '2018-05-05', 'AFC Bournemouth', 1, 0, 1, 0, 'Swansea City AFC');
INSERT INTO epl_matches.matchresults VALUES (362, 36, '2018-05-06', 'Chelsea FC', 1, 0, 1, 0, 'Liverpool FC');
INSERT INTO epl_matches.matchresults VALUES (363, 36, '2018-05-05', 'Watford FC', 2, 1, 2, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (364, 36, '2018-05-06', 'Arsenal FC', 5, 0, 2, 0, 'Burnley FC');
INSERT INTO epl_matches.matchresults VALUES (365, 37, '2018-05-09', 'Manchester City FC', 3, 1, 2, 1, 'Brighton & Hove Albion FC');
INSERT INTO epl_matches.matchresults VALUES (366, 37, '2018-05-09', 'Chelsea FC', 1, 1, 0, 0, 'Huddersfield Town AFC');
INSERT INTO epl_matches.matchresults VALUES (367, 37, '2018-05-10', 'West Ham United FC', 0, 0, 0, 0, 'Manchester United FC');
INSERT INTO epl_matches.matchresults VALUES (368, 37, '2018-05-08', 'Swansea City AFC', 0, 1, 0, 0, 'Southampton FC');
INSERT INTO epl_matches.matchresults VALUES (369, 37, '2018-05-09', 'Tottenham Hotspur FC', 1, 0, 0, 0, 'Newcastle United FC');
INSERT INTO epl_matches.matchresults VALUES (370, 37, '2018-05-09', 'Leicester City FC', 3, 1, 1, 0, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (371, 38, '2018-05-13', 'Swansea City AFC', 1, 2, 1, 2, 'Stoke City FC');
INSERT INTO epl_matches.matchresults VALUES (372, 38, '2018-05-13', 'Tottenham Hotspur FC', 5, 4, 1, 2, 'Leicester City FC');
INSERT INTO epl_matches.matchresults VALUES (373, 38, '2018-05-13', 'Southampton FC', 0, 1, 0, 0, 'Manchester City FC');
INSERT INTO epl_matches.matchresults VALUES (374, 38, '2018-05-13', 'Crystal Palace FC', 2, 0, 0, 0, 'West Bromwich Albion FC');
INSERT INTO epl_matches.matchresults VALUES (375, 38, '2018-05-13', 'Huddersfield Town AFC', 0, 1, 0, 1, 'Arsenal FC');
INSERT INTO epl_matches.matchresults VALUES (376, 38, '2018-05-13', 'West Ham United FC', 3, 1, 1, 0, 'Everton FC');
INSERT INTO epl_matches.matchresults VALUES (377, 38, '2018-05-13', 'Burnley FC', 1, 2, 1, 0, 'AFC Bournemouth');
INSERT INTO epl_matches.matchresults VALUES (378, 38, '2018-05-13', 'Manchester United FC', 1, 0, 1, 0, 'Watford FC');
INSERT INTO epl_matches.matchresults VALUES (379, 38, '2018-05-13', 'Newcastle United FC', 3, 0, 1, 0, 'Chelsea FC');
INSERT INTO epl_matches.matchresults VALUES (380, 38, '2018-05-13', 'Liverpool FC', 4, 0, 2, 0, 'Brighton & Hove Albion FC');


--
-- TOC entry 3482 (class 2606 OID 24598)
-- Name: matchresults matchresults_pkey; Type: CONSTRAINT; Schema: epl_matches; Owner: Tai
--

ALTER TABLE ONLY epl_matches.matchresults
    ADD CONSTRAINT matchresults_pkey PRIMARY KEY (match_id);


-- Completed on 2024-03-21 14:42:52 GMT

--
-- PostgreSQL database dump complete
--

