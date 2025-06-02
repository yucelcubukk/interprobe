--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13 (Debian 15.13-1.pgdg120+1)
-- Dumped by pg_dump version 15.13 (Debian 15.13-1.pgdg120+1)

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
-- Name: ports; Type: TABLE; Schema: public; Owner: yucelcubukk
--

CREATE TABLE public.ports (
    id integer NOT NULL,
    port_number integer NOT NULL,
    project_name text,
    application_name text,
    description text
);


ALTER TABLE public.ports OWNER TO yucelcubukk;

--
-- Name: ports_id_seq; Type: SEQUENCE; Schema: public; Owner: yucelcubukk
--

CREATE SEQUENCE public.ports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ports_id_seq OWNER TO yucelcubukk;

--
-- Name: ports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yucelcubukk
--

ALTER SEQUENCE public.ports_id_seq OWNED BY public.ports.id;


--
-- Name: ports id; Type: DEFAULT; Schema: public; Owner: yucelcubukk
--

ALTER TABLE ONLY public.ports ALTER COLUMN id SET DEFAULT nextval('public.ports_id_seq'::regclass);


--
-- Data for Name: ports; Type: TABLE DATA; Schema: public; Owner: yucelcubukk
--

COPY public.ports (id, port_number, project_name, application_name, description) FROM stdin;
91	8200	qorela-host	config-server	backend
92	8201	qorela-host	qorela-auth	backend
93	8202	qorela-host	qorela-system	backend
94	8203	qorela-host	qorela-notification	backend
95	8204	qorela-host	qorela-action-consumer	backend
96	4300	qorela-host	qorela-host-ui	frontend
97	5063	qorela-host	qorelaadminitstration	frontend
98	6074	qbs	qbs-target-attribute	backend
99	6075	qbs	qbs-geko	backend
100	6076	qbs	qbs-imsic	backend
101	6087	qbs	qbs-drone	backend
102	9015	qbs	qsb-gis-management	backend
103	9017	qbs	qbs-raster-service	backend
104	9022	qbs	qbs-system-management	backend
105	9023	qbs	qbs-tactical-picture	backend
106	4311	qbs	qbs-data-generator-app	backend
107	4310	qbs	qbs-datagenerator-ui	frontend
108	5050	qbs	sessions	frontend
109	5051	qbs	allbmsssevents	frontend
110	5052	qbs	allbmsisevents	frontend
111	5070	qbs	systemmanagement	frontend
112	5080	qbs	targetattribute	frontend
113	6092	qbs	tacticalpicture	frontend
114	9024	qbs	bmsisgsm	frontend
115	9091	qbs	eventmonitoring	frontend
116	9096	qbs	infoBarUiServer	frontend
117	9097	qbs	tutorialUiServer	frontend
118	7077	qorela-dc	spark-master	backend
119	8002	qorela-dc	datacube-jdbc-service	backend
120	8010	qorela-dc	datacube-notification	backend
121	8011	qorela-dc	datacube-administration	backend
122	8012	qorela-dc	qorela-ai	backend (datacube-ai)
123	6384	qorela-dc	qorela-ai	backend (datacube-ai)
124	8013	qorela-dc	qorela-external-api	backend
125	8081	qorela-dc	datacube-collaboration	backend
126	8082	qorela-dc	datacube-schema	backend
127	8083	qorela-dc	datacube-flow	backend
128	8005	qorela-dc	datacube-flow	backend
129	8084	qorela-dc	datacube-query	backend
130	8085	qorela-dc	datacube-flow-run	backend(sparkRun)
131	8086	qorela-dc	datacube-interactive-query	backend
132	8087	qorela-dc	datacube-fair-scheduler	backend
133	8088	qorela-dc	datacube-alert	backend
134	8089	qorela-dc	datacube-maintenance	backend
135	8098	qorela-dc	qorela-tile-service	backend
136	8099	qorela-dc	qorela-serialization	backend
137	4200	qorela-dc	datacube-ui	qorela-dc
138	8090	qorela-dc	spark-master-ui	frontend
139	0	qorela-dc	datacube-initializer	backend:
140	0	qorela-dc	datacube-scheduler	backend:
141	0	qorela-dc	datacube-queuer	backend:
142	0	qorela-dc	datacube-query-scheduler:	backend:
143	0	qorela-dc	datacube-query-queuer	backend:
144	0	qorela-dc	datacube-alert-kafkaconsumer	backend:
145	0	qorela-dc	datacube-alert-mailconsumer:	backend:
146	0	qorela-dc	datacube-alert-notificationconsumer	backend:
147	0	qorela-dc	datacube-alert-executeanalysisconsumer:	backend:
148	2181	3. parti uygulamalar	zookeeper	\N
149	2182	3. parti uygulamalar	zookeeper	\N
150	5432	3. parti uygulamalar	citus-master	\N
151	6379	3. parti uygulamalar	qorela-redis	\N
152	7687	3. parti uygulamalar	neo4j	\N
153	8080	3. parti uygulamalar	datacube-auth 	keycloak
154	8180	3. parti uygulamalar	geoserver	\N
155	8499	3. parti uygulamalar	dozzle_log_viewer	\N
156	9002	3. parti uygulamalar	minio	\N
157	9092	3. parti uygulamalar	kafka-1	\N
158	29092	3. parti uygulamalar	kafka-1	\N
159	8123	3. parti uygulamalar	clickhouse01	\N
160	9101	3. parti uygulamalar	clickhouse01	\N
161	9441	3. parti uygulamalar	clickhouse01	\N
162	8124	3. parti uygulamalar	clickhouse02	\N
163	9102	3. parti uygulamalar	clickhouse02	\N
164	9442	3. parti uygulamalar	clickhouse02	\N
165	8125	3. parti uygulamalar	clickhouse03	\N
166	9103	3. parti uygulamalar	clickhouse03	\N
167	9443	3. parti uygulamalar	clickhouse03	\N
168	8126	3. parti uygulamalar	clickhouse04	\N
169	9104	3. parti uygulamalar	clickhouse04	\N
170	9444	3. parti uygulamalar	clickhouse04	\N
171	4000	mc	mc-organization-management	backend
172	4001	mc	mc-lawful-mobile-target-management	backend
173	4002	mc	mc-mass-satellite-management	backend
174	4003	mc	mc-monitoring-service	backend
175	4004	mc	target-management-service	backend
176	5100	mc	organizationmanagement	frontend
177	5101	mc	lawfulmobiletargetmanagement	frontend
178	5102	mc	monitoringcenter	frontend
179	5013	mc	targetmanagement	frontend
180	5104	mc	satelliteManagement	frontend
181	6001	qorela-geo	geo-data	backend
182	6002	qorela-geo	geo-schema-service	backend
183	6003	qorela-geo	geo-log-service	backend
184	6004	qorela-geo	geo-tile-service	backend
185	6005	qorela-geo	geo-integration-service	backend
186	6006	qorela-geo	geo-schedule	backend
187	6600	qorela-geo	geoui	frontend
190	6088	datacube-chat	chatsocket	backend
191	6089	datacube-chat	chat	backend
192	5053	datacube-chat	chat	frontend
193	6090	shortcut-menu	shortcut-service	backend
194	6091	shortcut-menu	shortcut-schema-initializer	backend
195	5054	shortcut-menu	shortcutMenu	frontend
196	5090	request-form	request-form-schema-initializer	backend
197	5091	request-form	request-form-service	backend
198	5092	request-form	requestForm	frontend
199	0	qorela-geo	geodatagenerator	backend
200	0	qorela-geo	geo-initializer	backend
\.


--
-- Name: ports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yucelcubukk
--

SELECT pg_catalog.setval('public.ports_id_seq', 200, true);


--
-- Name: ports ports_pkey; Type: CONSTRAINT; Schema: public; Owner: yucelcubukk
--

ALTER TABLE ONLY public.ports
    ADD CONSTRAINT ports_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

