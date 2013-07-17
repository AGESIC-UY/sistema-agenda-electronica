--
-- PostgreSQL database dump
--

-- Started on 2010-03-16 18:39:21 Hora est�ndar de Montevideo

SET client_encoding = 'UTF8';
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 1690 (class 0 OID 0)
-- Dependencies: 1228
-- Name: s_ae_agenda; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_agenda', 4, true);


--
-- TOC entry 1691 (class 0 OID 0)
-- Dependencies: 1229
-- Name: s_ae_agrupacion_dato; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_agrupacion_dato', 4, true);


--
-- TOC entry 1692 (class 0 OID 0)
-- Dependencies: 1230
-- Name: s_ae_anio; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_anio', 1, false);


--
-- TOC entry 1693 (class 0 OID 0)
-- Dependencies: 1231
-- Name: s_ae_datoasolicitar; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_datoasolicitar', 16, true);


--
-- TOC entry 1694 (class 0 OID 0)
-- Dependencies: 1232
-- Name: s_ae_datodelrecurso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_datodelrecurso', 1, false);


--
-- TOC entry 1695 (class 0 OID 0)
-- Dependencies: 1233
-- Name: s_ae_datoreserva; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_datoreserva', 55, true);


--
-- TOC entry 1696 (class 0 OID 0)
-- Dependencies: 1234
-- Name: s_ae_dia_mes; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_dia_mes', 1, false);


--
-- TOC entry 1697 (class 0 OID 0)
-- Dependencies: 1235
-- Name: s_ae_dia_semana; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_dia_semana', 1, false);


--
-- TOC entry 1698 (class 0 OID 0)
-- Dependencies: 1236
-- Name: s_ae_disponibilidad; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_disponibilidad', 3364, true);


--
-- TOC entry 1699 (class 0 OID 0)
-- Dependencies: 1271
-- Name: s_ae_llamada; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_llamada', 1, false);


--
-- TOC entry 1700 (class 0 OID 0)
-- Dependencies: 1237
-- Name: s_ae_mes; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_mes', 1, false);


--
-- TOC entry 1701 (class 0 OID 0)
-- Dependencies: 1238
-- Name: s_ae_paramval; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_paramval', 2, true);


--
-- TOC entry 1702 (class 0 OID 0)
-- Dependencies: 1239
-- Name: s_ae_plantilla; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_plantilla', 1, false);


--
-- TOC entry 1703 (class 0 OID 0)
-- Dependencies: 1240
-- Name: s_ae_recurso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_recurso', 5, true);


--
-- TOC entry 1704 (class 0 OID 0)
-- Dependencies: 1241
-- Name: s_ae_reserva; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_reserva', 25, true);


--
-- TOC entry 1706 (class 0 OID 0)
-- Dependencies: 1243
-- Name: s_ae_texto_agenda; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_texto_agenda', 4, true);


--
-- TOC entry 1707 (class 0 OID 0)
-- Dependencies: 1244
-- Name: s_ae_textorecurso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_textorecurso', 5, true);


--
-- TOC entry 1708 (class 0 OID 0)
-- Dependencies: 1245
-- Name: s_ae_valdato; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_valdato', 6, true);


--
-- TOC entry 1709 (class 0 OID 0)
-- Dependencies: 1246
-- Name: s_ae_validacion; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_validacion', 1, true);


--
-- TOC entry 1710 (class 0 OID 0)
-- Dependencies: 1247
-- Name: s_ae_valorposible; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_valorposible', 3, true);


--
-- TOC entry 1711 (class 0 OID 0)
-- Dependencies: 1248
-- Name: s_ae_valrecurso; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('s_ae_valrecurso', 3, true);


--
-- TOC entry 1667 (class 0 OID 17118)
-- Dependencies: 1249
-- Data for Name: ae_agendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_agendas (id, nombre, fecha_baja, visible_internet, descripcion) VALUES (3, 'ATPUB', NULL, true, 'Agenda de Atencion al Publico');


--
-- TOC entry 1680 (class 0 OID 17172)
-- Dependencies: 1262
-- Data for Name: ae_recursos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_recursos (id, version, nombre, fecha_baja, fecha_inicio_disp, ventana_cupos_minimos, ventana_dias_minimos, fecha_fin_disp, descripcion, cant_dias_a_generar, fecha_fin, fecha_inicio, mostrar_numero_en_llamador, reserva_multiple, aeag_id) VALUES (4, 3, 'TramiteB', '2010-03-16 14:39:48.359', '2010-03-16 00:00:00', 20, 10, NULL, 'Tramite B', 10, NULL, '2010-03-16 00:00:00', true, false, 3);
INSERT INTO ae_recursos (id, version, nombre, fecha_baja, fecha_inicio_disp, ventana_cupos_minimos, ventana_dias_minimos, fecha_fin_disp, descripcion, cant_dias_a_generar, fecha_fin, fecha_inicio, mostrar_numero_en_llamador, reserva_multiple, aeag_id) VALUES (3, 4, 'TramiteA', NULL, '2010-03-15 00:00:00', 20, 10, NULL, 'Tramite A', 100, NULL, '2010-03-15 00:00:00', true, false, 3);
INSERT INTO ae_recursos (id, version, nombre, fecha_baja, fecha_inicio_disp, ventana_cupos_minimos, ventana_dias_minimos, fecha_fin_disp, descripcion, cant_dias_a_generar, fecha_fin, fecha_inicio, mostrar_numero_en_llamador, reserva_multiple, aeag_id) VALUES (5, 3, 'TramiteB', NULL, '2010-03-15 00:00:00', 20, 10, NULL, 'Tramite B', 100, NULL, '2010-03-15 00:00:00', true, false, 3);


--
-- TOC entry 1668 (class 0 OID 17122)
-- Dependencies: 1250
-- Data for Name: ae_agrupaciones_datos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_agrupaciones_datos (id, nombre, fecha_baja, orden, aere_id) VALUES (1, 'Datos Personales', NULL, 1, 3);
INSERT INTO ae_agrupaciones_datos (id, nombre, fecha_baja, orden, aere_id) VALUES (2, 'Datos Tramite', NULL, 2, 3);
INSERT INTO ae_agrupaciones_datos (id, nombre, fecha_baja, orden, aere_id) VALUES (3, 'Datos Personales', NULL, 1, 5);
INSERT INTO ae_agrupaciones_datos (id, nombre, fecha_baja, orden, aere_id) VALUES (4, 'Datos Tramite', '2010-03-16 17:35:01.515', 2, 5);


--
-- TOC entry 1670 (class 0 OID 17130)
-- Dependencies: 1252
-- Data for Name: ae_datos_a_solicitar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (6, 'EMAIL', false, NULL, false, 'STRING', 'Correo Electronico', false, 30, 5, 1, 30, false, 20, 1, '', 1, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (7, 'MOTIVO_TRAM', false, NULL, true, 'STRING', 'Motivo', false, 30, 1, 1, 30, false, 20, 1, '', 2, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (8, 'CI', true, '2010-03-16 17:34:15.328', true, 'NUMBER', 'Cedula de Identidad', true, 7, 1, 1, 7, true, 20, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (9, 'DIGITO_CI', false, '2010-03-16 17:34:20', true, 'NUMBER', '-', false, 1, 1, 2, 1, false, 20, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (14, 'MOTIVO_TRAM', false, '2010-03-16 17:34:27.468', true, 'STRING', 'Motivo', false, 30, 1, 1, 30, false, 20, 1, '', 4, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (10, 'TELEFONO', false, NULL, true, 'NUMBER', 'Telefono', false, 10, 5, 1, 10, false, 20, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (11, 'EMAIL', false, NULL, false, 'STRING', 'Correo Electronico', false, 30, 6, 1, 30, false, 20, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (16, 'DOCUMENTO', true, NULL, true, 'STRING', 'Documento', true, 100, 2, 1, 20, true, 100, 2, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (15, 'TIPO_DOC', true, NULL, true, 'LIST', 'Tipo Documento', true, 100, 1, 1, 1, true, 100, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (13, 'APELLIDO1', false, NULL, true, 'STRING', 'Primer Apellido', false, 15, 4, 1, 20, true, 100, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (12, 'NOMBRE1', false, NULL, true, 'STRING', 'Primer Nombre', false, 15, 3, 1, 20, true, 100, 1, '', 3, 5);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (1, 'CI', true, NULL, true, 'NUMBER', 'Cedula de Identidad', true, 100, 1, 1, 7, true, 100, 1, '', 1, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (2, 'DIGITO_CI', false, NULL, true, 'NUMBER', '-', false, 1, 1, 2, 1, false, 100, 1, '', 1, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (3, 'NOMBRE1', false, NULL, true, 'STRING', 'Primer Nombre', false, 15, 2, 1, 20, true, 100, 1, '', 1, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (4, 'APELLIDO1', false, NULL, true, 'STRING', 'Primer Apellido', false, 15, 3, 1, 20, true, 100, 1, '', 1, 3);
INSERT INTO ae_datos_a_solicitar (id, nombre, es_clave, fecha_baja, requerido, tipo, etiqueta, incluir_en_llamador, largo_en_llamador, fila, columna, largo, incluir_en_reporte, ancho_despliegue, orden_en_llamador, texto_ayuda, aead_id, aere_id) VALUES (5, 'TELEFONO', false, NULL, true, 'NUMBER', 'Telefono', false, 10, 4, 1, 10, true, 100, 1, '', 1, 3);


--
-- TOC entry 1671 (class 0 OID 17134)
-- Dependencies: 1253
-- Data for Name: ae_datos_del_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 1673 (class 0 OID 17142)
-- Dependencies: 1255
-- Data for Name: ae_dias_del_mes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1674 (class 0 OID 17146)
-- Dependencies: 1256
-- Data for Name: ae_dias_semana; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1675 (class 0 OID 17150)
-- Dependencies: 1257
-- Data for Name: ae_disponibilidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (901, 0, '2010-03-15 09:00:00', '2010-03-15', NULL, 0, '2010-03-15 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (902, 0, '2010-03-15 09:15:00', '2010-03-15', NULL, 0, '2010-03-15 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (903, 0, '2010-03-15 09:30:00', '2010-03-15', NULL, 0, '2010-03-15 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (904, 0, '2010-03-15 09:45:00', '2010-03-15', NULL, 0, '2010-03-15 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (905, 0, '2010-03-15 10:00:00', '2010-03-15', NULL, 0, '2010-03-15 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (906, 0, '2010-03-15 10:15:00', '2010-03-15', NULL, 0, '2010-03-15 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (907, 0, '2010-03-15 10:30:00', '2010-03-15', NULL, 0, '2010-03-15 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (908, 0, '2010-03-15 10:45:00', '2010-03-15', NULL, 0, '2010-03-15 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (909, 0, '2010-03-15 11:00:00', '2010-03-15', NULL, 0, '2010-03-15 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (910, 0, '2010-03-15 11:15:00', '2010-03-15', NULL, 0, '2010-03-15 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (911, 0, '2010-03-15 11:30:00', '2010-03-15', NULL, 0, '2010-03-15 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (912, 0, '2010-03-15 11:45:00', '2010-03-15', NULL, 0, '2010-03-15 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (913, 0, '2010-03-15 12:00:00', '2010-03-15', NULL, 0, '2010-03-15 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (914, 0, '2010-03-15 12:15:00', '2010-03-15', NULL, 0, '2010-03-15 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (915, 0, '2010-03-15 12:30:00', '2010-03-15', NULL, 0, '2010-03-15 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (916, 0, '2010-03-15 12:45:00', '2010-03-15', NULL, 0, '2010-03-15 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (917, 0, '2010-03-15 13:00:00', '2010-03-15', NULL, 0, '2010-03-15 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (918, 0, '2010-03-15 13:15:00', '2010-03-15', NULL, 0, '2010-03-15 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (919, 0, '2010-03-15 13:30:00', '2010-03-15', NULL, 0, '2010-03-15 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (920, 0, '2010-03-15 13:45:00', '2010-03-15', NULL, 0, '2010-03-15 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (921, 0, '2010-03-15 14:00:00', '2010-03-15', NULL, 0, '2010-03-15 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (922, 0, '2010-03-15 14:15:00', '2010-03-15', NULL, 0, '2010-03-15 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (923, 0, '2010-03-15 14:30:00', '2010-03-15', NULL, 0, '2010-03-15 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (924, 0, '2010-03-15 14:45:00', '2010-03-15', NULL, 0, '2010-03-15 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (925, 0, '2010-03-15 15:00:00', '2010-03-15', NULL, 0, '2010-03-15 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (926, 0, '2010-03-15 15:15:00', '2010-03-15', NULL, 0, '2010-03-15 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (927, 0, '2010-03-15 15:30:00', '2010-03-15', NULL, 0, '2010-03-15 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (928, 0, '2010-03-15 15:45:00', '2010-03-15', NULL, 0, '2010-03-15 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (929, 0, '2010-03-15 16:00:00', '2010-03-15', NULL, 0, '2010-03-15 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (930, 0, '2010-03-15 16:15:00', '2010-03-15', NULL, 0, '2010-03-15 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (931, 0, '2010-03-15 16:30:00', '2010-03-15', NULL, 0, '2010-03-15 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (932, 0, '2010-03-15 16:45:00', '2010-03-15', NULL, 0, '2010-03-15 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (933, 0, '2010-03-16 09:00:00', '2010-03-16', NULL, 0, '2010-03-16 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (934, 0, '2010-03-16 09:15:00', '2010-03-16', NULL, 0, '2010-03-16 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (935, 0, '2010-03-16 09:30:00', '2010-03-16', NULL, 0, '2010-03-16 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (936, 0, '2010-03-16 09:45:00', '2010-03-16', NULL, 0, '2010-03-16 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (937, 0, '2010-03-16 10:00:00', '2010-03-16', NULL, 0, '2010-03-16 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (938, 0, '2010-03-16 10:15:00', '2010-03-16', NULL, 0, '2010-03-16 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (939, 0, '2010-03-16 10:30:00', '2010-03-16', NULL, 0, '2010-03-16 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (940, 0, '2010-03-16 10:45:00', '2010-03-16', NULL, 0, '2010-03-16 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (941, 0, '2010-03-16 11:00:00', '2010-03-16', NULL, 0, '2010-03-16 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (942, 0, '2010-03-16 11:15:00', '2010-03-16', NULL, 0, '2010-03-16 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (943, 0, '2010-03-16 11:30:00', '2010-03-16', NULL, 0, '2010-03-16 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (944, 0, '2010-03-16 11:45:00', '2010-03-16', NULL, 0, '2010-03-16 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (945, 0, '2010-03-16 12:00:00', '2010-03-16', NULL, 0, '2010-03-16 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (946, 0, '2010-03-16 12:15:00', '2010-03-16', NULL, 0, '2010-03-16 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (947, 0, '2010-03-16 12:30:00', '2010-03-16', NULL, 0, '2010-03-16 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (948, 0, '2010-03-16 12:45:00', '2010-03-16', NULL, 0, '2010-03-16 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (949, 0, '2010-03-16 13:00:00', '2010-03-16', NULL, 0, '2010-03-16 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (950, 0, '2010-03-16 13:15:00', '2010-03-16', NULL, 0, '2010-03-16 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (951, 0, '2010-03-16 13:30:00', '2010-03-16', NULL, 0, '2010-03-16 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (952, 0, '2010-03-16 13:45:00', '2010-03-16', NULL, 0, '2010-03-16 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (953, 0, '2010-03-16 14:00:00', '2010-03-16', NULL, 0, '2010-03-16 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (954, 0, '2010-03-16 14:15:00', '2010-03-16', NULL, 0, '2010-03-16 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (955, 0, '2010-03-16 14:30:00', '2010-03-16', NULL, 0, '2010-03-16 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (956, 0, '2010-03-16 14:45:00', '2010-03-16', NULL, 0, '2010-03-16 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (957, 0, '2010-03-16 15:00:00', '2010-03-16', NULL, 0, '2010-03-16 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (958, 0, '2010-03-16 15:15:00', '2010-03-16', NULL, 0, '2010-03-16 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (959, 0, '2010-03-16 15:30:00', '2010-03-16', NULL, 0, '2010-03-16 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (960, 0, '2010-03-16 15:45:00', '2010-03-16', NULL, 0, '2010-03-16 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (961, 0, '2010-03-16 16:00:00', '2010-03-16', NULL, 0, '2010-03-16 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (962, 0, '2010-03-16 16:15:00', '2010-03-16', NULL, 0, '2010-03-16 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (963, 0, '2010-03-16 16:30:00', '2010-03-16', NULL, 0, '2010-03-16 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (964, 0, '2010-03-16 16:45:00', '2010-03-16', NULL, 0, '2010-03-16 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (965, 0, '2010-03-17 09:00:00', '2010-03-17', NULL, 0, '2010-03-17 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (966, 0, '2010-03-17 09:15:00', '2010-03-17', NULL, 0, '2010-03-17 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (967, 0, '2010-03-17 09:30:00', '2010-03-17', NULL, 0, '2010-03-17 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (968, 0, '2010-03-17 09:45:00', '2010-03-17', NULL, 0, '2010-03-17 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (969, 0, '2010-03-17 10:00:00', '2010-03-17', NULL, 0, '2010-03-17 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (970, 0, '2010-03-17 10:15:00', '2010-03-17', NULL, 0, '2010-03-17 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (971, 0, '2010-03-17 10:30:00', '2010-03-17', NULL, 0, '2010-03-17 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (972, 0, '2010-03-17 10:45:00', '2010-03-17', NULL, 0, '2010-03-17 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (973, 0, '2010-03-17 11:00:00', '2010-03-17', NULL, 0, '2010-03-17 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (974, 0, '2010-03-17 11:15:00', '2010-03-17', NULL, 0, '2010-03-17 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (975, 0, '2010-03-17 11:30:00', '2010-03-17', NULL, 0, '2010-03-17 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (976, 0, '2010-03-17 11:45:00', '2010-03-17', NULL, 0, '2010-03-17 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (977, 0, '2010-03-17 12:00:00', '2010-03-17', NULL, 0, '2010-03-17 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (978, 0, '2010-03-17 12:15:00', '2010-03-17', NULL, 0, '2010-03-17 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (979, 0, '2010-03-17 12:30:00', '2010-03-17', NULL, 0, '2010-03-17 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (980, 0, '2010-03-17 12:45:00', '2010-03-17', NULL, 0, '2010-03-17 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (981, 0, '2010-03-17 13:00:00', '2010-03-17', NULL, 0, '2010-03-17 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (982, 0, '2010-03-17 13:15:00', '2010-03-17', NULL, 0, '2010-03-17 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (983, 0, '2010-03-17 13:30:00', '2010-03-17', NULL, 0, '2010-03-17 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (984, 0, '2010-03-17 13:45:00', '2010-03-17', NULL, 0, '2010-03-17 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (985, 0, '2010-03-17 14:00:00', '2010-03-17', NULL, 0, '2010-03-17 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (986, 0, '2010-03-17 14:15:00', '2010-03-17', NULL, 0, '2010-03-17 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (987, 0, '2010-03-17 14:30:00', '2010-03-17', NULL, 0, '2010-03-17 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (988, 0, '2010-03-17 14:45:00', '2010-03-17', NULL, 0, '2010-03-17 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (989, 0, '2010-03-17 15:00:00', '2010-03-17', NULL, 0, '2010-03-17 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (990, 0, '2010-03-17 15:15:00', '2010-03-17', NULL, 0, '2010-03-17 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (991, 0, '2010-03-17 15:30:00', '2010-03-17', NULL, 0, '2010-03-17 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (992, 0, '2010-03-17 15:45:00', '2010-03-17', NULL, 0, '2010-03-17 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (993, 0, '2010-03-17 16:00:00', '2010-03-17', NULL, 0, '2010-03-17 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (994, 0, '2010-03-17 16:15:00', '2010-03-17', NULL, 0, '2010-03-17 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (995, 0, '2010-03-17 16:30:00', '2010-03-17', NULL, 0, '2010-03-17 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (996, 0, '2010-03-17 16:45:00', '2010-03-17', NULL, 0, '2010-03-17 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (997, 0, '2010-03-18 09:00:00', '2010-03-18', NULL, 0, '2010-03-18 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (998, 0, '2010-03-18 09:15:00', '2010-03-18', NULL, 0, '2010-03-18 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (999, 0, '2010-03-18 09:30:00', '2010-03-18', NULL, 0, '2010-03-18 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1000, 0, '2010-03-18 09:45:00', '2010-03-18', NULL, 0, '2010-03-18 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1001, 0, '2010-03-18 10:00:00', '2010-03-18', NULL, 0, '2010-03-18 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1002, 0, '2010-03-18 10:15:00', '2010-03-18', NULL, 0, '2010-03-18 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1003, 0, '2010-03-18 10:30:00', '2010-03-18', NULL, 0, '2010-03-18 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1004, 0, '2010-03-18 10:45:00', '2010-03-18', NULL, 0, '2010-03-18 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1005, 0, '2010-03-18 11:00:00', '2010-03-18', NULL, 0, '2010-03-18 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1006, 0, '2010-03-18 11:15:00', '2010-03-18', NULL, 0, '2010-03-18 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1007, 0, '2010-03-18 11:30:00', '2010-03-18', NULL, 0, '2010-03-18 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1008, 0, '2010-03-18 11:45:00', '2010-03-18', NULL, 0, '2010-03-18 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1010, 0, '2010-03-18 12:15:00', '2010-03-18', NULL, 0, '2010-03-18 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1011, 0, '2010-03-18 12:30:00', '2010-03-18', NULL, 0, '2010-03-18 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1012, 0, '2010-03-18 12:45:00', '2010-03-18', NULL, 0, '2010-03-18 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1013, 0, '2010-03-18 13:00:00', '2010-03-18', NULL, 0, '2010-03-18 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1014, 0, '2010-03-18 13:15:00', '2010-03-18', NULL, 0, '2010-03-18 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1015, 0, '2010-03-18 13:30:00', '2010-03-18', NULL, 0, '2010-03-18 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1016, 0, '2010-03-18 13:45:00', '2010-03-18', NULL, 0, '2010-03-18 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1017, 0, '2010-03-18 14:00:00', '2010-03-18', NULL, 0, '2010-03-18 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1018, 0, '2010-03-18 14:15:00', '2010-03-18', NULL, 0, '2010-03-18 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1019, 0, '2010-03-18 14:30:00', '2010-03-18', NULL, 0, '2010-03-18 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1020, 0, '2010-03-18 14:45:00', '2010-03-18', NULL, 0, '2010-03-18 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1021, 0, '2010-03-18 15:00:00', '2010-03-18', NULL, 0, '2010-03-18 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1022, 0, '2010-03-18 15:15:00', '2010-03-18', NULL, 0, '2010-03-18 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1023, 0, '2010-03-18 15:30:00', '2010-03-18', NULL, 0, '2010-03-18 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1024, 0, '2010-03-18 15:45:00', '2010-03-18', NULL, 0, '2010-03-18 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1025, 0, '2010-03-18 16:00:00', '2010-03-18', NULL, 0, '2010-03-18 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1026, 0, '2010-03-18 16:15:00', '2010-03-18', NULL, 0, '2010-03-18 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1027, 0, '2010-03-18 16:30:00', '2010-03-18', NULL, 0, '2010-03-18 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1028, 0, '2010-03-18 16:45:00', '2010-03-18', NULL, 0, '2010-03-18 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1029, 0, '2010-03-19 09:00:00', '2010-03-19', NULL, 0, '2010-03-19 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1030, 0, '2010-03-19 09:15:00', '2010-03-19', NULL, 0, '2010-03-19 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1031, 0, '2010-03-19 09:30:00', '2010-03-19', NULL, 0, '2010-03-19 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1032, 0, '2010-03-19 09:45:00', '2010-03-19', NULL, 0, '2010-03-19 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1033, 0, '2010-03-19 10:00:00', '2010-03-19', NULL, 0, '2010-03-19 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1034, 0, '2010-03-19 10:15:00', '2010-03-19', NULL, 0, '2010-03-19 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1035, 0, '2010-03-19 10:30:00', '2010-03-19', NULL, 0, '2010-03-19 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1036, 0, '2010-03-19 10:45:00', '2010-03-19', NULL, 0, '2010-03-19 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1037, 0, '2010-03-19 11:00:00', '2010-03-19', NULL, 0, '2010-03-19 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1038, 0, '2010-03-19 11:15:00', '2010-03-19', NULL, 0, '2010-03-19 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1039, 0, '2010-03-19 11:30:00', '2010-03-19', NULL, 0, '2010-03-19 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1040, 0, '2010-03-19 11:45:00', '2010-03-19', NULL, 0, '2010-03-19 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1041, 0, '2010-03-19 12:00:00', '2010-03-19', NULL, 0, '2010-03-19 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1042, 0, '2010-03-19 12:15:00', '2010-03-19', NULL, 0, '2010-03-19 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1043, 0, '2010-03-19 12:30:00', '2010-03-19', NULL, 0, '2010-03-19 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1044, 0, '2010-03-19 12:45:00', '2010-03-19', NULL, 0, '2010-03-19 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1045, 0, '2010-03-19 13:00:00', '2010-03-19', NULL, 0, '2010-03-19 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1046, 0, '2010-03-19 13:15:00', '2010-03-19', NULL, 0, '2010-03-19 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1047, 0, '2010-03-19 13:30:00', '2010-03-19', NULL, 0, '2010-03-19 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1048, 0, '2010-03-19 13:45:00', '2010-03-19', NULL, 0, '2010-03-19 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1049, 0, '2010-03-19 14:00:00', '2010-03-19', NULL, 0, '2010-03-19 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1050, 0, '2010-03-19 14:15:00', '2010-03-19', NULL, 0, '2010-03-19 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1051, 0, '2010-03-19 14:30:00', '2010-03-19', NULL, 0, '2010-03-19 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1052, 0, '2010-03-19 14:45:00', '2010-03-19', NULL, 0, '2010-03-19 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1053, 0, '2010-03-19 15:00:00', '2010-03-19', NULL, 0, '2010-03-19 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1054, 0, '2010-03-19 15:15:00', '2010-03-19', NULL, 0, '2010-03-19 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1055, 0, '2010-03-19 15:30:00', '2010-03-19', NULL, 0, '2010-03-19 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1056, 0, '2010-03-19 15:45:00', '2010-03-19', NULL, 0, '2010-03-19 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1057, 0, '2010-03-19 16:00:00', '2010-03-19', NULL, 0, '2010-03-19 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1058, 0, '2010-03-19 16:15:00', '2010-03-19', NULL, 0, '2010-03-19 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1059, 0, '2010-03-19 16:30:00', '2010-03-19', NULL, 0, '2010-03-19 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1060, 0, '2010-03-19 16:45:00', '2010-03-19', NULL, 0, '2010-03-19 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1061, 0, '2010-03-22 09:00:00', '2010-03-22', NULL, 0, '2010-03-22 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1062, 0, '2010-03-22 09:15:00', '2010-03-22', NULL, 0, '2010-03-22 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1063, 0, '2010-03-22 09:30:00', '2010-03-22', NULL, 0, '2010-03-22 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1064, 0, '2010-03-22 09:45:00', '2010-03-22', NULL, 0, '2010-03-22 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1065, 0, '2010-03-22 10:00:00', '2010-03-22', NULL, 0, '2010-03-22 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1066, 0, '2010-03-22 10:15:00', '2010-03-22', NULL, 0, '2010-03-22 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1067, 0, '2010-03-22 10:30:00', '2010-03-22', NULL, 0, '2010-03-22 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1068, 0, '2010-03-22 10:45:00', '2010-03-22', NULL, 0, '2010-03-22 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1069, 0, '2010-03-22 11:00:00', '2010-03-22', NULL, 0, '2010-03-22 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1070, 0, '2010-03-22 11:15:00', '2010-03-22', NULL, 0, '2010-03-22 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1071, 0, '2010-03-22 11:30:00', '2010-03-22', NULL, 0, '2010-03-22 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1072, 0, '2010-03-22 11:45:00', '2010-03-22', NULL, 0, '2010-03-22 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1073, 0, '2010-03-22 12:00:00', '2010-03-22', NULL, 0, '2010-03-22 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1074, 0, '2010-03-22 12:15:00', '2010-03-22', NULL, 0, '2010-03-22 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1075, 0, '2010-03-22 12:30:00', '2010-03-22', NULL, 0, '2010-03-22 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1076, 0, '2010-03-22 12:45:00', '2010-03-22', NULL, 0, '2010-03-22 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1077, 0, '2010-03-22 13:00:00', '2010-03-22', NULL, 0, '2010-03-22 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1078, 0, '2010-03-22 13:15:00', '2010-03-22', NULL, 0, '2010-03-22 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1079, 0, '2010-03-22 13:30:00', '2010-03-22', NULL, 0, '2010-03-22 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1080, 0, '2010-03-22 13:45:00', '2010-03-22', NULL, 0, '2010-03-22 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1081, 0, '2010-03-22 14:00:00', '2010-03-22', NULL, 0, '2010-03-22 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1082, 0, '2010-03-22 14:15:00', '2010-03-22', NULL, 0, '2010-03-22 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1083, 0, '2010-03-22 14:30:00', '2010-03-22', NULL, 0, '2010-03-22 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1084, 0, '2010-03-22 14:45:00', '2010-03-22', NULL, 0, '2010-03-22 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1085, 0, '2010-03-22 15:00:00', '2010-03-22', NULL, 0, '2010-03-22 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1086, 0, '2010-03-22 15:15:00', '2010-03-22', NULL, 0, '2010-03-22 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1087, 0, '2010-03-22 15:30:00', '2010-03-22', NULL, 0, '2010-03-22 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1088, 0, '2010-03-22 15:45:00', '2010-03-22', NULL, 0, '2010-03-22 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1089, 0, '2010-03-22 16:00:00', '2010-03-22', NULL, 0, '2010-03-22 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1090, 0, '2010-03-22 16:15:00', '2010-03-22', NULL, 0, '2010-03-22 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1091, 0, '2010-03-22 16:30:00', '2010-03-22', NULL, 0, '2010-03-22 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1092, 0, '2010-03-22 16:45:00', '2010-03-22', NULL, 0, '2010-03-22 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1093, 0, '2010-03-23 09:00:00', '2010-03-23', NULL, 0, '2010-03-23 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1094, 0, '2010-03-23 09:15:00', '2010-03-23', NULL, 0, '2010-03-23 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1095, 0, '2010-03-23 09:30:00', '2010-03-23', NULL, 0, '2010-03-23 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1096, 0, '2010-03-23 09:45:00', '2010-03-23', NULL, 0, '2010-03-23 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1097, 0, '2010-03-23 10:00:00', '2010-03-23', NULL, 0, '2010-03-23 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1098, 0, '2010-03-23 10:15:00', '2010-03-23', NULL, 0, '2010-03-23 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1099, 0, '2010-03-23 10:30:00', '2010-03-23', NULL, 0, '2010-03-23 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1100, 0, '2010-03-23 10:45:00', '2010-03-23', NULL, 0, '2010-03-23 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1101, 0, '2010-03-23 11:00:00', '2010-03-23', NULL, 0, '2010-03-23 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1102, 0, '2010-03-23 11:15:00', '2010-03-23', NULL, 0, '2010-03-23 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1103, 0, '2010-03-23 11:30:00', '2010-03-23', NULL, 0, '2010-03-23 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1104, 0, '2010-03-23 11:45:00', '2010-03-23', NULL, 0, '2010-03-23 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1105, 0, '2010-03-23 12:00:00', '2010-03-23', NULL, 0, '2010-03-23 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1106, 0, '2010-03-23 12:15:00', '2010-03-23', NULL, 0, '2010-03-23 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1107, 0, '2010-03-23 12:30:00', '2010-03-23', NULL, 0, '2010-03-23 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1108, 0, '2010-03-23 12:45:00', '2010-03-23', NULL, 0, '2010-03-23 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1109, 0, '2010-03-23 13:00:00', '2010-03-23', NULL, 0, '2010-03-23 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1110, 0, '2010-03-23 13:15:00', '2010-03-23', NULL, 0, '2010-03-23 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1111, 0, '2010-03-23 13:30:00', '2010-03-23', NULL, 0, '2010-03-23 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1112, 0, '2010-03-23 13:45:00', '2010-03-23', NULL, 0, '2010-03-23 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1113, 0, '2010-03-23 14:00:00', '2010-03-23', NULL, 0, '2010-03-23 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1114, 0, '2010-03-23 14:15:00', '2010-03-23', NULL, 0, '2010-03-23 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1115, 0, '2010-03-23 14:30:00', '2010-03-23', NULL, 0, '2010-03-23 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1116, 0, '2010-03-23 14:45:00', '2010-03-23', NULL, 0, '2010-03-23 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1117, 0, '2010-03-23 15:00:00', '2010-03-23', NULL, 0, '2010-03-23 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1118, 0, '2010-03-23 15:15:00', '2010-03-23', NULL, 0, '2010-03-23 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1119, 0, '2010-03-23 15:30:00', '2010-03-23', NULL, 0, '2010-03-23 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1120, 0, '2010-03-23 15:45:00', '2010-03-23', NULL, 0, '2010-03-23 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1121, 0, '2010-03-23 16:00:00', '2010-03-23', NULL, 0, '2010-03-23 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1122, 0, '2010-03-23 16:15:00', '2010-03-23', NULL, 0, '2010-03-23 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1123, 0, '2010-03-23 16:30:00', '2010-03-23', NULL, 0, '2010-03-23 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1124, 0, '2010-03-23 16:45:00', '2010-03-23', NULL, 0, '2010-03-23 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1125, 0, '2010-03-24 09:00:00', '2010-03-24', NULL, 0, '2010-03-24 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1126, 0, '2010-03-24 09:15:00', '2010-03-24', NULL, 0, '2010-03-24 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1127, 0, '2010-03-24 09:30:00', '2010-03-24', NULL, 0, '2010-03-24 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1128, 0, '2010-03-24 09:45:00', '2010-03-24', NULL, 0, '2010-03-24 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1129, 0, '2010-03-24 10:00:00', '2010-03-24', NULL, 0, '2010-03-24 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1130, 0, '2010-03-24 10:15:00', '2010-03-24', NULL, 0, '2010-03-24 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1131, 0, '2010-03-24 10:30:00', '2010-03-24', NULL, 0, '2010-03-24 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1132, 0, '2010-03-24 10:45:00', '2010-03-24', NULL, 0, '2010-03-24 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1133, 0, '2010-03-24 11:00:00', '2010-03-24', NULL, 0, '2010-03-24 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1134, 0, '2010-03-24 11:15:00', '2010-03-24', NULL, 0, '2010-03-24 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1135, 0, '2010-03-24 11:30:00', '2010-03-24', NULL, 0, '2010-03-24 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1136, 0, '2010-03-24 11:45:00', '2010-03-24', NULL, 0, '2010-03-24 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1138, 0, '2010-03-24 12:15:00', '2010-03-24', NULL, 0, '2010-03-24 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1139, 0, '2010-03-24 12:30:00', '2010-03-24', NULL, 0, '2010-03-24 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1140, 0, '2010-03-24 12:45:00', '2010-03-24', NULL, 0, '2010-03-24 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1141, 0, '2010-03-24 13:00:00', '2010-03-24', NULL, 0, '2010-03-24 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1142, 0, '2010-03-24 13:15:00', '2010-03-24', NULL, 0, '2010-03-24 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1143, 0, '2010-03-24 13:30:00', '2010-03-24', NULL, 0, '2010-03-24 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1144, 0, '2010-03-24 13:45:00', '2010-03-24', NULL, 0, '2010-03-24 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1145, 0, '2010-03-24 14:00:00', '2010-03-24', NULL, 0, '2010-03-24 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1146, 0, '2010-03-24 14:15:00', '2010-03-24', NULL, 0, '2010-03-24 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1147, 0, '2010-03-24 14:30:00', '2010-03-24', NULL, 0, '2010-03-24 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1148, 0, '2010-03-24 14:45:00', '2010-03-24', NULL, 0, '2010-03-24 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1149, 0, '2010-03-24 15:00:00', '2010-03-24', NULL, 0, '2010-03-24 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1150, 0, '2010-03-24 15:15:00', '2010-03-24', NULL, 0, '2010-03-24 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1151, 0, '2010-03-24 15:30:00', '2010-03-24', NULL, 0, '2010-03-24 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1152, 0, '2010-03-24 15:45:00', '2010-03-24', NULL, 0, '2010-03-24 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1153, 0, '2010-03-24 16:00:00', '2010-03-24', NULL, 0, '2010-03-24 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1154, 0, '2010-03-24 16:15:00', '2010-03-24', NULL, 0, '2010-03-24 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1156, 0, '2010-03-24 16:45:00', '2010-03-24', NULL, 0, '2010-03-24 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1157, 0, '2010-03-25 09:00:00', '2010-03-25', NULL, 0, '2010-03-25 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1158, 0, '2010-03-25 09:15:00', '2010-03-25', NULL, 0, '2010-03-25 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1159, 0, '2010-03-25 09:30:00', '2010-03-25', NULL, 0, '2010-03-25 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1160, 0, '2010-03-25 09:45:00', '2010-03-25', NULL, 0, '2010-03-25 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1161, 0, '2010-03-25 10:00:00', '2010-03-25', NULL, 0, '2010-03-25 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1162, 0, '2010-03-25 10:15:00', '2010-03-25', NULL, 0, '2010-03-25 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1163, 0, '2010-03-25 10:30:00', '2010-03-25', NULL, 0, '2010-03-25 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1164, 0, '2010-03-25 10:45:00', '2010-03-25', NULL, 0, '2010-03-25 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1165, 0, '2010-03-25 11:00:00', '2010-03-25', NULL, 0, '2010-03-25 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1166, 0, '2010-03-25 11:15:00', '2010-03-25', NULL, 0, '2010-03-25 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1167, 0, '2010-03-25 11:30:00', '2010-03-25', NULL, 0, '2010-03-25 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1168, 0, '2010-03-25 11:45:00', '2010-03-25', NULL, 0, '2010-03-25 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1169, 0, '2010-03-25 12:00:00', '2010-03-25', NULL, 0, '2010-03-25 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1171, 0, '2010-03-25 12:30:00', '2010-03-25', NULL, 0, '2010-03-25 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1172, 0, '2010-03-25 12:45:00', '2010-03-25', NULL, 0, '2010-03-25 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1173, 0, '2010-03-25 13:00:00', '2010-03-25', NULL, 0, '2010-03-25 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1174, 0, '2010-03-25 13:15:00', '2010-03-25', NULL, 0, '2010-03-25 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1175, 0, '2010-03-25 13:30:00', '2010-03-25', NULL, 0, '2010-03-25 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1176, 0, '2010-03-25 13:45:00', '2010-03-25', NULL, 0, '2010-03-25 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1177, 0, '2010-03-25 14:00:00', '2010-03-25', NULL, 0, '2010-03-25 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1178, 0, '2010-03-25 14:15:00', '2010-03-25', NULL, 0, '2010-03-25 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1179, 0, '2010-03-25 14:30:00', '2010-03-25', NULL, 0, '2010-03-25 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1180, 0, '2010-03-25 14:45:00', '2010-03-25', NULL, 0, '2010-03-25 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1181, 0, '2010-03-25 15:00:00', '2010-03-25', NULL, 0, '2010-03-25 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1182, 0, '2010-03-25 15:15:00', '2010-03-25', NULL, 0, '2010-03-25 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1183, 0, '2010-03-25 15:30:00', '2010-03-25', NULL, 0, '2010-03-25 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1184, 0, '2010-03-25 15:45:00', '2010-03-25', NULL, 0, '2010-03-25 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1185, 0, '2010-03-25 16:00:00', '2010-03-25', NULL, 0, '2010-03-25 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1186, 0, '2010-03-25 16:15:00', '2010-03-25', NULL, 0, '2010-03-25 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1187, 0, '2010-03-25 16:30:00', '2010-03-25', NULL, 0, '2010-03-25 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1188, 0, '2010-03-25 16:45:00', '2010-03-25', NULL, 0, '2010-03-25 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1189, 0, '2010-03-26 09:00:00', '2010-03-26', NULL, 0, '2010-03-26 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1190, 0, '2010-03-26 09:15:00', '2010-03-26', NULL, 0, '2010-03-26 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1191, 0, '2010-03-26 09:30:00', '2010-03-26', NULL, 0, '2010-03-26 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1192, 0, '2010-03-26 09:45:00', '2010-03-26', NULL, 0, '2010-03-26 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1193, 0, '2010-03-26 10:00:00', '2010-03-26', NULL, 0, '2010-03-26 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1194, 0, '2010-03-26 10:15:00', '2010-03-26', NULL, 0, '2010-03-26 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1195, 0, '2010-03-26 10:30:00', '2010-03-26', NULL, 0, '2010-03-26 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1196, 0, '2010-03-26 10:45:00', '2010-03-26', NULL, 0, '2010-03-26 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1197, 0, '2010-03-26 11:00:00', '2010-03-26', NULL, 0, '2010-03-26 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1198, 0, '2010-03-26 11:15:00', '2010-03-26', NULL, 0, '2010-03-26 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1199, 0, '2010-03-26 11:30:00', '2010-03-26', NULL, 0, '2010-03-26 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1200, 0, '2010-03-26 11:45:00', '2010-03-26', NULL, 0, '2010-03-26 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1201, 0, '2010-03-26 12:00:00', '2010-03-26', NULL, 0, '2010-03-26 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1202, 0, '2010-03-26 12:15:00', '2010-03-26', NULL, 0, '2010-03-26 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1203, 0, '2010-03-26 12:30:00', '2010-03-26', NULL, 0, '2010-03-26 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1205, 0, '2010-03-26 13:00:00', '2010-03-26', NULL, 0, '2010-03-26 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1206, 0, '2010-03-26 13:15:00', '2010-03-26', NULL, 0, '2010-03-26 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1207, 0, '2010-03-26 13:30:00', '2010-03-26', NULL, 0, '2010-03-26 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1208, 0, '2010-03-26 13:45:00', '2010-03-26', NULL, 0, '2010-03-26 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1209, 0, '2010-03-26 14:00:00', '2010-03-26', NULL, 0, '2010-03-26 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1210, 0, '2010-03-26 14:15:00', '2010-03-26', NULL, 0, '2010-03-26 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1211, 0, '2010-03-26 14:30:00', '2010-03-26', NULL, 0, '2010-03-26 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1212, 0, '2010-03-26 14:45:00', '2010-03-26', NULL, 0, '2010-03-26 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1213, 0, '2010-03-26 15:00:00', '2010-03-26', NULL, 0, '2010-03-26 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1214, 0, '2010-03-26 15:15:00', '2010-03-26', NULL, 0, '2010-03-26 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1215, 0, '2010-03-26 15:30:00', '2010-03-26', NULL, 0, '2010-03-26 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1216, 0, '2010-03-26 15:45:00', '2010-03-26', NULL, 0, '2010-03-26 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1217, 0, '2010-03-26 16:00:00', '2010-03-26', NULL, 0, '2010-03-26 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1218, 0, '2010-03-26 16:15:00', '2010-03-26', NULL, 0, '2010-03-26 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1219, 0, '2010-03-26 16:30:00', '2010-03-26', NULL, 0, '2010-03-26 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1220, 0, '2010-03-26 16:45:00', '2010-03-26', NULL, 0, '2010-03-26 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1221, 0, '2010-03-29 09:00:00', '2010-03-29', NULL, 0, '2010-03-29 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1222, 0, '2010-03-29 09:15:00', '2010-03-29', NULL, 0, '2010-03-29 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1223, 0, '2010-03-29 09:30:00', '2010-03-29', NULL, 0, '2010-03-29 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1224, 0, '2010-03-29 09:45:00', '2010-03-29', NULL, 0, '2010-03-29 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1225, 0, '2010-03-29 10:00:00', '2010-03-29', NULL, 0, '2010-03-29 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1226, 0, '2010-03-29 10:15:00', '2010-03-29', NULL, 0, '2010-03-29 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1227, 0, '2010-03-29 10:30:00', '2010-03-29', NULL, 0, '2010-03-29 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1228, 0, '2010-03-29 10:45:00', '2010-03-29', NULL, 0, '2010-03-29 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1229, 0, '2010-03-29 11:00:00', '2010-03-29', NULL, 0, '2010-03-29 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1230, 0, '2010-03-29 11:15:00', '2010-03-29', NULL, 0, '2010-03-29 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1231, 0, '2010-03-29 11:30:00', '2010-03-29', NULL, 0, '2010-03-29 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1232, 0, '2010-03-29 11:45:00', '2010-03-29', NULL, 0, '2010-03-29 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1233, 0, '2010-03-29 12:00:00', '2010-03-29', NULL, 0, '2010-03-29 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1234, 0, '2010-03-29 12:15:00', '2010-03-29', NULL, 0, '2010-03-29 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1235, 0, '2010-03-29 12:30:00', '2010-03-29', NULL, 0, '2010-03-29 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1236, 0, '2010-03-29 12:45:00', '2010-03-29', NULL, 0, '2010-03-29 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1237, 0, '2010-03-29 13:00:00', '2010-03-29', NULL, 0, '2010-03-29 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1238, 0, '2010-03-29 13:15:00', '2010-03-29', NULL, 0, '2010-03-29 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1239, 0, '2010-03-29 13:30:00', '2010-03-29', NULL, 0, '2010-03-29 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1240, 0, '2010-03-29 13:45:00', '2010-03-29', NULL, 0, '2010-03-29 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1241, 0, '2010-03-29 14:00:00', '2010-03-29', NULL, 0, '2010-03-29 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1242, 0, '2010-03-29 14:15:00', '2010-03-29', NULL, 0, '2010-03-29 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1243, 0, '2010-03-29 14:30:00', '2010-03-29', NULL, 0, '2010-03-29 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1244, 0, '2010-03-29 14:45:00', '2010-03-29', NULL, 0, '2010-03-29 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1245, 0, '2010-03-29 15:00:00', '2010-03-29', NULL, 0, '2010-03-29 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1246, 0, '2010-03-29 15:15:00', '2010-03-29', NULL, 0, '2010-03-29 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1247, 0, '2010-03-29 15:30:00', '2010-03-29', NULL, 0, '2010-03-29 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1248, 0, '2010-03-29 15:45:00', '2010-03-29', NULL, 0, '2010-03-29 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1249, 0, '2010-03-29 16:00:00', '2010-03-29', NULL, 0, '2010-03-29 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1250, 0, '2010-03-29 16:15:00', '2010-03-29', NULL, 0, '2010-03-29 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1251, 0, '2010-03-29 16:30:00', '2010-03-29', NULL, 0, '2010-03-29 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1252, 0, '2010-03-29 16:45:00', '2010-03-29', NULL, 0, '2010-03-29 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1253, 0, '2010-03-30 09:00:00', '2010-03-30', NULL, 0, '2010-03-30 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1254, 0, '2010-03-30 09:15:00', '2010-03-30', NULL, 0, '2010-03-30 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1255, 0, '2010-03-30 09:30:00', '2010-03-30', NULL, 0, '2010-03-30 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1256, 0, '2010-03-30 09:45:00', '2010-03-30', NULL, 0, '2010-03-30 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1257, 0, '2010-03-30 10:00:00', '2010-03-30', NULL, 0, '2010-03-30 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1258, 0, '2010-03-30 10:15:00', '2010-03-30', NULL, 0, '2010-03-30 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1259, 0, '2010-03-30 10:30:00', '2010-03-30', NULL, 0, '2010-03-30 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1260, 0, '2010-03-30 10:45:00', '2010-03-30', NULL, 0, '2010-03-30 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1261, 0, '2010-03-30 11:00:00', '2010-03-30', NULL, 0, '2010-03-30 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1262, 0, '2010-03-30 11:15:00', '2010-03-30', NULL, 0, '2010-03-30 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1263, 0, '2010-03-30 11:30:00', '2010-03-30', NULL, 0, '2010-03-30 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1264, 0, '2010-03-30 11:45:00', '2010-03-30', NULL, 0, '2010-03-30 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1265, 0, '2010-03-30 12:00:00', '2010-03-30', NULL, 0, '2010-03-30 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1266, 0, '2010-03-30 12:15:00', '2010-03-30', NULL, 0, '2010-03-30 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1267, 0, '2010-03-30 12:30:00', '2010-03-30', NULL, 0, '2010-03-30 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1268, 0, '2010-03-30 12:45:00', '2010-03-30', NULL, 0, '2010-03-30 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1269, 0, '2010-03-30 13:00:00', '2010-03-30', NULL, 0, '2010-03-30 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1270, 0, '2010-03-30 13:15:00', '2010-03-30', NULL, 0, '2010-03-30 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1271, 0, '2010-03-30 13:30:00', '2010-03-30', NULL, 0, '2010-03-30 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1272, 0, '2010-03-30 13:45:00', '2010-03-30', NULL, 0, '2010-03-30 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1273, 0, '2010-03-30 14:00:00', '2010-03-30', NULL, 0, '2010-03-30 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1274, 0, '2010-03-30 14:15:00', '2010-03-30', NULL, 0, '2010-03-30 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1275, 0, '2010-03-30 14:30:00', '2010-03-30', NULL, 0, '2010-03-30 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1276, 0, '2010-03-30 14:45:00', '2010-03-30', NULL, 0, '2010-03-30 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1277, 0, '2010-03-30 15:00:00', '2010-03-30', NULL, 0, '2010-03-30 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1278, 0, '2010-03-30 15:15:00', '2010-03-30', NULL, 0, '2010-03-30 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1279, 0, '2010-03-30 15:30:00', '2010-03-30', NULL, 0, '2010-03-30 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1280, 0, '2010-03-30 15:45:00', '2010-03-30', NULL, 0, '2010-03-30 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1281, 0, '2010-03-30 16:00:00', '2010-03-30', NULL, 0, '2010-03-30 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1282, 0, '2010-03-30 16:15:00', '2010-03-30', NULL, 0, '2010-03-30 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1283, 0, '2010-03-30 16:30:00', '2010-03-30', NULL, 0, '2010-03-30 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1284, 0, '2010-03-30 16:45:00', '2010-03-30', NULL, 0, '2010-03-30 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1285, 0, '2010-03-31 09:00:00', '2010-03-31', NULL, 0, '2010-03-31 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1286, 0, '2010-03-31 09:15:00', '2010-03-31', NULL, 0, '2010-03-31 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1287, 0, '2010-03-31 09:30:00', '2010-03-31', NULL, 0, '2010-03-31 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1288, 0, '2010-03-31 09:45:00', '2010-03-31', NULL, 0, '2010-03-31 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1289, 0, '2010-03-31 10:00:00', '2010-03-31', NULL, 0, '2010-03-31 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1290, 0, '2010-03-31 10:15:00', '2010-03-31', NULL, 0, '2010-03-31 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1291, 0, '2010-03-31 10:30:00', '2010-03-31', NULL, 0, '2010-03-31 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1292, 0, '2010-03-31 10:45:00', '2010-03-31', NULL, 0, '2010-03-31 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1293, 0, '2010-03-31 11:00:00', '2010-03-31', NULL, 0, '2010-03-31 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1294, 0, '2010-03-31 11:15:00', '2010-03-31', NULL, 0, '2010-03-31 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1295, 0, '2010-03-31 11:30:00', '2010-03-31', NULL, 0, '2010-03-31 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1296, 0, '2010-03-31 11:45:00', '2010-03-31', NULL, 0, '2010-03-31 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1297, 0, '2010-03-31 12:00:00', '2010-03-31', NULL, 0, '2010-03-31 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1298, 0, '2010-03-31 12:15:00', '2010-03-31', NULL, 0, '2010-03-31 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1299, 0, '2010-03-31 12:30:00', '2010-03-31', NULL, 0, '2010-03-31 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1300, 0, '2010-03-31 12:45:00', '2010-03-31', NULL, 0, '2010-03-31 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1301, 0, '2010-03-31 13:00:00', '2010-03-31', NULL, 0, '2010-03-31 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1302, 0, '2010-03-31 13:15:00', '2010-03-31', NULL, 0, '2010-03-31 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1303, 0, '2010-03-31 13:30:00', '2010-03-31', NULL, 0, '2010-03-31 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1304, 0, '2010-03-31 13:45:00', '2010-03-31', NULL, 0, '2010-03-31 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1305, 0, '2010-03-31 14:00:00', '2010-03-31', NULL, 0, '2010-03-31 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1306, 0, '2010-03-31 14:15:00', '2010-03-31', NULL, 0, '2010-03-31 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1307, 0, '2010-03-31 14:30:00', '2010-03-31', NULL, 0, '2010-03-31 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1308, 0, '2010-03-31 14:45:00', '2010-03-31', NULL, 0, '2010-03-31 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1309, 0, '2010-03-31 15:00:00', '2010-03-31', NULL, 0, '2010-03-31 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1310, 0, '2010-03-31 15:15:00', '2010-03-31', NULL, 0, '2010-03-31 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1311, 0, '2010-03-31 15:30:00', '2010-03-31', NULL, 0, '2010-03-31 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1312, 0, '2010-03-31 15:45:00', '2010-03-31', NULL, 0, '2010-03-31 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1313, 0, '2010-03-31 16:00:00', '2010-03-31', NULL, 0, '2010-03-31 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1314, 0, '2010-03-31 16:15:00', '2010-03-31', NULL, 0, '2010-03-31 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1315, 0, '2010-03-31 16:30:00', '2010-03-31', NULL, 0, '2010-03-31 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1316, 0, '2010-03-31 16:45:00', '2010-03-31', NULL, 0, '2010-03-31 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1317, 0, '2010-04-01 09:00:00', '2010-04-01', NULL, 0, '2010-04-01 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1318, 0, '2010-04-01 09:15:00', '2010-04-01', NULL, 0, '2010-04-01 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1319, 0, '2010-04-01 09:30:00', '2010-04-01', NULL, 0, '2010-04-01 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1320, 0, '2010-04-01 09:45:00', '2010-04-01', NULL, 0, '2010-04-01 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1321, 0, '2010-04-01 10:00:00', '2010-04-01', NULL, 0, '2010-04-01 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1322, 0, '2010-04-01 10:15:00', '2010-04-01', NULL, 0, '2010-04-01 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1323, 0, '2010-04-01 10:30:00', '2010-04-01', NULL, 0, '2010-04-01 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1324, 0, '2010-04-01 10:45:00', '2010-04-01', NULL, 0, '2010-04-01 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1325, 0, '2010-04-01 11:00:00', '2010-04-01', NULL, 0, '2010-04-01 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1326, 0, '2010-04-01 11:15:00', '2010-04-01', NULL, 0, '2010-04-01 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1327, 0, '2010-04-01 11:30:00', '2010-04-01', NULL, 0, '2010-04-01 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1328, 0, '2010-04-01 11:45:00', '2010-04-01', NULL, 0, '2010-04-01 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1329, 0, '2010-04-01 12:00:00', '2010-04-01', NULL, 0, '2010-04-01 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1330, 0, '2010-04-01 12:15:00', '2010-04-01', NULL, 0, '2010-04-01 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1331, 0, '2010-04-01 12:30:00', '2010-04-01', NULL, 0, '2010-04-01 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1332, 0, '2010-04-01 12:45:00', '2010-04-01', NULL, 0, '2010-04-01 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1333, 0, '2010-04-01 13:00:00', '2010-04-01', NULL, 0, '2010-04-01 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1334, 0, '2010-04-01 13:15:00', '2010-04-01', NULL, 0, '2010-04-01 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1335, 0, '2010-04-01 13:30:00', '2010-04-01', NULL, 0, '2010-04-01 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1336, 0, '2010-04-01 13:45:00', '2010-04-01', NULL, 0, '2010-04-01 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1337, 0, '2010-04-01 14:00:00', '2010-04-01', NULL, 0, '2010-04-01 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1338, 0, '2010-04-01 14:15:00', '2010-04-01', NULL, 0, '2010-04-01 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1339, 0, '2010-04-01 14:30:00', '2010-04-01', NULL, 0, '2010-04-01 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1340, 0, '2010-04-01 14:45:00', '2010-04-01', NULL, 0, '2010-04-01 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1341, 0, '2010-04-01 15:00:00', '2010-04-01', NULL, 0, '2010-04-01 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1342, 0, '2010-04-01 15:15:00', '2010-04-01', NULL, 0, '2010-04-01 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1343, 0, '2010-04-01 15:30:00', '2010-04-01', NULL, 0, '2010-04-01 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1344, 0, '2010-04-01 15:45:00', '2010-04-01', NULL, 0, '2010-04-01 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1345, 0, '2010-04-01 16:00:00', '2010-04-01', NULL, 0, '2010-04-01 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1346, 0, '2010-04-01 16:15:00', '2010-04-01', NULL, 0, '2010-04-01 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1347, 0, '2010-04-01 16:30:00', '2010-04-01', NULL, 0, '2010-04-01 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1348, 0, '2010-04-01 16:45:00', '2010-04-01', NULL, 0, '2010-04-01 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1349, 0, '2010-04-02 09:00:00', '2010-04-02', NULL, 0, '2010-04-02 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1350, 0, '2010-04-02 09:15:00', '2010-04-02', NULL, 0, '2010-04-02 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1351, 0, '2010-04-02 09:30:00', '2010-04-02', NULL, 0, '2010-04-02 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1352, 0, '2010-04-02 09:45:00', '2010-04-02', NULL, 0, '2010-04-02 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1353, 0, '2010-04-02 10:00:00', '2010-04-02', NULL, 0, '2010-04-02 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1354, 0, '2010-04-02 10:15:00', '2010-04-02', NULL, 0, '2010-04-02 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1355, 0, '2010-04-02 10:30:00', '2010-04-02', NULL, 0, '2010-04-02 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1356, 0, '2010-04-02 10:45:00', '2010-04-02', NULL, 0, '2010-04-02 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1357, 0, '2010-04-02 11:00:00', '2010-04-02', NULL, 0, '2010-04-02 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1358, 0, '2010-04-02 11:15:00', '2010-04-02', NULL, 0, '2010-04-02 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1359, 0, '2010-04-02 11:30:00', '2010-04-02', NULL, 0, '2010-04-02 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1360, 0, '2010-04-02 11:45:00', '2010-04-02', NULL, 0, '2010-04-02 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1361, 0, '2010-04-02 12:00:00', '2010-04-02', NULL, 0, '2010-04-02 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1362, 0, '2010-04-02 12:15:00', '2010-04-02', NULL, 0, '2010-04-02 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1363, 0, '2010-04-02 12:30:00', '2010-04-02', NULL, 0, '2010-04-02 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1364, 0, '2010-04-02 12:45:00', '2010-04-02', NULL, 0, '2010-04-02 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1365, 0, '2010-04-02 13:00:00', '2010-04-02', NULL, 0, '2010-04-02 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1366, 0, '2010-04-02 13:15:00', '2010-04-02', NULL, 0, '2010-04-02 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1367, 0, '2010-04-02 13:30:00', '2010-04-02', NULL, 0, '2010-04-02 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1368, 0, '2010-04-02 13:45:00', '2010-04-02', NULL, 0, '2010-04-02 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1369, 0, '2010-04-02 14:00:00', '2010-04-02', NULL, 0, '2010-04-02 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1370, 0, '2010-04-02 14:15:00', '2010-04-02', NULL, 0, '2010-04-02 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1371, 0, '2010-04-02 14:30:00', '2010-04-02', NULL, 0, '2010-04-02 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1372, 0, '2010-04-02 14:45:00', '2010-04-02', NULL, 0, '2010-04-02 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1373, 0, '2010-04-02 15:00:00', '2010-04-02', NULL, 0, '2010-04-02 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1374, 0, '2010-04-02 15:15:00', '2010-04-02', NULL, 0, '2010-04-02 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1375, 0, '2010-04-02 15:30:00', '2010-04-02', NULL, 0, '2010-04-02 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1376, 0, '2010-04-02 15:45:00', '2010-04-02', NULL, 0, '2010-04-02 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1377, 0, '2010-04-02 16:00:00', '2010-04-02', NULL, 0, '2010-04-02 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1378, 0, '2010-04-02 16:15:00', '2010-04-02', NULL, 0, '2010-04-02 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1379, 0, '2010-04-02 16:30:00', '2010-04-02', NULL, 0, '2010-04-02 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1380, 0, '2010-04-02 16:45:00', '2010-04-02', NULL, 0, '2010-04-02 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1381, 0, '2010-04-05 09:00:00', '2010-04-05', NULL, 0, '2010-04-05 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1382, 0, '2010-04-05 09:15:00', '2010-04-05', NULL, 0, '2010-04-05 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1383, 0, '2010-04-05 09:30:00', '2010-04-05', NULL, 0, '2010-04-05 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1384, 0, '2010-04-05 09:45:00', '2010-04-05', NULL, 0, '2010-04-05 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1385, 0, '2010-04-05 10:00:00', '2010-04-05', NULL, 0, '2010-04-05 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1386, 0, '2010-04-05 10:15:00', '2010-04-05', NULL, 0, '2010-04-05 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1387, 0, '2010-04-05 10:30:00', '2010-04-05', NULL, 0, '2010-04-05 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1388, 0, '2010-04-05 10:45:00', '2010-04-05', NULL, 0, '2010-04-05 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1389, 0, '2010-04-05 11:00:00', '2010-04-05', NULL, 0, '2010-04-05 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1390, 0, '2010-04-05 11:15:00', '2010-04-05', NULL, 0, '2010-04-05 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1391, 0, '2010-04-05 11:30:00', '2010-04-05', NULL, 0, '2010-04-05 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1392, 0, '2010-04-05 11:45:00', '2010-04-05', NULL, 0, '2010-04-05 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1393, 0, '2010-04-05 12:00:00', '2010-04-05', NULL, 0, '2010-04-05 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1394, 0, '2010-04-05 12:15:00', '2010-04-05', NULL, 0, '2010-04-05 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1395, 0, '2010-04-05 12:30:00', '2010-04-05', NULL, 0, '2010-04-05 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1396, 0, '2010-04-05 12:45:00', '2010-04-05', NULL, 0, '2010-04-05 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1397, 0, '2010-04-05 13:00:00', '2010-04-05', NULL, 0, '2010-04-05 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1398, 0, '2010-04-05 13:15:00', '2010-04-05', NULL, 0, '2010-04-05 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1399, 0, '2010-04-05 13:30:00', '2010-04-05', NULL, 0, '2010-04-05 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1400, 0, '2010-04-05 13:45:00', '2010-04-05', NULL, 0, '2010-04-05 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1401, 0, '2010-04-05 14:00:00', '2010-04-05', NULL, 0, '2010-04-05 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1402, 0, '2010-04-05 14:15:00', '2010-04-05', NULL, 0, '2010-04-05 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1403, 0, '2010-04-05 14:30:00', '2010-04-05', NULL, 0, '2010-04-05 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1404, 0, '2010-04-05 14:45:00', '2010-04-05', NULL, 0, '2010-04-05 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1405, 0, '2010-04-05 15:00:00', '2010-04-05', NULL, 0, '2010-04-05 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1406, 0, '2010-04-05 15:15:00', '2010-04-05', NULL, 0, '2010-04-05 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1407, 0, '2010-04-05 15:30:00', '2010-04-05', NULL, 0, '2010-04-05 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1408, 0, '2010-04-05 15:45:00', '2010-04-05', NULL, 0, '2010-04-05 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1409, 0, '2010-04-05 16:00:00', '2010-04-05', NULL, 0, '2010-04-05 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1410, 0, '2010-04-05 16:15:00', '2010-04-05', NULL, 0, '2010-04-05 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1411, 0, '2010-04-05 16:30:00', '2010-04-05', NULL, 0, '2010-04-05 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1412, 0, '2010-04-05 16:45:00', '2010-04-05', NULL, 0, '2010-04-05 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1413, 0, '2010-04-06 09:00:00', '2010-04-06', NULL, 0, '2010-04-06 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1414, 0, '2010-04-06 09:15:00', '2010-04-06', NULL, 0, '2010-04-06 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1415, 0, '2010-04-06 09:30:00', '2010-04-06', NULL, 0, '2010-04-06 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1416, 0, '2010-04-06 09:45:00', '2010-04-06', NULL, 0, '2010-04-06 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1417, 0, '2010-04-06 10:00:00', '2010-04-06', NULL, 0, '2010-04-06 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1418, 0, '2010-04-06 10:15:00', '2010-04-06', NULL, 0, '2010-04-06 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1419, 0, '2010-04-06 10:30:00', '2010-04-06', NULL, 0, '2010-04-06 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1420, 0, '2010-04-06 10:45:00', '2010-04-06', NULL, 0, '2010-04-06 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1421, 0, '2010-04-06 11:00:00', '2010-04-06', NULL, 0, '2010-04-06 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1422, 0, '2010-04-06 11:15:00', '2010-04-06', NULL, 0, '2010-04-06 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1423, 0, '2010-04-06 11:30:00', '2010-04-06', NULL, 0, '2010-04-06 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1424, 0, '2010-04-06 11:45:00', '2010-04-06', NULL, 0, '2010-04-06 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1425, 0, '2010-04-06 12:00:00', '2010-04-06', NULL, 0, '2010-04-06 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1426, 0, '2010-04-06 12:15:00', '2010-04-06', NULL, 0, '2010-04-06 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1427, 0, '2010-04-06 12:30:00', '2010-04-06', NULL, 0, '2010-04-06 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1428, 0, '2010-04-06 12:45:00', '2010-04-06', NULL, 0, '2010-04-06 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1429, 0, '2010-04-06 13:00:00', '2010-04-06', NULL, 0, '2010-04-06 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1430, 0, '2010-04-06 13:15:00', '2010-04-06', NULL, 0, '2010-04-06 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1431, 0, '2010-04-06 13:30:00', '2010-04-06', NULL, 0, '2010-04-06 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1432, 0, '2010-04-06 13:45:00', '2010-04-06', NULL, 0, '2010-04-06 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1433, 0, '2010-04-06 14:00:00', '2010-04-06', NULL, 0, '2010-04-06 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1434, 0, '2010-04-06 14:15:00', '2010-04-06', NULL, 0, '2010-04-06 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1435, 0, '2010-04-06 14:30:00', '2010-04-06', NULL, 0, '2010-04-06 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1436, 0, '2010-04-06 14:45:00', '2010-04-06', NULL, 0, '2010-04-06 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1437, 0, '2010-04-06 15:00:00', '2010-04-06', NULL, 0, '2010-04-06 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1438, 0, '2010-04-06 15:15:00', '2010-04-06', NULL, 0, '2010-04-06 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1439, 0, '2010-04-06 15:30:00', '2010-04-06', NULL, 0, '2010-04-06 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1440, 0, '2010-04-06 15:45:00', '2010-04-06', NULL, 0, '2010-04-06 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1441, 0, '2010-04-06 16:00:00', '2010-04-06', NULL, 0, '2010-04-06 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1442, 0, '2010-04-06 16:15:00', '2010-04-06', NULL, 0, '2010-04-06 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1443, 0, '2010-04-06 16:30:00', '2010-04-06', NULL, 0, '2010-04-06 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1444, 0, '2010-04-06 16:45:00', '2010-04-06', NULL, 0, '2010-04-06 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1445, 0, '2010-04-07 09:00:00', '2010-04-07', NULL, 0, '2010-04-07 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1446, 0, '2010-04-07 09:15:00', '2010-04-07', NULL, 0, '2010-04-07 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1447, 0, '2010-04-07 09:30:00', '2010-04-07', NULL, 0, '2010-04-07 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1448, 0, '2010-04-07 09:45:00', '2010-04-07', NULL, 0, '2010-04-07 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1449, 0, '2010-04-07 10:00:00', '2010-04-07', NULL, 0, '2010-04-07 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1450, 0, '2010-04-07 10:15:00', '2010-04-07', NULL, 0, '2010-04-07 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1451, 0, '2010-04-07 10:30:00', '2010-04-07', NULL, 0, '2010-04-07 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1452, 0, '2010-04-07 10:45:00', '2010-04-07', NULL, 0, '2010-04-07 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1453, 0, '2010-04-07 11:00:00', '2010-04-07', NULL, 0, '2010-04-07 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1454, 0, '2010-04-07 11:15:00', '2010-04-07', NULL, 0, '2010-04-07 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1455, 0, '2010-04-07 11:30:00', '2010-04-07', NULL, 0, '2010-04-07 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1456, 0, '2010-04-07 11:45:00', '2010-04-07', NULL, 0, '2010-04-07 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1457, 0, '2010-04-07 12:00:00', '2010-04-07', NULL, 0, '2010-04-07 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1458, 0, '2010-04-07 12:15:00', '2010-04-07', NULL, 0, '2010-04-07 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1459, 0, '2010-04-07 12:30:00', '2010-04-07', NULL, 0, '2010-04-07 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1460, 0, '2010-04-07 12:45:00', '2010-04-07', NULL, 0, '2010-04-07 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1461, 0, '2010-04-07 13:00:00', '2010-04-07', NULL, 0, '2010-04-07 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1462, 0, '2010-04-07 13:15:00', '2010-04-07', NULL, 0, '2010-04-07 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1463, 0, '2010-04-07 13:30:00', '2010-04-07', NULL, 0, '2010-04-07 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1464, 0, '2010-04-07 13:45:00', '2010-04-07', NULL, 0, '2010-04-07 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1465, 0, '2010-04-07 14:00:00', '2010-04-07', NULL, 0, '2010-04-07 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1466, 0, '2010-04-07 14:15:00', '2010-04-07', NULL, 0, '2010-04-07 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1467, 0, '2010-04-07 14:30:00', '2010-04-07', NULL, 0, '2010-04-07 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1468, 0, '2010-04-07 14:45:00', '2010-04-07', NULL, 0, '2010-04-07 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1469, 0, '2010-04-07 15:00:00', '2010-04-07', NULL, 0, '2010-04-07 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1470, 0, '2010-04-07 15:15:00', '2010-04-07', NULL, 0, '2010-04-07 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1471, 0, '2010-04-07 15:30:00', '2010-04-07', NULL, 0, '2010-04-07 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1472, 0, '2010-04-07 15:45:00', '2010-04-07', NULL, 0, '2010-04-07 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1473, 0, '2010-04-07 16:00:00', '2010-04-07', NULL, 0, '2010-04-07 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1474, 0, '2010-04-07 16:15:00', '2010-04-07', NULL, 0, '2010-04-07 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1475, 0, '2010-04-07 16:30:00', '2010-04-07', NULL, 0, '2010-04-07 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1476, 0, '2010-04-07 16:45:00', '2010-04-07', NULL, 0, '2010-04-07 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1477, 0, '2010-04-08 09:00:00', '2010-04-08', NULL, 0, '2010-04-08 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1478, 0, '2010-04-08 09:15:00', '2010-04-08', NULL, 0, '2010-04-08 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1479, 0, '2010-04-08 09:30:00', '2010-04-08', NULL, 0, '2010-04-08 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1480, 0, '2010-04-08 09:45:00', '2010-04-08', NULL, 0, '2010-04-08 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1481, 0, '2010-04-08 10:00:00', '2010-04-08', NULL, 0, '2010-04-08 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1482, 0, '2010-04-08 10:15:00', '2010-04-08', NULL, 0, '2010-04-08 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1483, 0, '2010-04-08 10:30:00', '2010-04-08', NULL, 0, '2010-04-08 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1484, 0, '2010-04-08 10:45:00', '2010-04-08', NULL, 0, '2010-04-08 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1485, 0, '2010-04-08 11:00:00', '2010-04-08', NULL, 0, '2010-04-08 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1486, 0, '2010-04-08 11:15:00', '2010-04-08', NULL, 0, '2010-04-08 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1487, 0, '2010-04-08 11:30:00', '2010-04-08', NULL, 0, '2010-04-08 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1488, 0, '2010-04-08 11:45:00', '2010-04-08', NULL, 0, '2010-04-08 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1489, 0, '2010-04-08 12:00:00', '2010-04-08', NULL, 0, '2010-04-08 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1490, 0, '2010-04-08 12:15:00', '2010-04-08', NULL, 0, '2010-04-08 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1491, 0, '2010-04-08 12:30:00', '2010-04-08', NULL, 0, '2010-04-08 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1492, 0, '2010-04-08 12:45:00', '2010-04-08', NULL, 0, '2010-04-08 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1493, 0, '2010-04-08 13:00:00', '2010-04-08', NULL, 0, '2010-04-08 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1494, 0, '2010-04-08 13:15:00', '2010-04-08', NULL, 0, '2010-04-08 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1495, 0, '2010-04-08 13:30:00', '2010-04-08', NULL, 0, '2010-04-08 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1496, 0, '2010-04-08 13:45:00', '2010-04-08', NULL, 0, '2010-04-08 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1497, 0, '2010-04-08 14:00:00', '2010-04-08', NULL, 0, '2010-04-08 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1498, 0, '2010-04-08 14:15:00', '2010-04-08', NULL, 0, '2010-04-08 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1499, 0, '2010-04-08 14:30:00', '2010-04-08', NULL, 0, '2010-04-08 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1500, 0, '2010-04-08 14:45:00', '2010-04-08', NULL, 0, '2010-04-08 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1501, 0, '2010-04-08 15:00:00', '2010-04-08', NULL, 0, '2010-04-08 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1502, 0, '2010-04-08 15:15:00', '2010-04-08', NULL, 0, '2010-04-08 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1503, 0, '2010-04-08 15:30:00', '2010-04-08', NULL, 0, '2010-04-08 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1504, 0, '2010-04-08 15:45:00', '2010-04-08', NULL, 0, '2010-04-08 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1505, 0, '2010-04-08 16:00:00', '2010-04-08', NULL, 0, '2010-04-08 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1506, 0, '2010-04-08 16:15:00', '2010-04-08', NULL, 0, '2010-04-08 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1507, 0, '2010-04-08 16:30:00', '2010-04-08', NULL, 0, '2010-04-08 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1508, 0, '2010-04-08 16:45:00', '2010-04-08', NULL, 0, '2010-04-08 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1509, 0, '2010-04-09 09:00:00', '2010-04-09', NULL, 0, '2010-04-09 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1510, 0, '2010-04-09 09:15:00', '2010-04-09', NULL, 0, '2010-04-09 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1511, 0, '2010-04-09 09:30:00', '2010-04-09', NULL, 0, '2010-04-09 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1512, 0, '2010-04-09 09:45:00', '2010-04-09', NULL, 0, '2010-04-09 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1513, 0, '2010-04-09 10:00:00', '2010-04-09', NULL, 0, '2010-04-09 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1514, 0, '2010-04-09 10:15:00', '2010-04-09', NULL, 0, '2010-04-09 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1515, 0, '2010-04-09 10:30:00', '2010-04-09', NULL, 0, '2010-04-09 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1516, 0, '2010-04-09 10:45:00', '2010-04-09', NULL, 0, '2010-04-09 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1517, 0, '2010-04-09 11:00:00', '2010-04-09', NULL, 0, '2010-04-09 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1518, 0, '2010-04-09 11:15:00', '2010-04-09', NULL, 0, '2010-04-09 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1519, 0, '2010-04-09 11:30:00', '2010-04-09', NULL, 0, '2010-04-09 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1520, 0, '2010-04-09 11:45:00', '2010-04-09', NULL, 0, '2010-04-09 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1521, 0, '2010-04-09 12:00:00', '2010-04-09', NULL, 0, '2010-04-09 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1522, 0, '2010-04-09 12:15:00', '2010-04-09', NULL, 0, '2010-04-09 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1523, 0, '2010-04-09 12:30:00', '2010-04-09', NULL, 0, '2010-04-09 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1524, 0, '2010-04-09 12:45:00', '2010-04-09', NULL, 0, '2010-04-09 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1525, 0, '2010-04-09 13:00:00', '2010-04-09', NULL, 0, '2010-04-09 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1526, 0, '2010-04-09 13:15:00', '2010-04-09', NULL, 0, '2010-04-09 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1527, 0, '2010-04-09 13:30:00', '2010-04-09', NULL, 0, '2010-04-09 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1528, 0, '2010-04-09 13:45:00', '2010-04-09', NULL, 0, '2010-04-09 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1529, 0, '2010-04-09 14:00:00', '2010-04-09', NULL, 0, '2010-04-09 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1530, 0, '2010-04-09 14:15:00', '2010-04-09', NULL, 0, '2010-04-09 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1531, 0, '2010-04-09 14:30:00', '2010-04-09', NULL, 0, '2010-04-09 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1532, 0, '2010-04-09 14:45:00', '2010-04-09', NULL, 0, '2010-04-09 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1533, 0, '2010-04-09 15:00:00', '2010-04-09', NULL, 0, '2010-04-09 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1534, 0, '2010-04-09 15:15:00', '2010-04-09', NULL, 0, '2010-04-09 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1535, 0, '2010-04-09 15:30:00', '2010-04-09', NULL, 0, '2010-04-09 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1536, 0, '2010-04-09 15:45:00', '2010-04-09', NULL, 0, '2010-04-09 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1537, 0, '2010-04-09 16:00:00', '2010-04-09', NULL, 0, '2010-04-09 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1538, 0, '2010-04-09 16:15:00', '2010-04-09', NULL, 0, '2010-04-09 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1539, 0, '2010-04-09 16:30:00', '2010-04-09', NULL, 0, '2010-04-09 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1540, 0, '2010-04-09 16:45:00', '2010-04-09', NULL, 0, '2010-04-09 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1541, 0, '2010-04-12 09:00:00', '2010-04-12', NULL, 0, '2010-04-12 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1542, 0, '2010-04-12 09:15:00', '2010-04-12', NULL, 0, '2010-04-12 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1543, 0, '2010-04-12 09:30:00', '2010-04-12', NULL, 0, '2010-04-12 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1544, 0, '2010-04-12 09:45:00', '2010-04-12', NULL, 0, '2010-04-12 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1545, 0, '2010-04-12 10:00:00', '2010-04-12', NULL, 0, '2010-04-12 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1546, 0, '2010-04-12 10:15:00', '2010-04-12', NULL, 0, '2010-04-12 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1547, 0, '2010-04-12 10:30:00', '2010-04-12', NULL, 0, '2010-04-12 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1548, 0, '2010-04-12 10:45:00', '2010-04-12', NULL, 0, '2010-04-12 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1549, 0, '2010-04-12 11:00:00', '2010-04-12', NULL, 0, '2010-04-12 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1550, 0, '2010-04-12 11:15:00', '2010-04-12', NULL, 0, '2010-04-12 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1551, 0, '2010-04-12 11:30:00', '2010-04-12', NULL, 0, '2010-04-12 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1552, 0, '2010-04-12 11:45:00', '2010-04-12', NULL, 0, '2010-04-12 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1553, 0, '2010-04-12 12:00:00', '2010-04-12', NULL, 0, '2010-04-12 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1554, 0, '2010-04-12 12:15:00', '2010-04-12', NULL, 0, '2010-04-12 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1555, 0, '2010-04-12 12:30:00', '2010-04-12', NULL, 0, '2010-04-12 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1556, 0, '2010-04-12 12:45:00', '2010-04-12', NULL, 0, '2010-04-12 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1557, 0, '2010-04-12 13:00:00', '2010-04-12', NULL, 0, '2010-04-12 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1558, 0, '2010-04-12 13:15:00', '2010-04-12', NULL, 0, '2010-04-12 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1559, 0, '2010-04-12 13:30:00', '2010-04-12', NULL, 0, '2010-04-12 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1560, 0, '2010-04-12 13:45:00', '2010-04-12', NULL, 0, '2010-04-12 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1561, 0, '2010-04-12 14:00:00', '2010-04-12', NULL, 0, '2010-04-12 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1562, 0, '2010-04-12 14:15:00', '2010-04-12', NULL, 0, '2010-04-12 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1563, 0, '2010-04-12 14:30:00', '2010-04-12', NULL, 0, '2010-04-12 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1564, 0, '2010-04-12 14:45:00', '2010-04-12', NULL, 0, '2010-04-12 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1565, 0, '2010-04-12 15:00:00', '2010-04-12', NULL, 0, '2010-04-12 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1566, 0, '2010-04-12 15:15:00', '2010-04-12', NULL, 0, '2010-04-12 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1567, 0, '2010-04-12 15:30:00', '2010-04-12', NULL, 0, '2010-04-12 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1568, 0, '2010-04-12 15:45:00', '2010-04-12', NULL, 0, '2010-04-12 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1569, 0, '2010-04-12 16:00:00', '2010-04-12', NULL, 0, '2010-04-12 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1570, 0, '2010-04-12 16:15:00', '2010-04-12', NULL, 0, '2010-04-12 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1571, 0, '2010-04-12 16:30:00', '2010-04-12', NULL, 0, '2010-04-12 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1572, 0, '2010-04-12 16:45:00', '2010-04-12', NULL, 0, '2010-04-12 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1573, 0, '2010-04-13 09:00:00', '2010-04-13', NULL, 0, '2010-04-13 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1574, 0, '2010-04-13 09:15:00', '2010-04-13', NULL, 0, '2010-04-13 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1575, 0, '2010-04-13 09:30:00', '2010-04-13', NULL, 0, '2010-04-13 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1576, 0, '2010-04-13 09:45:00', '2010-04-13', NULL, 0, '2010-04-13 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1577, 0, '2010-04-13 10:00:00', '2010-04-13', NULL, 0, '2010-04-13 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1578, 0, '2010-04-13 10:15:00', '2010-04-13', NULL, 0, '2010-04-13 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1579, 0, '2010-04-13 10:30:00', '2010-04-13', NULL, 0, '2010-04-13 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1580, 0, '2010-04-13 10:45:00', '2010-04-13', NULL, 0, '2010-04-13 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1581, 0, '2010-04-13 11:00:00', '2010-04-13', NULL, 0, '2010-04-13 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1582, 0, '2010-04-13 11:15:00', '2010-04-13', NULL, 0, '2010-04-13 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1583, 0, '2010-04-13 11:30:00', '2010-04-13', NULL, 0, '2010-04-13 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1584, 0, '2010-04-13 11:45:00', '2010-04-13', NULL, 0, '2010-04-13 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1585, 0, '2010-04-13 12:00:00', '2010-04-13', NULL, 0, '2010-04-13 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1586, 0, '2010-04-13 12:15:00', '2010-04-13', NULL, 0, '2010-04-13 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1587, 0, '2010-04-13 12:30:00', '2010-04-13', NULL, 0, '2010-04-13 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1588, 0, '2010-04-13 12:45:00', '2010-04-13', NULL, 0, '2010-04-13 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1589, 0, '2010-04-13 13:00:00', '2010-04-13', NULL, 0, '2010-04-13 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1590, 0, '2010-04-13 13:15:00', '2010-04-13', NULL, 0, '2010-04-13 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1591, 0, '2010-04-13 13:30:00', '2010-04-13', NULL, 0, '2010-04-13 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1592, 0, '2010-04-13 13:45:00', '2010-04-13', NULL, 0, '2010-04-13 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1593, 0, '2010-04-13 14:00:00', '2010-04-13', NULL, 0, '2010-04-13 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1594, 0, '2010-04-13 14:15:00', '2010-04-13', NULL, 0, '2010-04-13 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1595, 0, '2010-04-13 14:30:00', '2010-04-13', NULL, 0, '2010-04-13 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1596, 0, '2010-04-13 14:45:00', '2010-04-13', NULL, 0, '2010-04-13 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1597, 0, '2010-04-13 15:00:00', '2010-04-13', NULL, 0, '2010-04-13 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1598, 0, '2010-04-13 15:15:00', '2010-04-13', NULL, 0, '2010-04-13 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1599, 0, '2010-04-13 15:30:00', '2010-04-13', NULL, 0, '2010-04-13 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1600, 0, '2010-04-13 15:45:00', '2010-04-13', NULL, 0, '2010-04-13 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1601, 0, '2010-04-13 16:00:00', '2010-04-13', NULL, 0, '2010-04-13 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1602, 0, '2010-04-13 16:15:00', '2010-04-13', NULL, 0, '2010-04-13 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1603, 0, '2010-04-13 16:30:00', '2010-04-13', NULL, 0, '2010-04-13 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1604, 0, '2010-04-13 16:45:00', '2010-04-13', NULL, 0, '2010-04-13 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1605, 0, '2010-04-14 09:00:00', '2010-04-14', NULL, 0, '2010-04-14 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1606, 0, '2010-04-14 09:15:00', '2010-04-14', NULL, 0, '2010-04-14 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1607, 0, '2010-04-14 09:30:00', '2010-04-14', NULL, 0, '2010-04-14 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1608, 0, '2010-04-14 09:45:00', '2010-04-14', NULL, 0, '2010-04-14 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1609, 0, '2010-04-14 10:00:00', '2010-04-14', NULL, 0, '2010-04-14 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1610, 0, '2010-04-14 10:15:00', '2010-04-14', NULL, 0, '2010-04-14 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1611, 0, '2010-04-14 10:30:00', '2010-04-14', NULL, 0, '2010-04-14 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1612, 0, '2010-04-14 10:45:00', '2010-04-14', NULL, 0, '2010-04-14 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1613, 0, '2010-04-14 11:00:00', '2010-04-14', NULL, 0, '2010-04-14 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1614, 0, '2010-04-14 11:15:00', '2010-04-14', NULL, 0, '2010-04-14 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1615, 0, '2010-04-14 11:30:00', '2010-04-14', NULL, 0, '2010-04-14 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1616, 0, '2010-04-14 11:45:00', '2010-04-14', NULL, 0, '2010-04-14 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1617, 0, '2010-04-14 12:00:00', '2010-04-14', NULL, 0, '2010-04-14 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1618, 0, '2010-04-14 12:15:00', '2010-04-14', NULL, 0, '2010-04-14 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1619, 0, '2010-04-14 12:30:00', '2010-04-14', NULL, 0, '2010-04-14 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1620, 0, '2010-04-14 12:45:00', '2010-04-14', NULL, 0, '2010-04-14 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1621, 0, '2010-04-14 13:00:00', '2010-04-14', NULL, 0, '2010-04-14 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1622, 0, '2010-04-14 13:15:00', '2010-04-14', NULL, 0, '2010-04-14 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1623, 0, '2010-04-14 13:30:00', '2010-04-14', NULL, 0, '2010-04-14 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1624, 0, '2010-04-14 13:45:00', '2010-04-14', NULL, 0, '2010-04-14 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1625, 0, '2010-04-14 14:00:00', '2010-04-14', NULL, 0, '2010-04-14 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1626, 0, '2010-04-14 14:15:00', '2010-04-14', NULL, 0, '2010-04-14 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1627, 0, '2010-04-14 14:30:00', '2010-04-14', NULL, 0, '2010-04-14 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1628, 0, '2010-04-14 14:45:00', '2010-04-14', NULL, 0, '2010-04-14 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1629, 0, '2010-04-14 15:00:00', '2010-04-14', NULL, 0, '2010-04-14 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1630, 0, '2010-04-14 15:15:00', '2010-04-14', NULL, 0, '2010-04-14 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1631, 0, '2010-04-14 15:30:00', '2010-04-14', NULL, 0, '2010-04-14 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1632, 0, '2010-04-14 15:45:00', '2010-04-14', NULL, 0, '2010-04-14 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1633, 0, '2010-04-14 16:00:00', '2010-04-14', NULL, 0, '2010-04-14 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1634, 0, '2010-04-14 16:15:00', '2010-04-14', NULL, 0, '2010-04-14 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1635, 0, '2010-04-14 16:30:00', '2010-04-14', NULL, 0, '2010-04-14 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1636, 0, '2010-04-14 16:45:00', '2010-04-14', NULL, 0, '2010-04-14 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1637, 0, '2010-04-15 09:00:00', '2010-04-15', NULL, 0, '2010-04-15 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1638, 0, '2010-04-15 09:15:00', '2010-04-15', NULL, 0, '2010-04-15 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1639, 0, '2010-04-15 09:30:00', '2010-04-15', NULL, 0, '2010-04-15 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1640, 0, '2010-04-15 09:45:00', '2010-04-15', NULL, 0, '2010-04-15 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1641, 0, '2010-04-15 10:00:00', '2010-04-15', NULL, 0, '2010-04-15 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1642, 0, '2010-04-15 10:15:00', '2010-04-15', NULL, 0, '2010-04-15 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1643, 0, '2010-04-15 10:30:00', '2010-04-15', NULL, 0, '2010-04-15 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1644, 0, '2010-04-15 10:45:00', '2010-04-15', NULL, 0, '2010-04-15 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1645, 0, '2010-04-15 11:00:00', '2010-04-15', NULL, 0, '2010-04-15 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1646, 0, '2010-04-15 11:15:00', '2010-04-15', NULL, 0, '2010-04-15 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1647, 0, '2010-04-15 11:30:00', '2010-04-15', NULL, 0, '2010-04-15 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1648, 0, '2010-04-15 11:45:00', '2010-04-15', NULL, 0, '2010-04-15 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1649, 0, '2010-04-15 12:00:00', '2010-04-15', NULL, 0, '2010-04-15 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1650, 0, '2010-04-15 12:15:00', '2010-04-15', NULL, 0, '2010-04-15 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1651, 0, '2010-04-15 12:30:00', '2010-04-15', NULL, 0, '2010-04-15 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1652, 0, '2010-04-15 12:45:00', '2010-04-15', NULL, 0, '2010-04-15 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1653, 0, '2010-04-15 13:00:00', '2010-04-15', NULL, 0, '2010-04-15 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1654, 0, '2010-04-15 13:15:00', '2010-04-15', NULL, 0, '2010-04-15 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1655, 0, '2010-04-15 13:30:00', '2010-04-15', NULL, 0, '2010-04-15 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1656, 0, '2010-04-15 13:45:00', '2010-04-15', NULL, 0, '2010-04-15 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1657, 0, '2010-04-15 14:00:00', '2010-04-15', NULL, 0, '2010-04-15 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1658, 0, '2010-04-15 14:15:00', '2010-04-15', NULL, 0, '2010-04-15 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1659, 0, '2010-04-15 14:30:00', '2010-04-15', NULL, 0, '2010-04-15 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1660, 0, '2010-04-15 14:45:00', '2010-04-15', NULL, 0, '2010-04-15 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1661, 0, '2010-04-15 15:00:00', '2010-04-15', NULL, 0, '2010-04-15 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1662, 0, '2010-04-15 15:15:00', '2010-04-15', NULL, 0, '2010-04-15 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1663, 0, '2010-04-15 15:30:00', '2010-04-15', NULL, 0, '2010-04-15 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1664, 0, '2010-04-15 15:45:00', '2010-04-15', NULL, 0, '2010-04-15 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1665, 0, '2010-04-15 16:00:00', '2010-04-15', NULL, 0, '2010-04-15 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1666, 0, '2010-04-15 16:15:00', '2010-04-15', NULL, 0, '2010-04-15 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1667, 0, '2010-04-15 16:30:00', '2010-04-15', NULL, 0, '2010-04-15 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1668, 0, '2010-04-15 16:45:00', '2010-04-15', NULL, 0, '2010-04-15 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1669, 0, '2010-04-16 09:00:00', '2010-04-16', NULL, 0, '2010-04-16 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1670, 0, '2010-04-16 09:15:00', '2010-04-16', NULL, 0, '2010-04-16 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1671, 0, '2010-04-16 09:30:00', '2010-04-16', NULL, 0, '2010-04-16 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1672, 0, '2010-04-16 09:45:00', '2010-04-16', NULL, 0, '2010-04-16 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1673, 0, '2010-04-16 10:00:00', '2010-04-16', NULL, 0, '2010-04-16 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1674, 0, '2010-04-16 10:15:00', '2010-04-16', NULL, 0, '2010-04-16 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1675, 0, '2010-04-16 10:30:00', '2010-04-16', NULL, 0, '2010-04-16 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1676, 0, '2010-04-16 10:45:00', '2010-04-16', NULL, 0, '2010-04-16 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1677, 0, '2010-04-16 11:00:00', '2010-04-16', NULL, 0, '2010-04-16 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1678, 0, '2010-04-16 11:15:00', '2010-04-16', NULL, 0, '2010-04-16 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1679, 0, '2010-04-16 11:30:00', '2010-04-16', NULL, 0, '2010-04-16 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1680, 0, '2010-04-16 11:45:00', '2010-04-16', NULL, 0, '2010-04-16 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1681, 0, '2010-04-16 12:00:00', '2010-04-16', NULL, 0, '2010-04-16 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1682, 0, '2010-04-16 12:15:00', '2010-04-16', NULL, 0, '2010-04-16 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1683, 0, '2010-04-16 12:30:00', '2010-04-16', NULL, 0, '2010-04-16 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1684, 0, '2010-04-16 12:45:00', '2010-04-16', NULL, 0, '2010-04-16 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1685, 0, '2010-04-16 13:00:00', '2010-04-16', NULL, 0, '2010-04-16 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1686, 0, '2010-04-16 13:15:00', '2010-04-16', NULL, 0, '2010-04-16 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1687, 0, '2010-04-16 13:30:00', '2010-04-16', NULL, 0, '2010-04-16 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1688, 0, '2010-04-16 13:45:00', '2010-04-16', NULL, 0, '2010-04-16 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1689, 0, '2010-04-16 14:00:00', '2010-04-16', NULL, 0, '2010-04-16 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1690, 0, '2010-04-16 14:15:00', '2010-04-16', NULL, 0, '2010-04-16 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1691, 0, '2010-04-16 14:30:00', '2010-04-16', NULL, 0, '2010-04-16 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1692, 0, '2010-04-16 14:45:00', '2010-04-16', NULL, 0, '2010-04-16 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1693, 0, '2010-04-16 15:00:00', '2010-04-16', NULL, 0, '2010-04-16 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1694, 0, '2010-04-16 15:15:00', '2010-04-16', NULL, 0, '2010-04-16 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1695, 0, '2010-04-16 15:30:00', '2010-04-16', NULL, 0, '2010-04-16 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1696, 0, '2010-04-16 15:45:00', '2010-04-16', NULL, 0, '2010-04-16 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1697, 0, '2010-04-16 16:00:00', '2010-04-16', NULL, 0, '2010-04-16 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1698, 0, '2010-04-16 16:15:00', '2010-04-16', NULL, 0, '2010-04-16 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1699, 0, '2010-04-16 16:30:00', '2010-04-16', NULL, 0, '2010-04-16 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1700, 0, '2010-04-16 16:45:00', '2010-04-16', NULL, 0, '2010-04-16 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1701, 0, '2010-04-19 09:00:00', '2010-04-19', NULL, 0, '2010-04-19 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1702, 0, '2010-04-19 09:15:00', '2010-04-19', NULL, 0, '2010-04-19 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1703, 0, '2010-04-19 09:30:00', '2010-04-19', NULL, 0, '2010-04-19 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1704, 0, '2010-04-19 09:45:00', '2010-04-19', NULL, 0, '2010-04-19 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1705, 0, '2010-04-19 10:00:00', '2010-04-19', NULL, 0, '2010-04-19 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1706, 0, '2010-04-19 10:15:00', '2010-04-19', NULL, 0, '2010-04-19 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1707, 0, '2010-04-19 10:30:00', '2010-04-19', NULL, 0, '2010-04-19 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1708, 0, '2010-04-19 10:45:00', '2010-04-19', NULL, 0, '2010-04-19 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1709, 0, '2010-04-19 11:00:00', '2010-04-19', NULL, 0, '2010-04-19 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1710, 0, '2010-04-19 11:15:00', '2010-04-19', NULL, 0, '2010-04-19 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1711, 0, '2010-04-19 11:30:00', '2010-04-19', NULL, 0, '2010-04-19 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1712, 0, '2010-04-19 11:45:00', '2010-04-19', NULL, 0, '2010-04-19 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1713, 0, '2010-04-19 12:00:00', '2010-04-19', NULL, 0, '2010-04-19 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1714, 0, '2010-04-19 12:15:00', '2010-04-19', NULL, 0, '2010-04-19 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1715, 0, '2010-04-19 12:30:00', '2010-04-19', NULL, 0, '2010-04-19 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1716, 0, '2010-04-19 12:45:00', '2010-04-19', NULL, 0, '2010-04-19 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1717, 0, '2010-04-19 13:00:00', '2010-04-19', NULL, 0, '2010-04-19 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1718, 0, '2010-04-19 13:15:00', '2010-04-19', NULL, 0, '2010-04-19 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1719, 0, '2010-04-19 13:30:00', '2010-04-19', NULL, 0, '2010-04-19 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1720, 0, '2010-04-19 13:45:00', '2010-04-19', NULL, 0, '2010-04-19 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1721, 0, '2010-04-19 14:00:00', '2010-04-19', NULL, 0, '2010-04-19 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1722, 0, '2010-04-19 14:15:00', '2010-04-19', NULL, 0, '2010-04-19 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1723, 0, '2010-04-19 14:30:00', '2010-04-19', NULL, 0, '2010-04-19 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1724, 0, '2010-04-19 14:45:00', '2010-04-19', NULL, 0, '2010-04-19 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1725, 0, '2010-04-19 15:00:00', '2010-04-19', NULL, 0, '2010-04-19 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1726, 0, '2010-04-19 15:15:00', '2010-04-19', NULL, 0, '2010-04-19 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1727, 0, '2010-04-19 15:30:00', '2010-04-19', NULL, 0, '2010-04-19 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1728, 0, '2010-04-19 15:45:00', '2010-04-19', NULL, 0, '2010-04-19 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1729, 0, '2010-04-19 16:00:00', '2010-04-19', NULL, 0, '2010-04-19 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1730, 0, '2010-04-19 16:15:00', '2010-04-19', NULL, 0, '2010-04-19 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1731, 0, '2010-04-19 16:30:00', '2010-04-19', NULL, 0, '2010-04-19 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1732, 0, '2010-04-19 16:45:00', '2010-04-19', NULL, 0, '2010-04-19 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1733, 0, '2010-04-20 09:00:00', '2010-04-20', NULL, 0, '2010-04-20 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1734, 0, '2010-04-20 09:15:00', '2010-04-20', NULL, 0, '2010-04-20 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1735, 0, '2010-04-20 09:30:00', '2010-04-20', NULL, 0, '2010-04-20 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1736, 0, '2010-04-20 09:45:00', '2010-04-20', NULL, 0, '2010-04-20 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1737, 0, '2010-04-20 10:00:00', '2010-04-20', NULL, 0, '2010-04-20 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1738, 0, '2010-04-20 10:15:00', '2010-04-20', NULL, 0, '2010-04-20 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1739, 0, '2010-04-20 10:30:00', '2010-04-20', NULL, 0, '2010-04-20 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1740, 0, '2010-04-20 10:45:00', '2010-04-20', NULL, 0, '2010-04-20 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1741, 0, '2010-04-20 11:00:00', '2010-04-20', NULL, 0, '2010-04-20 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1742, 0, '2010-04-20 11:15:00', '2010-04-20', NULL, 0, '2010-04-20 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1743, 0, '2010-04-20 11:30:00', '2010-04-20', NULL, 0, '2010-04-20 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1744, 0, '2010-04-20 11:45:00', '2010-04-20', NULL, 0, '2010-04-20 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1745, 0, '2010-04-20 12:00:00', '2010-04-20', NULL, 0, '2010-04-20 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1746, 0, '2010-04-20 12:15:00', '2010-04-20', NULL, 0, '2010-04-20 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1747, 0, '2010-04-20 12:30:00', '2010-04-20', NULL, 0, '2010-04-20 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1748, 0, '2010-04-20 12:45:00', '2010-04-20', NULL, 0, '2010-04-20 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1749, 0, '2010-04-20 13:00:00', '2010-04-20', NULL, 0, '2010-04-20 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1750, 0, '2010-04-20 13:15:00', '2010-04-20', NULL, 0, '2010-04-20 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1751, 0, '2010-04-20 13:30:00', '2010-04-20', NULL, 0, '2010-04-20 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1752, 0, '2010-04-20 13:45:00', '2010-04-20', NULL, 0, '2010-04-20 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1753, 0, '2010-04-20 14:00:00', '2010-04-20', NULL, 0, '2010-04-20 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1754, 0, '2010-04-20 14:15:00', '2010-04-20', NULL, 0, '2010-04-20 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1755, 0, '2010-04-20 14:30:00', '2010-04-20', NULL, 0, '2010-04-20 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1756, 0, '2010-04-20 14:45:00', '2010-04-20', NULL, 0, '2010-04-20 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1757, 0, '2010-04-20 15:00:00', '2010-04-20', NULL, 0, '2010-04-20 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1758, 0, '2010-04-20 15:15:00', '2010-04-20', NULL, 0, '2010-04-20 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1759, 0, '2010-04-20 15:30:00', '2010-04-20', NULL, 0, '2010-04-20 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1760, 0, '2010-04-20 15:45:00', '2010-04-20', NULL, 0, '2010-04-20 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1761, 0, '2010-04-20 16:00:00', '2010-04-20', NULL, 0, '2010-04-20 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1762, 0, '2010-04-20 16:15:00', '2010-04-20', NULL, 0, '2010-04-20 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1763, 0, '2010-04-20 16:30:00', '2010-04-20', NULL, 0, '2010-04-20 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1764, 0, '2010-04-20 16:45:00', '2010-04-20', NULL, 0, '2010-04-20 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1765, 0, '2010-04-21 09:00:00', '2010-04-21', NULL, 0, '2010-04-21 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1766, 0, '2010-04-21 09:15:00', '2010-04-21', NULL, 0, '2010-04-21 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1767, 0, '2010-04-21 09:30:00', '2010-04-21', NULL, 0, '2010-04-21 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1768, 0, '2010-04-21 09:45:00', '2010-04-21', NULL, 0, '2010-04-21 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1769, 0, '2010-04-21 10:00:00', '2010-04-21', NULL, 0, '2010-04-21 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1770, 0, '2010-04-21 10:15:00', '2010-04-21', NULL, 0, '2010-04-21 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1771, 0, '2010-04-21 10:30:00', '2010-04-21', NULL, 0, '2010-04-21 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1772, 0, '2010-04-21 10:45:00', '2010-04-21', NULL, 0, '2010-04-21 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1773, 0, '2010-04-21 11:00:00', '2010-04-21', NULL, 0, '2010-04-21 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1774, 0, '2010-04-21 11:15:00', '2010-04-21', NULL, 0, '2010-04-21 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1775, 0, '2010-04-21 11:30:00', '2010-04-21', NULL, 0, '2010-04-21 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1776, 0, '2010-04-21 11:45:00', '2010-04-21', NULL, 0, '2010-04-21 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1777, 0, '2010-04-21 12:00:00', '2010-04-21', NULL, 0, '2010-04-21 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1778, 0, '2010-04-21 12:15:00', '2010-04-21', NULL, 0, '2010-04-21 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1779, 0, '2010-04-21 12:30:00', '2010-04-21', NULL, 0, '2010-04-21 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1780, 0, '2010-04-21 12:45:00', '2010-04-21', NULL, 0, '2010-04-21 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1781, 0, '2010-04-21 13:00:00', '2010-04-21', NULL, 0, '2010-04-21 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1782, 0, '2010-04-21 13:15:00', '2010-04-21', NULL, 0, '2010-04-21 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1783, 0, '2010-04-21 13:30:00', '2010-04-21', NULL, 0, '2010-04-21 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1784, 0, '2010-04-21 13:45:00', '2010-04-21', NULL, 0, '2010-04-21 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1785, 0, '2010-04-21 14:00:00', '2010-04-21', NULL, 0, '2010-04-21 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1786, 0, '2010-04-21 14:15:00', '2010-04-21', NULL, 0, '2010-04-21 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1787, 0, '2010-04-21 14:30:00', '2010-04-21', NULL, 0, '2010-04-21 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1788, 0, '2010-04-21 14:45:00', '2010-04-21', NULL, 0, '2010-04-21 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1789, 0, '2010-04-21 15:00:00', '2010-04-21', NULL, 0, '2010-04-21 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1790, 0, '2010-04-21 15:15:00', '2010-04-21', NULL, 0, '2010-04-21 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1791, 0, '2010-04-21 15:30:00', '2010-04-21', NULL, 0, '2010-04-21 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1792, 0, '2010-04-21 15:45:00', '2010-04-21', NULL, 0, '2010-04-21 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1793, 0, '2010-04-21 16:00:00', '2010-04-21', NULL, 0, '2010-04-21 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1794, 0, '2010-04-21 16:15:00', '2010-04-21', NULL, 0, '2010-04-21 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1795, 0, '2010-04-21 16:30:00', '2010-04-21', NULL, 0, '2010-04-21 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1796, 0, '2010-04-21 16:45:00', '2010-04-21', NULL, 0, '2010-04-21 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1797, 0, '2010-04-22 09:00:00', '2010-04-22', NULL, 0, '2010-04-22 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1798, 0, '2010-04-22 09:15:00', '2010-04-22', NULL, 0, '2010-04-22 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1799, 0, '2010-04-22 09:30:00', '2010-04-22', NULL, 0, '2010-04-22 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1800, 0, '2010-04-22 09:45:00', '2010-04-22', NULL, 0, '2010-04-22 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1801, 0, '2010-04-22 10:00:00', '2010-04-22', NULL, 0, '2010-04-22 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1802, 0, '2010-04-22 10:15:00', '2010-04-22', NULL, 0, '2010-04-22 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1803, 0, '2010-04-22 10:30:00', '2010-04-22', NULL, 0, '2010-04-22 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1804, 0, '2010-04-22 10:45:00', '2010-04-22', NULL, 0, '2010-04-22 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1805, 0, '2010-04-22 11:00:00', '2010-04-22', NULL, 0, '2010-04-22 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1806, 0, '2010-04-22 11:15:00', '2010-04-22', NULL, 0, '2010-04-22 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1807, 0, '2010-04-22 11:30:00', '2010-04-22', NULL, 0, '2010-04-22 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1808, 0, '2010-04-22 11:45:00', '2010-04-22', NULL, 0, '2010-04-22 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1809, 0, '2010-04-22 12:00:00', '2010-04-22', NULL, 0, '2010-04-22 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1810, 0, '2010-04-22 12:15:00', '2010-04-22', NULL, 0, '2010-04-22 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1811, 0, '2010-04-22 12:30:00', '2010-04-22', NULL, 0, '2010-04-22 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1812, 0, '2010-04-22 12:45:00', '2010-04-22', NULL, 0, '2010-04-22 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1813, 0, '2010-04-22 13:00:00', '2010-04-22', NULL, 0, '2010-04-22 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1814, 0, '2010-04-22 13:15:00', '2010-04-22', NULL, 0, '2010-04-22 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1815, 0, '2010-04-22 13:30:00', '2010-04-22', NULL, 0, '2010-04-22 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1816, 0, '2010-04-22 13:45:00', '2010-04-22', NULL, 0, '2010-04-22 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1817, 0, '2010-04-22 14:00:00', '2010-04-22', NULL, 0, '2010-04-22 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1818, 0, '2010-04-22 14:15:00', '2010-04-22', NULL, 0, '2010-04-22 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1819, 0, '2010-04-22 14:30:00', '2010-04-22', NULL, 0, '2010-04-22 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1820, 0, '2010-04-22 14:45:00', '2010-04-22', NULL, 0, '2010-04-22 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1821, 0, '2010-04-22 15:00:00', '2010-04-22', NULL, 0, '2010-04-22 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1822, 0, '2010-04-22 15:15:00', '2010-04-22', NULL, 0, '2010-04-22 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1823, 0, '2010-04-22 15:30:00', '2010-04-22', NULL, 0, '2010-04-22 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1824, 0, '2010-04-22 15:45:00', '2010-04-22', NULL, 0, '2010-04-22 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1825, 0, '2010-04-22 16:00:00', '2010-04-22', NULL, 0, '2010-04-22 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1826, 0, '2010-04-22 16:15:00', '2010-04-22', NULL, 0, '2010-04-22 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1827, 0, '2010-04-22 16:30:00', '2010-04-22', NULL, 0, '2010-04-22 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1828, 0, '2010-04-22 16:45:00', '2010-04-22', NULL, 0, '2010-04-22 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1829, 0, '2010-04-23 09:00:00', '2010-04-23', NULL, 0, '2010-04-23 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1830, 0, '2010-04-23 09:15:00', '2010-04-23', NULL, 0, '2010-04-23 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1831, 0, '2010-04-23 09:30:00', '2010-04-23', NULL, 0, '2010-04-23 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1832, 0, '2010-04-23 09:45:00', '2010-04-23', NULL, 0, '2010-04-23 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1833, 0, '2010-04-23 10:00:00', '2010-04-23', NULL, 0, '2010-04-23 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1834, 0, '2010-04-23 10:15:00', '2010-04-23', NULL, 0, '2010-04-23 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1835, 0, '2010-04-23 10:30:00', '2010-04-23', NULL, 0, '2010-04-23 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1836, 0, '2010-04-23 10:45:00', '2010-04-23', NULL, 0, '2010-04-23 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1837, 0, '2010-04-23 11:00:00', '2010-04-23', NULL, 0, '2010-04-23 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1838, 0, '2010-04-23 11:15:00', '2010-04-23', NULL, 0, '2010-04-23 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1839, 0, '2010-04-23 11:30:00', '2010-04-23', NULL, 0, '2010-04-23 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1840, 0, '2010-04-23 11:45:00', '2010-04-23', NULL, 0, '2010-04-23 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1841, 0, '2010-04-23 12:00:00', '2010-04-23', NULL, 0, '2010-04-23 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1842, 0, '2010-04-23 12:15:00', '2010-04-23', NULL, 0, '2010-04-23 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1843, 0, '2010-04-23 12:30:00', '2010-04-23', NULL, 0, '2010-04-23 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1844, 0, '2010-04-23 12:45:00', '2010-04-23', NULL, 0, '2010-04-23 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1845, 0, '2010-04-23 13:00:00', '2010-04-23', NULL, 0, '2010-04-23 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1846, 0, '2010-04-23 13:15:00', '2010-04-23', NULL, 0, '2010-04-23 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1847, 0, '2010-04-23 13:30:00', '2010-04-23', NULL, 0, '2010-04-23 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1848, 0, '2010-04-23 13:45:00', '2010-04-23', NULL, 0, '2010-04-23 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1849, 0, '2010-04-23 14:00:00', '2010-04-23', NULL, 0, '2010-04-23 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1850, 0, '2010-04-23 14:15:00', '2010-04-23', NULL, 0, '2010-04-23 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1851, 0, '2010-04-23 14:30:00', '2010-04-23', NULL, 0, '2010-04-23 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1852, 0, '2010-04-23 14:45:00', '2010-04-23', NULL, 0, '2010-04-23 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1853, 0, '2010-04-23 15:00:00', '2010-04-23', NULL, 0, '2010-04-23 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1854, 0, '2010-04-23 15:15:00', '2010-04-23', NULL, 0, '2010-04-23 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1855, 0, '2010-04-23 15:30:00', '2010-04-23', NULL, 0, '2010-04-23 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1856, 0, '2010-04-23 15:45:00', '2010-04-23', NULL, 0, '2010-04-23 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1857, 0, '2010-04-23 16:00:00', '2010-04-23', NULL, 0, '2010-04-23 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1858, 0, '2010-04-23 16:15:00', '2010-04-23', NULL, 0, '2010-04-23 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1859, 0, '2010-04-23 16:30:00', '2010-04-23', NULL, 0, '2010-04-23 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1860, 0, '2010-04-23 16:45:00', '2010-04-23', NULL, 0, '2010-04-23 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1861, 0, '2010-04-26 09:00:00', '2010-04-26', NULL, 0, '2010-04-26 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1862, 0, '2010-04-26 09:15:00', '2010-04-26', NULL, 0, '2010-04-26 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1863, 0, '2010-04-26 09:30:00', '2010-04-26', NULL, 0, '2010-04-26 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1864, 0, '2010-04-26 09:45:00', '2010-04-26', NULL, 0, '2010-04-26 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1865, 0, '2010-04-26 10:00:00', '2010-04-26', NULL, 0, '2010-04-26 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1866, 0, '2010-04-26 10:15:00', '2010-04-26', NULL, 0, '2010-04-26 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1867, 0, '2010-04-26 10:30:00', '2010-04-26', NULL, 0, '2010-04-26 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1868, 0, '2010-04-26 10:45:00', '2010-04-26', NULL, 0, '2010-04-26 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1869, 0, '2010-04-26 11:00:00', '2010-04-26', NULL, 0, '2010-04-26 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1870, 0, '2010-04-26 11:15:00', '2010-04-26', NULL, 0, '2010-04-26 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1871, 0, '2010-04-26 11:30:00', '2010-04-26', NULL, 0, '2010-04-26 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1872, 0, '2010-04-26 11:45:00', '2010-04-26', NULL, 0, '2010-04-26 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1873, 0, '2010-04-26 12:00:00', '2010-04-26', NULL, 0, '2010-04-26 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1874, 0, '2010-04-26 12:15:00', '2010-04-26', NULL, 0, '2010-04-26 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1875, 0, '2010-04-26 12:30:00', '2010-04-26', NULL, 0, '2010-04-26 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1876, 0, '2010-04-26 12:45:00', '2010-04-26', NULL, 0, '2010-04-26 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1877, 0, '2010-04-26 13:00:00', '2010-04-26', NULL, 0, '2010-04-26 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1878, 0, '2010-04-26 13:15:00', '2010-04-26', NULL, 0, '2010-04-26 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1879, 0, '2010-04-26 13:30:00', '2010-04-26', NULL, 0, '2010-04-26 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1880, 0, '2010-04-26 13:45:00', '2010-04-26', NULL, 0, '2010-04-26 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1881, 0, '2010-04-26 14:00:00', '2010-04-26', NULL, 0, '2010-04-26 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1882, 0, '2010-04-26 14:15:00', '2010-04-26', NULL, 0, '2010-04-26 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1883, 0, '2010-04-26 14:30:00', '2010-04-26', NULL, 0, '2010-04-26 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1884, 0, '2010-04-26 14:45:00', '2010-04-26', NULL, 0, '2010-04-26 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1885, 0, '2010-04-26 15:00:00', '2010-04-26', NULL, 0, '2010-04-26 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1886, 0, '2010-04-26 15:15:00', '2010-04-26', NULL, 0, '2010-04-26 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1887, 0, '2010-04-26 15:30:00', '2010-04-26', NULL, 0, '2010-04-26 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1888, 0, '2010-04-26 15:45:00', '2010-04-26', NULL, 0, '2010-04-26 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1889, 0, '2010-04-26 16:00:00', '2010-04-26', NULL, 0, '2010-04-26 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1890, 0, '2010-04-26 16:15:00', '2010-04-26', NULL, 0, '2010-04-26 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1891, 0, '2010-04-26 16:30:00', '2010-04-26', NULL, 0, '2010-04-26 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1892, 0, '2010-04-26 16:45:00', '2010-04-26', NULL, 0, '2010-04-26 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1893, 0, '2010-04-27 09:00:00', '2010-04-27', NULL, 0, '2010-04-27 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1894, 0, '2010-04-27 09:15:00', '2010-04-27', NULL, 0, '2010-04-27 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1895, 0, '2010-04-27 09:30:00', '2010-04-27', NULL, 0, '2010-04-27 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1896, 0, '2010-04-27 09:45:00', '2010-04-27', NULL, 0, '2010-04-27 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1897, 0, '2010-04-27 10:00:00', '2010-04-27', NULL, 0, '2010-04-27 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1898, 0, '2010-04-27 10:15:00', '2010-04-27', NULL, 0, '2010-04-27 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1899, 0, '2010-04-27 10:30:00', '2010-04-27', NULL, 0, '2010-04-27 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1900, 0, '2010-04-27 10:45:00', '2010-04-27', NULL, 0, '2010-04-27 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1901, 0, '2010-04-27 11:00:00', '2010-04-27', NULL, 0, '2010-04-27 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1902, 0, '2010-04-27 11:15:00', '2010-04-27', NULL, 0, '2010-04-27 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1903, 0, '2010-04-27 11:30:00', '2010-04-27', NULL, 0, '2010-04-27 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1904, 0, '2010-04-27 11:45:00', '2010-04-27', NULL, 0, '2010-04-27 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1905, 0, '2010-04-27 12:00:00', '2010-04-27', NULL, 0, '2010-04-27 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1906, 0, '2010-04-27 12:15:00', '2010-04-27', NULL, 0, '2010-04-27 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1907, 0, '2010-04-27 12:30:00', '2010-04-27', NULL, 0, '2010-04-27 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1908, 0, '2010-04-27 12:45:00', '2010-04-27', NULL, 0, '2010-04-27 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1909, 0, '2010-04-27 13:00:00', '2010-04-27', NULL, 0, '2010-04-27 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1910, 0, '2010-04-27 13:15:00', '2010-04-27', NULL, 0, '2010-04-27 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1911, 0, '2010-04-27 13:30:00', '2010-04-27', NULL, 0, '2010-04-27 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1912, 0, '2010-04-27 13:45:00', '2010-04-27', NULL, 0, '2010-04-27 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1913, 0, '2010-04-27 14:00:00', '2010-04-27', NULL, 0, '2010-04-27 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1914, 0, '2010-04-27 14:15:00', '2010-04-27', NULL, 0, '2010-04-27 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1915, 0, '2010-04-27 14:30:00', '2010-04-27', NULL, 0, '2010-04-27 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1916, 0, '2010-04-27 14:45:00', '2010-04-27', NULL, 0, '2010-04-27 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1917, 0, '2010-04-27 15:00:00', '2010-04-27', NULL, 0, '2010-04-27 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1918, 0, '2010-04-27 15:15:00', '2010-04-27', NULL, 0, '2010-04-27 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1919, 0, '2010-04-27 15:30:00', '2010-04-27', NULL, 0, '2010-04-27 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1920, 0, '2010-04-27 15:45:00', '2010-04-27', NULL, 0, '2010-04-27 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1921, 0, '2010-04-27 16:00:00', '2010-04-27', NULL, 0, '2010-04-27 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1922, 0, '2010-04-27 16:15:00', '2010-04-27', NULL, 0, '2010-04-27 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1923, 0, '2010-04-27 16:30:00', '2010-04-27', NULL, 0, '2010-04-27 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1924, 0, '2010-04-27 16:45:00', '2010-04-27', NULL, 0, '2010-04-27 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1925, 0, '2010-04-28 09:00:00', '2010-04-28', NULL, 0, '2010-04-28 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1926, 0, '2010-04-28 09:15:00', '2010-04-28', NULL, 0, '2010-04-28 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1927, 0, '2010-04-28 09:30:00', '2010-04-28', NULL, 0, '2010-04-28 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1928, 0, '2010-04-28 09:45:00', '2010-04-28', NULL, 0, '2010-04-28 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1929, 0, '2010-04-28 10:00:00', '2010-04-28', NULL, 0, '2010-04-28 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1930, 0, '2010-04-28 10:15:00', '2010-04-28', NULL, 0, '2010-04-28 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1931, 0, '2010-04-28 10:30:00', '2010-04-28', NULL, 0, '2010-04-28 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1932, 0, '2010-04-28 10:45:00', '2010-04-28', NULL, 0, '2010-04-28 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1933, 0, '2010-04-28 11:00:00', '2010-04-28', NULL, 0, '2010-04-28 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1934, 0, '2010-04-28 11:15:00', '2010-04-28', NULL, 0, '2010-04-28 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1935, 0, '2010-04-28 11:30:00', '2010-04-28', NULL, 0, '2010-04-28 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1936, 0, '2010-04-28 11:45:00', '2010-04-28', NULL, 0, '2010-04-28 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1937, 0, '2010-04-28 12:00:00', '2010-04-28', NULL, 0, '2010-04-28 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1938, 0, '2010-04-28 12:15:00', '2010-04-28', NULL, 0, '2010-04-28 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1939, 0, '2010-04-28 12:30:00', '2010-04-28', NULL, 0, '2010-04-28 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1940, 0, '2010-04-28 12:45:00', '2010-04-28', NULL, 0, '2010-04-28 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1941, 0, '2010-04-28 13:00:00', '2010-04-28', NULL, 0, '2010-04-28 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1942, 0, '2010-04-28 13:15:00', '2010-04-28', NULL, 0, '2010-04-28 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1943, 0, '2010-04-28 13:30:00', '2010-04-28', NULL, 0, '2010-04-28 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1944, 0, '2010-04-28 13:45:00', '2010-04-28', NULL, 0, '2010-04-28 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1945, 0, '2010-04-28 14:00:00', '2010-04-28', NULL, 0, '2010-04-28 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1946, 0, '2010-04-28 14:15:00', '2010-04-28', NULL, 0, '2010-04-28 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1947, 0, '2010-04-28 14:30:00', '2010-04-28', NULL, 0, '2010-04-28 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1948, 0, '2010-04-28 14:45:00', '2010-04-28', NULL, 0, '2010-04-28 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1949, 0, '2010-04-28 15:00:00', '2010-04-28', NULL, 0, '2010-04-28 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1950, 0, '2010-04-28 15:15:00', '2010-04-28', NULL, 0, '2010-04-28 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1951, 0, '2010-04-28 15:30:00', '2010-04-28', NULL, 0, '2010-04-28 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1952, 0, '2010-04-28 15:45:00', '2010-04-28', NULL, 0, '2010-04-28 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1953, 0, '2010-04-28 16:00:00', '2010-04-28', NULL, 0, '2010-04-28 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1954, 0, '2010-04-28 16:15:00', '2010-04-28', NULL, 0, '2010-04-28 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1955, 0, '2010-04-28 16:30:00', '2010-04-28', NULL, 0, '2010-04-28 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1956, 0, '2010-04-28 16:45:00', '2010-04-28', NULL, 0, '2010-04-28 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1957, 0, '2010-04-29 09:00:00', '2010-04-29', NULL, 0, '2010-04-29 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1958, 0, '2010-04-29 09:15:00', '2010-04-29', NULL, 0, '2010-04-29 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1959, 0, '2010-04-29 09:30:00', '2010-04-29', NULL, 0, '2010-04-29 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1960, 0, '2010-04-29 09:45:00', '2010-04-29', NULL, 0, '2010-04-29 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1961, 0, '2010-04-29 10:00:00', '2010-04-29', NULL, 0, '2010-04-29 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1962, 0, '2010-04-29 10:15:00', '2010-04-29', NULL, 0, '2010-04-29 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1963, 0, '2010-04-29 10:30:00', '2010-04-29', NULL, 0, '2010-04-29 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1964, 0, '2010-04-29 10:45:00', '2010-04-29', NULL, 0, '2010-04-29 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1965, 0, '2010-04-29 11:00:00', '2010-04-29', NULL, 0, '2010-04-29 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1966, 0, '2010-04-29 11:15:00', '2010-04-29', NULL, 0, '2010-04-29 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1967, 0, '2010-04-29 11:30:00', '2010-04-29', NULL, 0, '2010-04-29 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1968, 0, '2010-04-29 11:45:00', '2010-04-29', NULL, 0, '2010-04-29 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1969, 0, '2010-04-29 12:00:00', '2010-04-29', NULL, 0, '2010-04-29 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1970, 0, '2010-04-29 12:15:00', '2010-04-29', NULL, 0, '2010-04-29 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1971, 0, '2010-04-29 12:30:00', '2010-04-29', NULL, 0, '2010-04-29 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1972, 0, '2010-04-29 12:45:00', '2010-04-29', NULL, 0, '2010-04-29 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1973, 0, '2010-04-29 13:00:00', '2010-04-29', NULL, 0, '2010-04-29 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1974, 0, '2010-04-29 13:15:00', '2010-04-29', NULL, 0, '2010-04-29 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1975, 0, '2010-04-29 13:30:00', '2010-04-29', NULL, 0, '2010-04-29 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1976, 0, '2010-04-29 13:45:00', '2010-04-29', NULL, 0, '2010-04-29 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1977, 0, '2010-04-29 14:00:00', '2010-04-29', NULL, 0, '2010-04-29 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1978, 0, '2010-04-29 14:15:00', '2010-04-29', NULL, 0, '2010-04-29 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1979, 0, '2010-04-29 14:30:00', '2010-04-29', NULL, 0, '2010-04-29 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1980, 0, '2010-04-29 14:45:00', '2010-04-29', NULL, 0, '2010-04-29 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1981, 0, '2010-04-29 15:00:00', '2010-04-29', NULL, 0, '2010-04-29 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1982, 0, '2010-04-29 15:15:00', '2010-04-29', NULL, 0, '2010-04-29 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1983, 0, '2010-04-29 15:30:00', '2010-04-29', NULL, 0, '2010-04-29 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1984, 0, '2010-04-29 15:45:00', '2010-04-29', NULL, 0, '2010-04-29 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1985, 0, '2010-04-29 16:00:00', '2010-04-29', NULL, 0, '2010-04-29 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1986, 0, '2010-04-29 16:15:00', '2010-04-29', NULL, 0, '2010-04-29 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1987, 0, '2010-04-29 16:30:00', '2010-04-29', NULL, 0, '2010-04-29 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1988, 0, '2010-04-29 16:45:00', '2010-04-29', NULL, 0, '2010-04-29 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1989, 0, '2010-04-30 09:00:00', '2010-04-30', NULL, 0, '2010-04-30 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1990, 0, '2010-04-30 09:15:00', '2010-04-30', NULL, 0, '2010-04-30 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1991, 0, '2010-04-30 09:30:00', '2010-04-30', NULL, 0, '2010-04-30 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1992, 0, '2010-04-30 09:45:00', '2010-04-30', NULL, 0, '2010-04-30 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1993, 0, '2010-04-30 10:00:00', '2010-04-30', NULL, 0, '2010-04-30 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1994, 0, '2010-04-30 10:15:00', '2010-04-30', NULL, 0, '2010-04-30 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1995, 0, '2010-04-30 10:30:00', '2010-04-30', NULL, 0, '2010-04-30 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1996, 0, '2010-04-30 10:45:00', '2010-04-30', NULL, 0, '2010-04-30 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1997, 0, '2010-04-30 11:00:00', '2010-04-30', NULL, 0, '2010-04-30 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1998, 0, '2010-04-30 11:15:00', '2010-04-30', NULL, 0, '2010-04-30 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1999, 0, '2010-04-30 11:30:00', '2010-04-30', NULL, 0, '2010-04-30 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2000, 0, '2010-04-30 11:45:00', '2010-04-30', NULL, 0, '2010-04-30 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2001, 0, '2010-04-30 12:00:00', '2010-04-30', NULL, 0, '2010-04-30 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2002, 0, '2010-04-30 12:15:00', '2010-04-30', NULL, 0, '2010-04-30 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2003, 0, '2010-04-30 12:30:00', '2010-04-30', NULL, 0, '2010-04-30 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2004, 0, '2010-04-30 12:45:00', '2010-04-30', NULL, 0, '2010-04-30 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2005, 0, '2010-04-30 13:00:00', '2010-04-30', NULL, 0, '2010-04-30 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2006, 0, '2010-04-30 13:15:00', '2010-04-30', NULL, 0, '2010-04-30 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2007, 0, '2010-04-30 13:30:00', '2010-04-30', NULL, 0, '2010-04-30 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2008, 0, '2010-04-30 13:45:00', '2010-04-30', NULL, 0, '2010-04-30 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2009, 0, '2010-04-30 14:00:00', '2010-04-30', NULL, 0, '2010-04-30 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2010, 0, '2010-04-30 14:15:00', '2010-04-30', NULL, 0, '2010-04-30 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2011, 0, '2010-04-30 14:30:00', '2010-04-30', NULL, 0, '2010-04-30 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2012, 0, '2010-04-30 14:45:00', '2010-04-30', NULL, 0, '2010-04-30 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2013, 0, '2010-04-30 15:00:00', '2010-04-30', NULL, 0, '2010-04-30 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2014, 0, '2010-04-30 15:15:00', '2010-04-30', NULL, 0, '2010-04-30 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2015, 0, '2010-04-30 15:30:00', '2010-04-30', NULL, 0, '2010-04-30 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2016, 0, '2010-04-30 15:45:00', '2010-04-30', NULL, 0, '2010-04-30 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2017, 0, '2010-04-30 16:00:00', '2010-04-30', NULL, 0, '2010-04-30 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2018, 0, '2010-04-30 16:15:00', '2010-04-30', NULL, 0, '2010-04-30 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2019, 0, '2010-04-30 16:30:00', '2010-04-30', NULL, 0, '2010-04-30 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2020, 0, '2010-04-30 16:45:00', '2010-04-30', NULL, 0, '2010-04-30 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2021, 0, '2010-05-03 09:00:00', '2010-05-03', NULL, 0, '2010-05-03 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2022, 0, '2010-05-03 09:15:00', '2010-05-03', NULL, 0, '2010-05-03 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2023, 0, '2010-05-03 09:30:00', '2010-05-03', NULL, 0, '2010-05-03 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2024, 0, '2010-05-03 09:45:00', '2010-05-03', NULL, 0, '2010-05-03 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2025, 0, '2010-05-03 10:00:00', '2010-05-03', NULL, 0, '2010-05-03 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2026, 0, '2010-05-03 10:15:00', '2010-05-03', NULL, 0, '2010-05-03 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2027, 0, '2010-05-03 10:30:00', '2010-05-03', NULL, 0, '2010-05-03 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2028, 0, '2010-05-03 10:45:00', '2010-05-03', NULL, 0, '2010-05-03 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2029, 0, '2010-05-03 11:00:00', '2010-05-03', NULL, 0, '2010-05-03 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2030, 0, '2010-05-03 11:15:00', '2010-05-03', NULL, 0, '2010-05-03 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2031, 0, '2010-05-03 11:30:00', '2010-05-03', NULL, 0, '2010-05-03 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2032, 0, '2010-05-03 11:45:00', '2010-05-03', NULL, 0, '2010-05-03 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2033, 0, '2010-05-03 12:00:00', '2010-05-03', NULL, 0, '2010-05-03 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2034, 0, '2010-05-03 12:15:00', '2010-05-03', NULL, 0, '2010-05-03 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2035, 0, '2010-05-03 12:30:00', '2010-05-03', NULL, 0, '2010-05-03 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2036, 0, '2010-05-03 12:45:00', '2010-05-03', NULL, 0, '2010-05-03 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2037, 0, '2010-05-03 13:00:00', '2010-05-03', NULL, 0, '2010-05-03 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2038, 0, '2010-05-03 13:15:00', '2010-05-03', NULL, 0, '2010-05-03 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2039, 0, '2010-05-03 13:30:00', '2010-05-03', NULL, 0, '2010-05-03 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2040, 0, '2010-05-03 13:45:00', '2010-05-03', NULL, 0, '2010-05-03 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2041, 0, '2010-05-03 14:00:00', '2010-05-03', NULL, 0, '2010-05-03 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2042, 0, '2010-05-03 14:15:00', '2010-05-03', NULL, 0, '2010-05-03 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2043, 0, '2010-05-03 14:30:00', '2010-05-03', NULL, 0, '2010-05-03 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2044, 0, '2010-05-03 14:45:00', '2010-05-03', NULL, 0, '2010-05-03 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2045, 0, '2010-05-03 15:00:00', '2010-05-03', NULL, 0, '2010-05-03 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2046, 0, '2010-05-03 15:15:00', '2010-05-03', NULL, 0, '2010-05-03 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2047, 0, '2010-05-03 15:30:00', '2010-05-03', NULL, 0, '2010-05-03 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2048, 0, '2010-05-03 15:45:00', '2010-05-03', NULL, 0, '2010-05-03 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2049, 0, '2010-05-03 16:00:00', '2010-05-03', NULL, 0, '2010-05-03 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2050, 0, '2010-05-03 16:15:00', '2010-05-03', NULL, 0, '2010-05-03 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2051, 0, '2010-05-03 16:30:00', '2010-05-03', NULL, 0, '2010-05-03 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2052, 0, '2010-05-03 16:45:00', '2010-05-03', NULL, 0, '2010-05-03 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2053, 0, '2010-05-04 09:00:00', '2010-05-04', NULL, 0, '2010-05-04 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2054, 0, '2010-05-04 09:15:00', '2010-05-04', NULL, 0, '2010-05-04 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2055, 0, '2010-05-04 09:30:00', '2010-05-04', NULL, 0, '2010-05-04 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2056, 0, '2010-05-04 09:45:00', '2010-05-04', NULL, 0, '2010-05-04 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2057, 0, '2010-05-04 10:00:00', '2010-05-04', NULL, 0, '2010-05-04 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2058, 0, '2010-05-04 10:15:00', '2010-05-04', NULL, 0, '2010-05-04 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2059, 0, '2010-05-04 10:30:00', '2010-05-04', NULL, 0, '2010-05-04 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2060, 0, '2010-05-04 10:45:00', '2010-05-04', NULL, 0, '2010-05-04 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2061, 0, '2010-05-04 11:00:00', '2010-05-04', NULL, 0, '2010-05-04 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2062, 0, '2010-05-04 11:15:00', '2010-05-04', NULL, 0, '2010-05-04 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2063, 0, '2010-05-04 11:30:00', '2010-05-04', NULL, 0, '2010-05-04 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2064, 0, '2010-05-04 11:45:00', '2010-05-04', NULL, 0, '2010-05-04 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2065, 0, '2010-05-04 12:00:00', '2010-05-04', NULL, 0, '2010-05-04 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2066, 0, '2010-05-04 12:15:00', '2010-05-04', NULL, 0, '2010-05-04 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2067, 0, '2010-05-04 12:30:00', '2010-05-04', NULL, 0, '2010-05-04 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2068, 0, '2010-05-04 12:45:00', '2010-05-04', NULL, 0, '2010-05-04 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2069, 0, '2010-05-04 13:00:00', '2010-05-04', NULL, 0, '2010-05-04 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2070, 0, '2010-05-04 13:15:00', '2010-05-04', NULL, 0, '2010-05-04 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2071, 0, '2010-05-04 13:30:00', '2010-05-04', NULL, 0, '2010-05-04 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2072, 0, '2010-05-04 13:45:00', '2010-05-04', NULL, 0, '2010-05-04 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2073, 0, '2010-05-04 14:00:00', '2010-05-04', NULL, 0, '2010-05-04 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2074, 0, '2010-05-04 14:15:00', '2010-05-04', NULL, 0, '2010-05-04 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2075, 0, '2010-05-04 14:30:00', '2010-05-04', NULL, 0, '2010-05-04 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2076, 0, '2010-05-04 14:45:00', '2010-05-04', NULL, 0, '2010-05-04 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2077, 0, '2010-05-04 15:00:00', '2010-05-04', NULL, 0, '2010-05-04 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2078, 0, '2010-05-04 15:15:00', '2010-05-04', NULL, 0, '2010-05-04 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2079, 0, '2010-05-04 15:30:00', '2010-05-04', NULL, 0, '2010-05-04 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2080, 0, '2010-05-04 15:45:00', '2010-05-04', NULL, 0, '2010-05-04 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2081, 0, '2010-05-04 16:00:00', '2010-05-04', NULL, 0, '2010-05-04 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2082, 0, '2010-05-04 16:15:00', '2010-05-04', NULL, 0, '2010-05-04 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2083, 0, '2010-05-04 16:30:00', '2010-05-04', NULL, 0, '2010-05-04 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2084, 0, '2010-05-04 16:45:00', '2010-05-04', NULL, 0, '2010-05-04 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2085, 0, '2010-05-05 09:00:00', '2010-05-05', NULL, 0, '2010-05-05 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2086, 0, '2010-05-05 09:15:00', '2010-05-05', NULL, 0, '2010-05-05 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2087, 0, '2010-05-05 09:30:00', '2010-05-05', NULL, 0, '2010-05-05 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2088, 0, '2010-05-05 09:45:00', '2010-05-05', NULL, 0, '2010-05-05 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2089, 0, '2010-05-05 10:00:00', '2010-05-05', NULL, 0, '2010-05-05 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2090, 0, '2010-05-05 10:15:00', '2010-05-05', NULL, 0, '2010-05-05 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2091, 0, '2010-05-05 10:30:00', '2010-05-05', NULL, 0, '2010-05-05 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2092, 0, '2010-05-05 10:45:00', '2010-05-05', NULL, 0, '2010-05-05 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2093, 0, '2010-05-05 11:00:00', '2010-05-05', NULL, 0, '2010-05-05 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2094, 0, '2010-05-05 11:15:00', '2010-05-05', NULL, 0, '2010-05-05 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2095, 0, '2010-05-05 11:30:00', '2010-05-05', NULL, 0, '2010-05-05 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2096, 0, '2010-05-05 11:45:00', '2010-05-05', NULL, 0, '2010-05-05 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2097, 0, '2010-05-05 12:00:00', '2010-05-05', NULL, 0, '2010-05-05 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2098, 0, '2010-05-05 12:15:00', '2010-05-05', NULL, 0, '2010-05-05 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2099, 0, '2010-05-05 12:30:00', '2010-05-05', NULL, 0, '2010-05-05 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2100, 0, '2010-05-05 12:45:00', '2010-05-05', NULL, 0, '2010-05-05 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2101, 0, '2010-05-05 13:00:00', '2010-05-05', NULL, 0, '2010-05-05 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2102, 0, '2010-05-05 13:15:00', '2010-05-05', NULL, 0, '2010-05-05 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2103, 0, '2010-05-05 13:30:00', '2010-05-05', NULL, 0, '2010-05-05 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2104, 0, '2010-05-05 13:45:00', '2010-05-05', NULL, 0, '2010-05-05 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2105, 0, '2010-05-05 14:00:00', '2010-05-05', NULL, 0, '2010-05-05 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2106, 0, '2010-05-05 14:15:00', '2010-05-05', NULL, 0, '2010-05-05 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2107, 0, '2010-05-05 14:30:00', '2010-05-05', NULL, 0, '2010-05-05 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2108, 0, '2010-05-05 14:45:00', '2010-05-05', NULL, 0, '2010-05-05 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2109, 0, '2010-05-05 15:00:00', '2010-05-05', NULL, 0, '2010-05-05 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2110, 0, '2010-05-05 15:15:00', '2010-05-05', NULL, 0, '2010-05-05 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2111, 0, '2010-05-05 15:30:00', '2010-05-05', NULL, 0, '2010-05-05 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2112, 0, '2010-05-05 15:45:00', '2010-05-05', NULL, 0, '2010-05-05 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2113, 0, '2010-05-05 16:00:00', '2010-05-05', NULL, 0, '2010-05-05 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2114, 0, '2010-05-05 16:15:00', '2010-05-05', NULL, 0, '2010-05-05 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2115, 0, '2010-05-05 16:30:00', '2010-05-05', NULL, 0, '2010-05-05 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2116, 0, '2010-05-05 16:45:00', '2010-05-05', NULL, 0, '2010-05-05 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2117, 0, '2010-05-06 09:00:00', '2010-05-06', NULL, 0, '2010-05-06 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2118, 0, '2010-05-06 09:15:00', '2010-05-06', NULL, 0, '2010-05-06 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2119, 0, '2010-05-06 09:30:00', '2010-05-06', NULL, 0, '2010-05-06 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2120, 0, '2010-05-06 09:45:00', '2010-05-06', NULL, 0, '2010-05-06 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2121, 0, '2010-05-06 10:00:00', '2010-05-06', NULL, 0, '2010-05-06 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2122, 0, '2010-05-06 10:15:00', '2010-05-06', NULL, 0, '2010-05-06 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2123, 0, '2010-05-06 10:30:00', '2010-05-06', NULL, 0, '2010-05-06 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2124, 0, '2010-05-06 10:45:00', '2010-05-06', NULL, 0, '2010-05-06 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2125, 0, '2010-05-06 11:00:00', '2010-05-06', NULL, 0, '2010-05-06 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2126, 0, '2010-05-06 11:15:00', '2010-05-06', NULL, 0, '2010-05-06 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2127, 0, '2010-05-06 11:30:00', '2010-05-06', NULL, 0, '2010-05-06 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2128, 0, '2010-05-06 11:45:00', '2010-05-06', NULL, 0, '2010-05-06 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2129, 0, '2010-05-06 12:00:00', '2010-05-06', NULL, 0, '2010-05-06 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2130, 0, '2010-05-06 12:15:00', '2010-05-06', NULL, 0, '2010-05-06 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2131, 0, '2010-05-06 12:30:00', '2010-05-06', NULL, 0, '2010-05-06 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2132, 0, '2010-05-06 12:45:00', '2010-05-06', NULL, 0, '2010-05-06 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2133, 0, '2010-05-06 13:00:00', '2010-05-06', NULL, 0, '2010-05-06 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2134, 0, '2010-05-06 13:15:00', '2010-05-06', NULL, 0, '2010-05-06 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2135, 0, '2010-05-06 13:30:00', '2010-05-06', NULL, 0, '2010-05-06 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2136, 0, '2010-05-06 13:45:00', '2010-05-06', NULL, 0, '2010-05-06 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2137, 0, '2010-05-06 14:00:00', '2010-05-06', NULL, 0, '2010-05-06 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2138, 0, '2010-05-06 14:15:00', '2010-05-06', NULL, 0, '2010-05-06 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2139, 0, '2010-05-06 14:30:00', '2010-05-06', NULL, 0, '2010-05-06 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2140, 0, '2010-05-06 14:45:00', '2010-05-06', NULL, 0, '2010-05-06 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2141, 0, '2010-05-06 15:00:00', '2010-05-06', NULL, 0, '2010-05-06 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2142, 0, '2010-05-06 15:15:00', '2010-05-06', NULL, 0, '2010-05-06 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2143, 0, '2010-05-06 15:30:00', '2010-05-06', NULL, 0, '2010-05-06 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2144, 0, '2010-05-06 15:45:00', '2010-05-06', NULL, 0, '2010-05-06 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2145, 0, '2010-05-06 16:00:00', '2010-05-06', NULL, 0, '2010-05-06 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2146, 0, '2010-05-06 16:15:00', '2010-05-06', NULL, 0, '2010-05-06 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2147, 0, '2010-05-06 16:30:00', '2010-05-06', NULL, 0, '2010-05-06 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2148, 0, '2010-05-06 16:45:00', '2010-05-06', NULL, 0, '2010-05-06 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2149, 0, '2010-05-07 09:00:00', '2010-05-07', NULL, 0, '2010-05-07 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2150, 0, '2010-05-07 09:15:00', '2010-05-07', NULL, 0, '2010-05-07 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2151, 0, '2010-05-07 09:30:00', '2010-05-07', NULL, 0, '2010-05-07 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2152, 0, '2010-05-07 09:45:00', '2010-05-07', NULL, 0, '2010-05-07 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2153, 0, '2010-05-07 10:00:00', '2010-05-07', NULL, 0, '2010-05-07 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2154, 0, '2010-05-07 10:15:00', '2010-05-07', NULL, 0, '2010-05-07 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2155, 0, '2010-05-07 10:30:00', '2010-05-07', NULL, 0, '2010-05-07 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2156, 0, '2010-05-07 10:45:00', '2010-05-07', NULL, 0, '2010-05-07 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2157, 0, '2010-05-07 11:00:00', '2010-05-07', NULL, 0, '2010-05-07 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2158, 0, '2010-05-07 11:15:00', '2010-05-07', NULL, 0, '2010-05-07 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2159, 0, '2010-05-07 11:30:00', '2010-05-07', NULL, 0, '2010-05-07 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2160, 0, '2010-05-07 11:45:00', '2010-05-07', NULL, 0, '2010-05-07 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2161, 0, '2010-05-07 12:00:00', '2010-05-07', NULL, 0, '2010-05-07 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2162, 0, '2010-05-07 12:15:00', '2010-05-07', NULL, 0, '2010-05-07 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2163, 0, '2010-05-07 12:30:00', '2010-05-07', NULL, 0, '2010-05-07 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2164, 0, '2010-05-07 12:45:00', '2010-05-07', NULL, 0, '2010-05-07 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2165, 0, '2010-05-07 13:00:00', '2010-05-07', NULL, 0, '2010-05-07 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2166, 0, '2010-05-07 13:15:00', '2010-05-07', NULL, 0, '2010-05-07 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2167, 0, '2010-05-07 13:30:00', '2010-05-07', NULL, 0, '2010-05-07 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2168, 0, '2010-05-07 13:45:00', '2010-05-07', NULL, 0, '2010-05-07 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2169, 0, '2010-05-07 14:00:00', '2010-05-07', NULL, 0, '2010-05-07 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2170, 0, '2010-05-07 14:15:00', '2010-05-07', NULL, 0, '2010-05-07 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2171, 0, '2010-05-07 14:30:00', '2010-05-07', NULL, 0, '2010-05-07 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2172, 0, '2010-05-07 14:45:00', '2010-05-07', NULL, 0, '2010-05-07 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2173, 0, '2010-05-07 15:00:00', '2010-05-07', NULL, 0, '2010-05-07 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2174, 0, '2010-05-07 15:15:00', '2010-05-07', NULL, 0, '2010-05-07 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2175, 0, '2010-05-07 15:30:00', '2010-05-07', NULL, 0, '2010-05-07 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2176, 0, '2010-05-07 15:45:00', '2010-05-07', NULL, 0, '2010-05-07 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2177, 0, '2010-05-07 16:00:00', '2010-05-07', NULL, 0, '2010-05-07 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2178, 0, '2010-05-07 16:15:00', '2010-05-07', NULL, 0, '2010-05-07 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2179, 0, '2010-05-07 16:30:00', '2010-05-07', NULL, 0, '2010-05-07 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2180, 0, '2010-05-07 16:45:00', '2010-05-07', NULL, 0, '2010-05-07 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2181, 0, '2010-05-10 09:00:00', '2010-05-10', NULL, 0, '2010-05-10 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2182, 0, '2010-05-10 09:15:00', '2010-05-10', NULL, 0, '2010-05-10 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2183, 0, '2010-05-10 09:30:00', '2010-05-10', NULL, 0, '2010-05-10 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2184, 0, '2010-05-10 09:45:00', '2010-05-10', NULL, 0, '2010-05-10 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2185, 0, '2010-05-10 10:00:00', '2010-05-10', NULL, 0, '2010-05-10 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2186, 0, '2010-05-10 10:15:00', '2010-05-10', NULL, 0, '2010-05-10 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2187, 0, '2010-05-10 10:30:00', '2010-05-10', NULL, 0, '2010-05-10 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2188, 0, '2010-05-10 10:45:00', '2010-05-10', NULL, 0, '2010-05-10 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2189, 0, '2010-05-10 11:00:00', '2010-05-10', NULL, 0, '2010-05-10 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2190, 0, '2010-05-10 11:15:00', '2010-05-10', NULL, 0, '2010-05-10 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2191, 0, '2010-05-10 11:30:00', '2010-05-10', NULL, 0, '2010-05-10 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2192, 0, '2010-05-10 11:45:00', '2010-05-10', NULL, 0, '2010-05-10 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2193, 0, '2010-05-10 12:00:00', '2010-05-10', NULL, 0, '2010-05-10 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2194, 0, '2010-05-10 12:15:00', '2010-05-10', NULL, 0, '2010-05-10 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2195, 0, '2010-05-10 12:30:00', '2010-05-10', NULL, 0, '2010-05-10 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2196, 0, '2010-05-10 12:45:00', '2010-05-10', NULL, 0, '2010-05-10 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2197, 0, '2010-05-10 13:00:00', '2010-05-10', NULL, 0, '2010-05-10 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2198, 0, '2010-05-10 13:15:00', '2010-05-10', NULL, 0, '2010-05-10 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2199, 0, '2010-05-10 13:30:00', '2010-05-10', NULL, 0, '2010-05-10 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2200, 0, '2010-05-10 13:45:00', '2010-05-10', NULL, 0, '2010-05-10 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2201, 0, '2010-05-10 14:00:00', '2010-05-10', NULL, 0, '2010-05-10 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2202, 0, '2010-05-10 14:15:00', '2010-05-10', NULL, 0, '2010-05-10 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2203, 0, '2010-05-10 14:30:00', '2010-05-10', NULL, 0, '2010-05-10 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2204, 0, '2010-05-10 14:45:00', '2010-05-10', NULL, 0, '2010-05-10 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2205, 0, '2010-05-10 15:00:00', '2010-05-10', NULL, 0, '2010-05-10 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2206, 0, '2010-05-10 15:15:00', '2010-05-10', NULL, 0, '2010-05-10 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2207, 0, '2010-05-10 15:30:00', '2010-05-10', NULL, 0, '2010-05-10 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2208, 0, '2010-05-10 15:45:00', '2010-05-10', NULL, 0, '2010-05-10 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2209, 0, '2010-05-10 16:00:00', '2010-05-10', NULL, 0, '2010-05-10 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2210, 0, '2010-05-10 16:15:00', '2010-05-10', NULL, 0, '2010-05-10 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2211, 0, '2010-05-10 16:30:00', '2010-05-10', NULL, 0, '2010-05-10 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2212, 0, '2010-05-10 16:45:00', '2010-05-10', NULL, 0, '2010-05-10 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2213, 0, '2010-05-11 09:00:00', '2010-05-11', NULL, 0, '2010-05-11 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2214, 0, '2010-05-11 09:15:00', '2010-05-11', NULL, 0, '2010-05-11 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2215, 0, '2010-05-11 09:30:00', '2010-05-11', NULL, 0, '2010-05-11 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2216, 0, '2010-05-11 09:45:00', '2010-05-11', NULL, 0, '2010-05-11 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2217, 0, '2010-05-11 10:00:00', '2010-05-11', NULL, 0, '2010-05-11 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2218, 0, '2010-05-11 10:15:00', '2010-05-11', NULL, 0, '2010-05-11 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2219, 0, '2010-05-11 10:30:00', '2010-05-11', NULL, 0, '2010-05-11 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2220, 0, '2010-05-11 10:45:00', '2010-05-11', NULL, 0, '2010-05-11 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2221, 0, '2010-05-11 11:00:00', '2010-05-11', NULL, 0, '2010-05-11 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2222, 0, '2010-05-11 11:15:00', '2010-05-11', NULL, 0, '2010-05-11 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2223, 0, '2010-05-11 11:30:00', '2010-05-11', NULL, 0, '2010-05-11 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2224, 0, '2010-05-11 11:45:00', '2010-05-11', NULL, 0, '2010-05-11 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2225, 0, '2010-05-11 12:00:00', '2010-05-11', NULL, 0, '2010-05-11 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2226, 0, '2010-05-11 12:15:00', '2010-05-11', NULL, 0, '2010-05-11 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2227, 0, '2010-05-11 12:30:00', '2010-05-11', NULL, 0, '2010-05-11 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2228, 0, '2010-05-11 12:45:00', '2010-05-11', NULL, 0, '2010-05-11 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2229, 0, '2010-05-11 13:00:00', '2010-05-11', NULL, 0, '2010-05-11 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2230, 0, '2010-05-11 13:15:00', '2010-05-11', NULL, 0, '2010-05-11 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2231, 0, '2010-05-11 13:30:00', '2010-05-11', NULL, 0, '2010-05-11 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2232, 0, '2010-05-11 13:45:00', '2010-05-11', NULL, 0, '2010-05-11 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2233, 0, '2010-05-11 14:00:00', '2010-05-11', NULL, 0, '2010-05-11 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2234, 0, '2010-05-11 14:15:00', '2010-05-11', NULL, 0, '2010-05-11 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2235, 0, '2010-05-11 14:30:00', '2010-05-11', NULL, 0, '2010-05-11 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2236, 0, '2010-05-11 14:45:00', '2010-05-11', NULL, 0, '2010-05-11 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2237, 0, '2010-05-11 15:00:00', '2010-05-11', NULL, 0, '2010-05-11 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2238, 0, '2010-05-11 15:15:00', '2010-05-11', NULL, 0, '2010-05-11 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2239, 0, '2010-05-11 15:30:00', '2010-05-11', NULL, 0, '2010-05-11 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2240, 0, '2010-05-11 15:45:00', '2010-05-11', NULL, 0, '2010-05-11 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2241, 0, '2010-05-11 16:00:00', '2010-05-11', NULL, 0, '2010-05-11 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2242, 0, '2010-05-11 16:15:00', '2010-05-11', NULL, 0, '2010-05-11 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2243, 0, '2010-05-11 16:30:00', '2010-05-11', NULL, 0, '2010-05-11 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2244, 0, '2010-05-11 16:45:00', '2010-05-11', NULL, 0, '2010-05-11 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2245, 0, '2010-05-12 09:00:00', '2010-05-12', NULL, 0, '2010-05-12 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2246, 0, '2010-05-12 09:15:00', '2010-05-12', NULL, 0, '2010-05-12 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2247, 0, '2010-05-12 09:30:00', '2010-05-12', NULL, 0, '2010-05-12 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2248, 0, '2010-05-12 09:45:00', '2010-05-12', NULL, 0, '2010-05-12 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2249, 0, '2010-05-12 10:00:00', '2010-05-12', NULL, 0, '2010-05-12 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2250, 0, '2010-05-12 10:15:00', '2010-05-12', NULL, 0, '2010-05-12 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2251, 0, '2010-05-12 10:30:00', '2010-05-12', NULL, 0, '2010-05-12 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2252, 0, '2010-05-12 10:45:00', '2010-05-12', NULL, 0, '2010-05-12 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2253, 0, '2010-05-12 11:00:00', '2010-05-12', NULL, 0, '2010-05-12 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2254, 0, '2010-05-12 11:15:00', '2010-05-12', NULL, 0, '2010-05-12 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2255, 0, '2010-05-12 11:30:00', '2010-05-12', NULL, 0, '2010-05-12 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2256, 0, '2010-05-12 11:45:00', '2010-05-12', NULL, 0, '2010-05-12 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2257, 0, '2010-05-12 12:00:00', '2010-05-12', NULL, 0, '2010-05-12 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2258, 0, '2010-05-12 12:15:00', '2010-05-12', NULL, 0, '2010-05-12 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2259, 0, '2010-05-12 12:30:00', '2010-05-12', NULL, 0, '2010-05-12 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2260, 0, '2010-05-12 12:45:00', '2010-05-12', NULL, 0, '2010-05-12 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2261, 0, '2010-05-12 13:00:00', '2010-05-12', NULL, 0, '2010-05-12 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2262, 0, '2010-05-12 13:15:00', '2010-05-12', NULL, 0, '2010-05-12 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2263, 0, '2010-05-12 13:30:00', '2010-05-12', NULL, 0, '2010-05-12 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2264, 0, '2010-05-12 13:45:00', '2010-05-12', NULL, 0, '2010-05-12 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2265, 0, '2010-05-12 14:00:00', '2010-05-12', NULL, 0, '2010-05-12 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2266, 0, '2010-05-12 14:15:00', '2010-05-12', NULL, 0, '2010-05-12 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2267, 0, '2010-05-12 14:30:00', '2010-05-12', NULL, 0, '2010-05-12 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2268, 0, '2010-05-12 14:45:00', '2010-05-12', NULL, 0, '2010-05-12 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2269, 0, '2010-05-12 15:00:00', '2010-05-12', NULL, 0, '2010-05-12 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2270, 0, '2010-05-12 15:15:00', '2010-05-12', NULL, 0, '2010-05-12 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2271, 0, '2010-05-12 15:30:00', '2010-05-12', NULL, 0, '2010-05-12 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2272, 0, '2010-05-12 15:45:00', '2010-05-12', NULL, 0, '2010-05-12 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2273, 0, '2010-05-12 16:00:00', '2010-05-12', NULL, 0, '2010-05-12 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2274, 0, '2010-05-12 16:15:00', '2010-05-12', NULL, 0, '2010-05-12 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2275, 0, '2010-05-12 16:30:00', '2010-05-12', NULL, 0, '2010-05-12 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2276, 0, '2010-05-12 16:45:00', '2010-05-12', NULL, 0, '2010-05-12 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2277, 0, '2010-05-13 09:00:00', '2010-05-13', NULL, 0, '2010-05-13 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2278, 0, '2010-05-13 09:15:00', '2010-05-13', NULL, 0, '2010-05-13 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2279, 0, '2010-05-13 09:30:00', '2010-05-13', NULL, 0, '2010-05-13 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2280, 0, '2010-05-13 09:45:00', '2010-05-13', NULL, 0, '2010-05-13 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2281, 0, '2010-05-13 10:00:00', '2010-05-13', NULL, 0, '2010-05-13 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2282, 0, '2010-05-13 10:15:00', '2010-05-13', NULL, 0, '2010-05-13 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2283, 0, '2010-05-13 10:30:00', '2010-05-13', NULL, 0, '2010-05-13 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2284, 0, '2010-05-13 10:45:00', '2010-05-13', NULL, 0, '2010-05-13 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2285, 0, '2010-05-13 11:00:00', '2010-05-13', NULL, 0, '2010-05-13 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2286, 0, '2010-05-13 11:15:00', '2010-05-13', NULL, 0, '2010-05-13 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2287, 0, '2010-05-13 11:30:00', '2010-05-13', NULL, 0, '2010-05-13 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2288, 0, '2010-05-13 11:45:00', '2010-05-13', NULL, 0, '2010-05-13 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2289, 0, '2010-05-13 12:00:00', '2010-05-13', NULL, 0, '2010-05-13 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2290, 0, '2010-05-13 12:15:00', '2010-05-13', NULL, 0, '2010-05-13 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2291, 0, '2010-05-13 12:30:00', '2010-05-13', NULL, 0, '2010-05-13 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2292, 0, '2010-05-13 12:45:00', '2010-05-13', NULL, 0, '2010-05-13 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2293, 0, '2010-05-13 13:00:00', '2010-05-13', NULL, 0, '2010-05-13 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2294, 0, '2010-05-13 13:15:00', '2010-05-13', NULL, 0, '2010-05-13 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2295, 0, '2010-05-13 13:30:00', '2010-05-13', NULL, 0, '2010-05-13 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2296, 0, '2010-05-13 13:45:00', '2010-05-13', NULL, 0, '2010-05-13 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2297, 0, '2010-05-13 14:00:00', '2010-05-13', NULL, 0, '2010-05-13 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2298, 0, '2010-05-13 14:15:00', '2010-05-13', NULL, 0, '2010-05-13 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2299, 0, '2010-05-13 14:30:00', '2010-05-13', NULL, 0, '2010-05-13 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2300, 0, '2010-05-13 14:45:00', '2010-05-13', NULL, 0, '2010-05-13 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2301, 0, '2010-05-13 15:00:00', '2010-05-13', NULL, 0, '2010-05-13 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2302, 0, '2010-05-13 15:15:00', '2010-05-13', NULL, 0, '2010-05-13 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2303, 0, '2010-05-13 15:30:00', '2010-05-13', NULL, 0, '2010-05-13 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2304, 0, '2010-05-13 15:45:00', '2010-05-13', NULL, 0, '2010-05-13 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2305, 0, '2010-05-13 16:00:00', '2010-05-13', NULL, 0, '2010-05-13 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2306, 0, '2010-05-13 16:15:00', '2010-05-13', NULL, 0, '2010-05-13 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2307, 0, '2010-05-13 16:30:00', '2010-05-13', NULL, 0, '2010-05-13 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2308, 0, '2010-05-13 16:45:00', '2010-05-13', NULL, 0, '2010-05-13 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2309, 0, '2010-05-14 09:00:00', '2010-05-14', NULL, 0, '2010-05-14 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2310, 0, '2010-05-14 09:15:00', '2010-05-14', NULL, 0, '2010-05-14 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2311, 0, '2010-05-14 09:30:00', '2010-05-14', NULL, 0, '2010-05-14 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2312, 0, '2010-05-14 09:45:00', '2010-05-14', NULL, 0, '2010-05-14 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2313, 0, '2010-05-14 10:00:00', '2010-05-14', NULL, 0, '2010-05-14 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2314, 0, '2010-05-14 10:15:00', '2010-05-14', NULL, 0, '2010-05-14 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2315, 0, '2010-05-14 10:30:00', '2010-05-14', NULL, 0, '2010-05-14 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2316, 0, '2010-05-14 10:45:00', '2010-05-14', NULL, 0, '2010-05-14 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2317, 0, '2010-05-14 11:00:00', '2010-05-14', NULL, 0, '2010-05-14 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2318, 0, '2010-05-14 11:15:00', '2010-05-14', NULL, 0, '2010-05-14 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2319, 0, '2010-05-14 11:30:00', '2010-05-14', NULL, 0, '2010-05-14 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2320, 0, '2010-05-14 11:45:00', '2010-05-14', NULL, 0, '2010-05-14 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2321, 0, '2010-05-14 12:00:00', '2010-05-14', NULL, 0, '2010-05-14 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2322, 0, '2010-05-14 12:15:00', '2010-05-14', NULL, 0, '2010-05-14 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2323, 0, '2010-05-14 12:30:00', '2010-05-14', NULL, 0, '2010-05-14 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2324, 0, '2010-05-14 12:45:00', '2010-05-14', NULL, 0, '2010-05-14 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2325, 0, '2010-05-14 13:00:00', '2010-05-14', NULL, 0, '2010-05-14 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2326, 0, '2010-05-14 13:15:00', '2010-05-14', NULL, 0, '2010-05-14 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2327, 0, '2010-05-14 13:30:00', '2010-05-14', NULL, 0, '2010-05-14 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2328, 0, '2010-05-14 13:45:00', '2010-05-14', NULL, 0, '2010-05-14 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2329, 0, '2010-05-14 14:00:00', '2010-05-14', NULL, 0, '2010-05-14 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2330, 0, '2010-05-14 14:15:00', '2010-05-14', NULL, 0, '2010-05-14 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2331, 0, '2010-05-14 14:30:00', '2010-05-14', NULL, 0, '2010-05-14 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2332, 0, '2010-05-14 14:45:00', '2010-05-14', NULL, 0, '2010-05-14 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2333, 0, '2010-05-14 15:00:00', '2010-05-14', NULL, 0, '2010-05-14 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2334, 0, '2010-05-14 15:15:00', '2010-05-14', NULL, 0, '2010-05-14 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2335, 0, '2010-05-14 15:30:00', '2010-05-14', NULL, 0, '2010-05-14 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2336, 0, '2010-05-14 15:45:00', '2010-05-14', NULL, 0, '2010-05-14 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2337, 0, '2010-05-14 16:00:00', '2010-05-14', NULL, 0, '2010-05-14 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2338, 0, '2010-05-14 16:15:00', '2010-05-14', NULL, 0, '2010-05-14 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2339, 0, '2010-05-14 16:30:00', '2010-05-14', NULL, 0, '2010-05-14 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2340, 0, '2010-05-14 16:45:00', '2010-05-14', NULL, 0, '2010-05-14 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2341, 0, '2010-05-17 09:00:00', '2010-05-17', NULL, 0, '2010-05-17 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2342, 0, '2010-05-17 09:15:00', '2010-05-17', NULL, 0, '2010-05-17 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2343, 0, '2010-05-17 09:30:00', '2010-05-17', NULL, 0, '2010-05-17 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2344, 0, '2010-05-17 09:45:00', '2010-05-17', NULL, 0, '2010-05-17 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2345, 0, '2010-05-17 10:00:00', '2010-05-17', NULL, 0, '2010-05-17 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2346, 0, '2010-05-17 10:15:00', '2010-05-17', NULL, 0, '2010-05-17 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2347, 0, '2010-05-17 10:30:00', '2010-05-17', NULL, 0, '2010-05-17 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2348, 0, '2010-05-17 10:45:00', '2010-05-17', NULL, 0, '2010-05-17 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2349, 0, '2010-05-17 11:00:00', '2010-05-17', NULL, 0, '2010-05-17 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2350, 0, '2010-05-17 11:15:00', '2010-05-17', NULL, 0, '2010-05-17 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2351, 0, '2010-05-17 11:30:00', '2010-05-17', NULL, 0, '2010-05-17 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2352, 0, '2010-05-17 11:45:00', '2010-05-17', NULL, 0, '2010-05-17 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2353, 0, '2010-05-17 12:00:00', '2010-05-17', NULL, 0, '2010-05-17 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2354, 0, '2010-05-17 12:15:00', '2010-05-17', NULL, 0, '2010-05-17 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2355, 0, '2010-05-17 12:30:00', '2010-05-17', NULL, 0, '2010-05-17 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2356, 0, '2010-05-17 12:45:00', '2010-05-17', NULL, 0, '2010-05-17 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2357, 0, '2010-05-17 13:00:00', '2010-05-17', NULL, 0, '2010-05-17 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2358, 0, '2010-05-17 13:15:00', '2010-05-17', NULL, 0, '2010-05-17 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2359, 0, '2010-05-17 13:30:00', '2010-05-17', NULL, 0, '2010-05-17 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2360, 0, '2010-05-17 13:45:00', '2010-05-17', NULL, 0, '2010-05-17 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2361, 0, '2010-05-17 14:00:00', '2010-05-17', NULL, 0, '2010-05-17 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2362, 0, '2010-05-17 14:15:00', '2010-05-17', NULL, 0, '2010-05-17 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2363, 0, '2010-05-17 14:30:00', '2010-05-17', NULL, 0, '2010-05-17 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2364, 0, '2010-05-17 14:45:00', '2010-05-17', NULL, 0, '2010-05-17 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2365, 0, '2010-05-17 15:00:00', '2010-05-17', NULL, 0, '2010-05-17 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2366, 0, '2010-05-17 15:15:00', '2010-05-17', NULL, 0, '2010-05-17 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2367, 0, '2010-05-17 15:30:00', '2010-05-17', NULL, 0, '2010-05-17 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2368, 0, '2010-05-17 15:45:00', '2010-05-17', NULL, 0, '2010-05-17 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2369, 0, '2010-05-17 16:00:00', '2010-05-17', NULL, 0, '2010-05-17 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2370, 0, '2010-05-17 16:15:00', '2010-05-17', NULL, 0, '2010-05-17 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2371, 0, '2010-05-17 16:30:00', '2010-05-17', NULL, 0, '2010-05-17 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2372, 0, '2010-05-17 16:45:00', '2010-05-17', NULL, 0, '2010-05-17 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2373, 0, '2010-05-18 09:00:00', '2010-05-18', NULL, 0, '2010-05-18 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2374, 0, '2010-05-18 09:15:00', '2010-05-18', NULL, 0, '2010-05-18 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2375, 0, '2010-05-18 09:30:00', '2010-05-18', NULL, 0, '2010-05-18 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2376, 0, '2010-05-18 09:45:00', '2010-05-18', NULL, 0, '2010-05-18 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2377, 0, '2010-05-18 10:00:00', '2010-05-18', NULL, 0, '2010-05-18 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2378, 0, '2010-05-18 10:15:00', '2010-05-18', NULL, 0, '2010-05-18 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2379, 0, '2010-05-18 10:30:00', '2010-05-18', NULL, 0, '2010-05-18 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2380, 0, '2010-05-18 10:45:00', '2010-05-18', NULL, 0, '2010-05-18 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2381, 0, '2010-05-18 11:00:00', '2010-05-18', NULL, 0, '2010-05-18 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2382, 0, '2010-05-18 11:15:00', '2010-05-18', NULL, 0, '2010-05-18 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2383, 0, '2010-05-18 11:30:00', '2010-05-18', NULL, 0, '2010-05-18 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2384, 0, '2010-05-18 11:45:00', '2010-05-18', NULL, 0, '2010-05-18 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2385, 0, '2010-05-18 12:00:00', '2010-05-18', NULL, 0, '2010-05-18 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2386, 0, '2010-05-18 12:15:00', '2010-05-18', NULL, 0, '2010-05-18 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2387, 0, '2010-05-18 12:30:00', '2010-05-18', NULL, 0, '2010-05-18 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2388, 0, '2010-05-18 12:45:00', '2010-05-18', NULL, 0, '2010-05-18 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2389, 0, '2010-05-18 13:00:00', '2010-05-18', NULL, 0, '2010-05-18 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2390, 0, '2010-05-18 13:15:00', '2010-05-18', NULL, 0, '2010-05-18 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2391, 0, '2010-05-18 13:30:00', '2010-05-18', NULL, 0, '2010-05-18 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2392, 0, '2010-05-18 13:45:00', '2010-05-18', NULL, 0, '2010-05-18 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2393, 0, '2010-05-18 14:00:00', '2010-05-18', NULL, 0, '2010-05-18 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2394, 0, '2010-05-18 14:15:00', '2010-05-18', NULL, 0, '2010-05-18 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2395, 0, '2010-05-18 14:30:00', '2010-05-18', NULL, 0, '2010-05-18 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2396, 0, '2010-05-18 14:45:00', '2010-05-18', NULL, 0, '2010-05-18 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2397, 0, '2010-05-18 15:00:00', '2010-05-18', NULL, 0, '2010-05-18 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2398, 0, '2010-05-18 15:15:00', '2010-05-18', NULL, 0, '2010-05-18 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2399, 0, '2010-05-18 15:30:00', '2010-05-18', NULL, 0, '2010-05-18 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2400, 0, '2010-05-18 15:45:00', '2010-05-18', NULL, 0, '2010-05-18 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2401, 0, '2010-05-18 16:00:00', '2010-05-18', NULL, 0, '2010-05-18 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2402, 0, '2010-05-18 16:15:00', '2010-05-18', NULL, 0, '2010-05-18 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2403, 0, '2010-05-18 16:30:00', '2010-05-18', NULL, 0, '2010-05-18 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2404, 0, '2010-05-18 16:45:00', '2010-05-18', NULL, 0, '2010-05-18 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2405, 0, '2010-05-19 09:00:00', '2010-05-19', NULL, 0, '2010-05-19 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2406, 0, '2010-05-19 09:15:00', '2010-05-19', NULL, 0, '2010-05-19 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2407, 0, '2010-05-19 09:30:00', '2010-05-19', NULL, 0, '2010-05-19 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2408, 0, '2010-05-19 09:45:00', '2010-05-19', NULL, 0, '2010-05-19 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2409, 0, '2010-05-19 10:00:00', '2010-05-19', NULL, 0, '2010-05-19 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2410, 0, '2010-05-19 10:15:00', '2010-05-19', NULL, 0, '2010-05-19 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2411, 0, '2010-05-19 10:30:00', '2010-05-19', NULL, 0, '2010-05-19 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2412, 0, '2010-05-19 10:45:00', '2010-05-19', NULL, 0, '2010-05-19 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2413, 0, '2010-05-19 11:00:00', '2010-05-19', NULL, 0, '2010-05-19 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2414, 0, '2010-05-19 11:15:00', '2010-05-19', NULL, 0, '2010-05-19 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2415, 0, '2010-05-19 11:30:00', '2010-05-19', NULL, 0, '2010-05-19 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2416, 0, '2010-05-19 11:45:00', '2010-05-19', NULL, 0, '2010-05-19 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2417, 0, '2010-05-19 12:00:00', '2010-05-19', NULL, 0, '2010-05-19 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2418, 0, '2010-05-19 12:15:00', '2010-05-19', NULL, 0, '2010-05-19 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2419, 0, '2010-05-19 12:30:00', '2010-05-19', NULL, 0, '2010-05-19 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2420, 0, '2010-05-19 12:45:00', '2010-05-19', NULL, 0, '2010-05-19 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2421, 0, '2010-05-19 13:00:00', '2010-05-19', NULL, 0, '2010-05-19 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2422, 0, '2010-05-19 13:15:00', '2010-05-19', NULL, 0, '2010-05-19 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2423, 0, '2010-05-19 13:30:00', '2010-05-19', NULL, 0, '2010-05-19 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2424, 0, '2010-05-19 13:45:00', '2010-05-19', NULL, 0, '2010-05-19 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2425, 0, '2010-05-19 14:00:00', '2010-05-19', NULL, 0, '2010-05-19 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2426, 0, '2010-05-19 14:15:00', '2010-05-19', NULL, 0, '2010-05-19 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2427, 0, '2010-05-19 14:30:00', '2010-05-19', NULL, 0, '2010-05-19 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2428, 0, '2010-05-19 14:45:00', '2010-05-19', NULL, 0, '2010-05-19 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2429, 0, '2010-05-19 15:00:00', '2010-05-19', NULL, 0, '2010-05-19 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2430, 0, '2010-05-19 15:15:00', '2010-05-19', NULL, 0, '2010-05-19 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2431, 0, '2010-05-19 15:30:00', '2010-05-19', NULL, 0, '2010-05-19 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2432, 0, '2010-05-19 15:45:00', '2010-05-19', NULL, 0, '2010-05-19 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2433, 0, '2010-05-19 16:00:00', '2010-05-19', NULL, 0, '2010-05-19 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2434, 0, '2010-05-19 16:15:00', '2010-05-19', NULL, 0, '2010-05-19 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2435, 0, '2010-05-19 16:30:00', '2010-05-19', NULL, 0, '2010-05-19 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2436, 0, '2010-05-19 16:45:00', '2010-05-19', NULL, 0, '2010-05-19 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2437, 0, '2010-05-20 09:00:00', '2010-05-20', NULL, 0, '2010-05-20 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2438, 0, '2010-05-20 09:15:00', '2010-05-20', NULL, 0, '2010-05-20 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2439, 0, '2010-05-20 09:30:00', '2010-05-20', NULL, 0, '2010-05-20 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2440, 0, '2010-05-20 09:45:00', '2010-05-20', NULL, 0, '2010-05-20 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2441, 0, '2010-05-20 10:00:00', '2010-05-20', NULL, 0, '2010-05-20 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2442, 0, '2010-05-20 10:15:00', '2010-05-20', NULL, 0, '2010-05-20 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2443, 0, '2010-05-20 10:30:00', '2010-05-20', NULL, 0, '2010-05-20 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2444, 0, '2010-05-20 10:45:00', '2010-05-20', NULL, 0, '2010-05-20 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2445, 0, '2010-05-20 11:00:00', '2010-05-20', NULL, 0, '2010-05-20 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2446, 0, '2010-05-20 11:15:00', '2010-05-20', NULL, 0, '2010-05-20 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2447, 0, '2010-05-20 11:30:00', '2010-05-20', NULL, 0, '2010-05-20 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2448, 0, '2010-05-20 11:45:00', '2010-05-20', NULL, 0, '2010-05-20 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2449, 0, '2010-05-20 12:00:00', '2010-05-20', NULL, 0, '2010-05-20 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2450, 0, '2010-05-20 12:15:00', '2010-05-20', NULL, 0, '2010-05-20 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2451, 0, '2010-05-20 12:30:00', '2010-05-20', NULL, 0, '2010-05-20 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2452, 0, '2010-05-20 12:45:00', '2010-05-20', NULL, 0, '2010-05-20 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2453, 0, '2010-05-20 13:00:00', '2010-05-20', NULL, 0, '2010-05-20 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2454, 0, '2010-05-20 13:15:00', '2010-05-20', NULL, 0, '2010-05-20 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2455, 0, '2010-05-20 13:30:00', '2010-05-20', NULL, 0, '2010-05-20 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2456, 0, '2010-05-20 13:45:00', '2010-05-20', NULL, 0, '2010-05-20 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2457, 0, '2010-05-20 14:00:00', '2010-05-20', NULL, 0, '2010-05-20 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2458, 0, '2010-05-20 14:15:00', '2010-05-20', NULL, 0, '2010-05-20 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2459, 0, '2010-05-20 14:30:00', '2010-05-20', NULL, 0, '2010-05-20 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2460, 0, '2010-05-20 14:45:00', '2010-05-20', NULL, 0, '2010-05-20 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2461, 0, '2010-05-20 15:00:00', '2010-05-20', NULL, 0, '2010-05-20 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2462, 0, '2010-05-20 15:15:00', '2010-05-20', NULL, 0, '2010-05-20 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2463, 0, '2010-05-20 15:30:00', '2010-05-20', NULL, 0, '2010-05-20 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2464, 0, '2010-05-20 15:45:00', '2010-05-20', NULL, 0, '2010-05-20 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2465, 0, '2010-05-20 16:00:00', '2010-05-20', NULL, 0, '2010-05-20 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2466, 0, '2010-05-20 16:15:00', '2010-05-20', NULL, 0, '2010-05-20 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2467, 0, '2010-05-20 16:30:00', '2010-05-20', NULL, 0, '2010-05-20 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2468, 0, '2010-05-20 16:45:00', '2010-05-20', NULL, 0, '2010-05-20 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2469, 0, '2010-05-21 09:00:00', '2010-05-21', NULL, 0, '2010-05-21 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2470, 0, '2010-05-21 09:15:00', '2010-05-21', NULL, 0, '2010-05-21 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2471, 0, '2010-05-21 09:30:00', '2010-05-21', NULL, 0, '2010-05-21 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2472, 0, '2010-05-21 09:45:00', '2010-05-21', NULL, 0, '2010-05-21 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2473, 0, '2010-05-21 10:00:00', '2010-05-21', NULL, 0, '2010-05-21 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2474, 0, '2010-05-21 10:15:00', '2010-05-21', NULL, 0, '2010-05-21 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2475, 0, '2010-05-21 10:30:00', '2010-05-21', NULL, 0, '2010-05-21 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2476, 0, '2010-05-21 10:45:00', '2010-05-21', NULL, 0, '2010-05-21 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2477, 0, '2010-05-21 11:00:00', '2010-05-21', NULL, 0, '2010-05-21 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2478, 0, '2010-05-21 11:15:00', '2010-05-21', NULL, 0, '2010-05-21 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2479, 0, '2010-05-21 11:30:00', '2010-05-21', NULL, 0, '2010-05-21 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2480, 0, '2010-05-21 11:45:00', '2010-05-21', NULL, 0, '2010-05-21 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2481, 0, '2010-05-21 12:00:00', '2010-05-21', NULL, 0, '2010-05-21 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2482, 0, '2010-05-21 12:15:00', '2010-05-21', NULL, 0, '2010-05-21 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2483, 0, '2010-05-21 12:30:00', '2010-05-21', NULL, 0, '2010-05-21 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2484, 0, '2010-05-21 12:45:00', '2010-05-21', NULL, 0, '2010-05-21 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2485, 0, '2010-05-21 13:00:00', '2010-05-21', NULL, 0, '2010-05-21 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2486, 0, '2010-05-21 13:15:00', '2010-05-21', NULL, 0, '2010-05-21 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2487, 0, '2010-05-21 13:30:00', '2010-05-21', NULL, 0, '2010-05-21 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2488, 0, '2010-05-21 13:45:00', '2010-05-21', NULL, 0, '2010-05-21 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2489, 0, '2010-05-21 14:00:00', '2010-05-21', NULL, 0, '2010-05-21 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2490, 0, '2010-05-21 14:15:00', '2010-05-21', NULL, 0, '2010-05-21 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2491, 0, '2010-05-21 14:30:00', '2010-05-21', NULL, 0, '2010-05-21 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2492, 0, '2010-05-21 14:45:00', '2010-05-21', NULL, 0, '2010-05-21 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2493, 0, '2010-05-21 15:00:00', '2010-05-21', NULL, 0, '2010-05-21 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2494, 0, '2010-05-21 15:15:00', '2010-05-21', NULL, 0, '2010-05-21 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2495, 0, '2010-05-21 15:30:00', '2010-05-21', NULL, 0, '2010-05-21 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2496, 0, '2010-05-21 15:45:00', '2010-05-21', NULL, 0, '2010-05-21 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2497, 0, '2010-05-21 16:00:00', '2010-05-21', NULL, 0, '2010-05-21 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2498, 0, '2010-05-21 16:15:00', '2010-05-21', NULL, 0, '2010-05-21 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2499, 0, '2010-05-21 16:30:00', '2010-05-21', NULL, 0, '2010-05-21 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2500, 0, '2010-05-21 16:45:00', '2010-05-21', NULL, 0, '2010-05-21 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2501, 0, '2010-05-24 09:00:00', '2010-05-24', NULL, 0, '2010-05-24 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2502, 0, '2010-05-24 09:15:00', '2010-05-24', NULL, 0, '2010-05-24 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2503, 0, '2010-05-24 09:30:00', '2010-05-24', NULL, 0, '2010-05-24 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2504, 0, '2010-05-24 09:45:00', '2010-05-24', NULL, 0, '2010-05-24 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2505, 0, '2010-05-24 10:00:00', '2010-05-24', NULL, 0, '2010-05-24 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2506, 0, '2010-05-24 10:15:00', '2010-05-24', NULL, 0, '2010-05-24 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2507, 0, '2010-05-24 10:30:00', '2010-05-24', NULL, 0, '2010-05-24 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2508, 0, '2010-05-24 10:45:00', '2010-05-24', NULL, 0, '2010-05-24 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2509, 0, '2010-05-24 11:00:00', '2010-05-24', NULL, 0, '2010-05-24 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2510, 0, '2010-05-24 11:15:00', '2010-05-24', NULL, 0, '2010-05-24 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2511, 0, '2010-05-24 11:30:00', '2010-05-24', NULL, 0, '2010-05-24 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2512, 0, '2010-05-24 11:45:00', '2010-05-24', NULL, 0, '2010-05-24 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2513, 0, '2010-05-24 12:00:00', '2010-05-24', NULL, 0, '2010-05-24 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2514, 0, '2010-05-24 12:15:00', '2010-05-24', NULL, 0, '2010-05-24 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2515, 0, '2010-05-24 12:30:00', '2010-05-24', NULL, 0, '2010-05-24 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2516, 0, '2010-05-24 12:45:00', '2010-05-24', NULL, 0, '2010-05-24 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2517, 0, '2010-05-24 13:00:00', '2010-05-24', NULL, 0, '2010-05-24 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2518, 0, '2010-05-24 13:15:00', '2010-05-24', NULL, 0, '2010-05-24 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2519, 0, '2010-05-24 13:30:00', '2010-05-24', NULL, 0, '2010-05-24 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2520, 0, '2010-05-24 13:45:00', '2010-05-24', NULL, 0, '2010-05-24 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2521, 0, '2010-05-24 14:00:00', '2010-05-24', NULL, 0, '2010-05-24 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2522, 0, '2010-05-24 14:15:00', '2010-05-24', NULL, 0, '2010-05-24 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2523, 0, '2010-05-24 14:30:00', '2010-05-24', NULL, 0, '2010-05-24 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2524, 0, '2010-05-24 14:45:00', '2010-05-24', NULL, 0, '2010-05-24 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2525, 0, '2010-05-24 15:00:00', '2010-05-24', NULL, 0, '2010-05-24 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2526, 0, '2010-05-24 15:15:00', '2010-05-24', NULL, 0, '2010-05-24 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2527, 0, '2010-05-24 15:30:00', '2010-05-24', NULL, 0, '2010-05-24 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2528, 0, '2010-05-24 15:45:00', '2010-05-24', NULL, 0, '2010-05-24 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2529, 0, '2010-05-24 16:00:00', '2010-05-24', NULL, 0, '2010-05-24 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2530, 0, '2010-05-24 16:15:00', '2010-05-24', NULL, 0, '2010-05-24 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2531, 0, '2010-05-24 16:30:00', '2010-05-24', NULL, 0, '2010-05-24 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2532, 0, '2010-05-24 16:45:00', '2010-05-24', NULL, 0, '2010-05-24 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2533, 0, '2010-05-25 09:00:00', '2010-05-25', NULL, 0, '2010-05-25 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2534, 0, '2010-05-25 09:15:00', '2010-05-25', NULL, 0, '2010-05-25 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2535, 0, '2010-05-25 09:30:00', '2010-05-25', NULL, 0, '2010-05-25 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2536, 0, '2010-05-25 09:45:00', '2010-05-25', NULL, 0, '2010-05-25 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2537, 0, '2010-05-25 10:00:00', '2010-05-25', NULL, 0, '2010-05-25 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2538, 0, '2010-05-25 10:15:00', '2010-05-25', NULL, 0, '2010-05-25 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2539, 0, '2010-05-25 10:30:00', '2010-05-25', NULL, 0, '2010-05-25 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2540, 0, '2010-05-25 10:45:00', '2010-05-25', NULL, 0, '2010-05-25 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2541, 0, '2010-05-25 11:00:00', '2010-05-25', NULL, 0, '2010-05-25 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2542, 0, '2010-05-25 11:15:00', '2010-05-25', NULL, 0, '2010-05-25 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2543, 0, '2010-05-25 11:30:00', '2010-05-25', NULL, 0, '2010-05-25 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2544, 0, '2010-05-25 11:45:00', '2010-05-25', NULL, 0, '2010-05-25 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2545, 0, '2010-05-25 12:00:00', '2010-05-25', NULL, 0, '2010-05-25 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2546, 0, '2010-05-25 12:15:00', '2010-05-25', NULL, 0, '2010-05-25 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2547, 0, '2010-05-25 12:30:00', '2010-05-25', NULL, 0, '2010-05-25 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2548, 0, '2010-05-25 12:45:00', '2010-05-25', NULL, 0, '2010-05-25 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2549, 0, '2010-05-25 13:00:00', '2010-05-25', NULL, 0, '2010-05-25 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2550, 0, '2010-05-25 13:15:00', '2010-05-25', NULL, 0, '2010-05-25 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2551, 0, '2010-05-25 13:30:00', '2010-05-25', NULL, 0, '2010-05-25 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2552, 0, '2010-05-25 13:45:00', '2010-05-25', NULL, 0, '2010-05-25 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2553, 0, '2010-05-25 14:00:00', '2010-05-25', NULL, 0, '2010-05-25 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2554, 0, '2010-05-25 14:15:00', '2010-05-25', NULL, 0, '2010-05-25 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2555, 0, '2010-05-25 14:30:00', '2010-05-25', NULL, 0, '2010-05-25 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2556, 0, '2010-05-25 14:45:00', '2010-05-25', NULL, 0, '2010-05-25 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2557, 0, '2010-05-25 15:00:00', '2010-05-25', NULL, 0, '2010-05-25 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2558, 0, '2010-05-25 15:15:00', '2010-05-25', NULL, 0, '2010-05-25 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2559, 0, '2010-05-25 15:30:00', '2010-05-25', NULL, 0, '2010-05-25 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2560, 0, '2010-05-25 15:45:00', '2010-05-25', NULL, 0, '2010-05-25 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2561, 0, '2010-05-25 16:00:00', '2010-05-25', NULL, 0, '2010-05-25 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2562, 0, '2010-05-25 16:15:00', '2010-05-25', NULL, 0, '2010-05-25 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2563, 0, '2010-05-25 16:30:00', '2010-05-25', NULL, 0, '2010-05-25 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2564, 0, '2010-05-25 16:45:00', '2010-05-25', NULL, 0, '2010-05-25 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2565, 0, '2010-05-26 09:00:00', '2010-05-26', NULL, 0, '2010-05-26 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2566, 0, '2010-05-26 09:15:00', '2010-05-26', NULL, 0, '2010-05-26 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2567, 0, '2010-05-26 09:30:00', '2010-05-26', NULL, 0, '2010-05-26 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2568, 0, '2010-05-26 09:45:00', '2010-05-26', NULL, 0, '2010-05-26 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2569, 0, '2010-05-26 10:00:00', '2010-05-26', NULL, 0, '2010-05-26 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2570, 0, '2010-05-26 10:15:00', '2010-05-26', NULL, 0, '2010-05-26 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2571, 0, '2010-05-26 10:30:00', '2010-05-26', NULL, 0, '2010-05-26 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2572, 0, '2010-05-26 10:45:00', '2010-05-26', NULL, 0, '2010-05-26 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2573, 0, '2010-05-26 11:00:00', '2010-05-26', NULL, 0, '2010-05-26 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2574, 0, '2010-05-26 11:15:00', '2010-05-26', NULL, 0, '2010-05-26 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2575, 0, '2010-05-26 11:30:00', '2010-05-26', NULL, 0, '2010-05-26 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2576, 0, '2010-05-26 11:45:00', '2010-05-26', NULL, 0, '2010-05-26 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2577, 0, '2010-05-26 12:00:00', '2010-05-26', NULL, 0, '2010-05-26 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2578, 0, '2010-05-26 12:15:00', '2010-05-26', NULL, 0, '2010-05-26 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2579, 0, '2010-05-26 12:30:00', '2010-05-26', NULL, 0, '2010-05-26 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2580, 0, '2010-05-26 12:45:00', '2010-05-26', NULL, 0, '2010-05-26 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2581, 0, '2010-05-26 13:00:00', '2010-05-26', NULL, 0, '2010-05-26 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2582, 0, '2010-05-26 13:15:00', '2010-05-26', NULL, 0, '2010-05-26 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2583, 0, '2010-05-26 13:30:00', '2010-05-26', NULL, 0, '2010-05-26 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2584, 0, '2010-05-26 13:45:00', '2010-05-26', NULL, 0, '2010-05-26 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2585, 0, '2010-05-26 14:00:00', '2010-05-26', NULL, 0, '2010-05-26 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2586, 0, '2010-05-26 14:15:00', '2010-05-26', NULL, 0, '2010-05-26 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2587, 0, '2010-05-26 14:30:00', '2010-05-26', NULL, 0, '2010-05-26 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2588, 0, '2010-05-26 14:45:00', '2010-05-26', NULL, 0, '2010-05-26 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2589, 0, '2010-05-26 15:00:00', '2010-05-26', NULL, 0, '2010-05-26 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2590, 0, '2010-05-26 15:15:00', '2010-05-26', NULL, 0, '2010-05-26 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2591, 0, '2010-05-26 15:30:00', '2010-05-26', NULL, 0, '2010-05-26 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2592, 0, '2010-05-26 15:45:00', '2010-05-26', NULL, 0, '2010-05-26 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2593, 0, '2010-05-26 16:00:00', '2010-05-26', NULL, 0, '2010-05-26 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2594, 0, '2010-05-26 16:15:00', '2010-05-26', NULL, 0, '2010-05-26 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2595, 0, '2010-05-26 16:30:00', '2010-05-26', NULL, 0, '2010-05-26 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2596, 0, '2010-05-26 16:45:00', '2010-05-26', NULL, 0, '2010-05-26 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2597, 0, '2010-05-27 09:00:00', '2010-05-27', NULL, 0, '2010-05-27 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2598, 0, '2010-05-27 09:15:00', '2010-05-27', NULL, 0, '2010-05-27 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2599, 0, '2010-05-27 09:30:00', '2010-05-27', NULL, 0, '2010-05-27 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2600, 0, '2010-05-27 09:45:00', '2010-05-27', NULL, 0, '2010-05-27 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2601, 0, '2010-05-27 10:00:00', '2010-05-27', NULL, 0, '2010-05-27 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2602, 0, '2010-05-27 10:15:00', '2010-05-27', NULL, 0, '2010-05-27 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2603, 0, '2010-05-27 10:30:00', '2010-05-27', NULL, 0, '2010-05-27 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2604, 0, '2010-05-27 10:45:00', '2010-05-27', NULL, 0, '2010-05-27 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2605, 0, '2010-05-27 11:00:00', '2010-05-27', NULL, 0, '2010-05-27 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2606, 0, '2010-05-27 11:15:00', '2010-05-27', NULL, 0, '2010-05-27 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2607, 0, '2010-05-27 11:30:00', '2010-05-27', NULL, 0, '2010-05-27 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2608, 0, '2010-05-27 11:45:00', '2010-05-27', NULL, 0, '2010-05-27 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2609, 0, '2010-05-27 12:00:00', '2010-05-27', NULL, 0, '2010-05-27 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2610, 0, '2010-05-27 12:15:00', '2010-05-27', NULL, 0, '2010-05-27 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2611, 0, '2010-05-27 12:30:00', '2010-05-27', NULL, 0, '2010-05-27 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2612, 0, '2010-05-27 12:45:00', '2010-05-27', NULL, 0, '2010-05-27 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2613, 0, '2010-05-27 13:00:00', '2010-05-27', NULL, 0, '2010-05-27 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2614, 0, '2010-05-27 13:15:00', '2010-05-27', NULL, 0, '2010-05-27 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2615, 0, '2010-05-27 13:30:00', '2010-05-27', NULL, 0, '2010-05-27 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2616, 0, '2010-05-27 13:45:00', '2010-05-27', NULL, 0, '2010-05-27 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2617, 0, '2010-05-27 14:00:00', '2010-05-27', NULL, 0, '2010-05-27 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2618, 0, '2010-05-27 14:15:00', '2010-05-27', NULL, 0, '2010-05-27 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2619, 0, '2010-05-27 14:30:00', '2010-05-27', NULL, 0, '2010-05-27 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2620, 0, '2010-05-27 14:45:00', '2010-05-27', NULL, 0, '2010-05-27 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2621, 0, '2010-05-27 15:00:00', '2010-05-27', NULL, 0, '2010-05-27 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2622, 0, '2010-05-27 15:15:00', '2010-05-27', NULL, 0, '2010-05-27 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2623, 0, '2010-05-27 15:30:00', '2010-05-27', NULL, 0, '2010-05-27 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2624, 0, '2010-05-27 15:45:00', '2010-05-27', NULL, 0, '2010-05-27 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2625, 0, '2010-05-27 16:00:00', '2010-05-27', NULL, 0, '2010-05-27 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2626, 0, '2010-05-27 16:15:00', '2010-05-27', NULL, 0, '2010-05-27 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2627, 0, '2010-05-27 16:30:00', '2010-05-27', NULL, 0, '2010-05-27 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2628, 0, '2010-05-27 16:45:00', '2010-05-27', NULL, 0, '2010-05-27 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2629, 0, '2010-05-28 09:00:00', '2010-05-28', NULL, 0, '2010-05-28 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2630, 0, '2010-05-28 09:15:00', '2010-05-28', NULL, 0, '2010-05-28 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2631, 0, '2010-05-28 09:30:00', '2010-05-28', NULL, 0, '2010-05-28 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2632, 0, '2010-05-28 09:45:00', '2010-05-28', NULL, 0, '2010-05-28 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2633, 0, '2010-05-28 10:00:00', '2010-05-28', NULL, 0, '2010-05-28 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2634, 0, '2010-05-28 10:15:00', '2010-05-28', NULL, 0, '2010-05-28 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2635, 0, '2010-05-28 10:30:00', '2010-05-28', NULL, 0, '2010-05-28 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2636, 0, '2010-05-28 10:45:00', '2010-05-28', NULL, 0, '2010-05-28 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2637, 0, '2010-05-28 11:00:00', '2010-05-28', NULL, 0, '2010-05-28 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2638, 0, '2010-05-28 11:15:00', '2010-05-28', NULL, 0, '2010-05-28 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2639, 0, '2010-05-28 11:30:00', '2010-05-28', NULL, 0, '2010-05-28 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2640, 0, '2010-05-28 11:45:00', '2010-05-28', NULL, 0, '2010-05-28 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2641, 0, '2010-05-28 12:00:00', '2010-05-28', NULL, 0, '2010-05-28 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2642, 0, '2010-05-28 12:15:00', '2010-05-28', NULL, 0, '2010-05-28 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2643, 0, '2010-05-28 12:30:00', '2010-05-28', NULL, 0, '2010-05-28 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2644, 0, '2010-05-28 12:45:00', '2010-05-28', NULL, 0, '2010-05-28 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2645, 0, '2010-05-28 13:00:00', '2010-05-28', NULL, 0, '2010-05-28 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2646, 0, '2010-05-28 13:15:00', '2010-05-28', NULL, 0, '2010-05-28 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2647, 0, '2010-05-28 13:30:00', '2010-05-28', NULL, 0, '2010-05-28 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2648, 0, '2010-05-28 13:45:00', '2010-05-28', NULL, 0, '2010-05-28 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2649, 0, '2010-05-28 14:00:00', '2010-05-28', NULL, 0, '2010-05-28 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2650, 0, '2010-05-28 14:15:00', '2010-05-28', NULL, 0, '2010-05-28 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2651, 0, '2010-05-28 14:30:00', '2010-05-28', NULL, 0, '2010-05-28 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2652, 0, '2010-05-28 14:45:00', '2010-05-28', NULL, 0, '2010-05-28 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2653, 0, '2010-05-28 15:00:00', '2010-05-28', NULL, 0, '2010-05-28 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2654, 0, '2010-05-28 15:15:00', '2010-05-28', NULL, 0, '2010-05-28 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2655, 0, '2010-05-28 15:30:00', '2010-05-28', NULL, 0, '2010-05-28 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2656, 0, '2010-05-28 15:45:00', '2010-05-28', NULL, 0, '2010-05-28 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2657, 0, '2010-05-28 16:00:00', '2010-05-28', NULL, 0, '2010-05-28 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2658, 0, '2010-05-28 16:15:00', '2010-05-28', NULL, 0, '2010-05-28 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2659, 0, '2010-05-28 16:30:00', '2010-05-28', NULL, 0, '2010-05-28 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2660, 0, '2010-05-28 16:45:00', '2010-05-28', NULL, 0, '2010-05-28 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2661, 0, '2010-05-31 09:00:00', '2010-05-31', NULL, 0, '2010-05-31 09:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2662, 0, '2010-05-31 09:15:00', '2010-05-31', NULL, 0, '2010-05-31 09:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2663, 0, '2010-05-31 09:30:00', '2010-05-31', NULL, 0, '2010-05-31 09:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2664, 0, '2010-05-31 09:45:00', '2010-05-31', NULL, 0, '2010-05-31 10:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2665, 0, '2010-05-31 10:00:00', '2010-05-31', NULL, 0, '2010-05-31 10:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2666, 0, '2010-05-31 10:15:00', '2010-05-31', NULL, 0, '2010-05-31 10:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2667, 0, '2010-05-31 10:30:00', '2010-05-31', NULL, 0, '2010-05-31 10:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2668, 0, '2010-05-31 10:45:00', '2010-05-31', NULL, 0, '2010-05-31 11:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2669, 0, '2010-05-31 11:00:00', '2010-05-31', NULL, 0, '2010-05-31 11:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2670, 0, '2010-05-31 11:15:00', '2010-05-31', NULL, 0, '2010-05-31 11:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2671, 0, '2010-05-31 11:30:00', '2010-05-31', NULL, 0, '2010-05-31 11:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2672, 0, '2010-05-31 11:45:00', '2010-05-31', NULL, 0, '2010-05-31 12:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2673, 0, '2010-05-31 12:00:00', '2010-05-31', NULL, 0, '2010-05-31 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2674, 0, '2010-05-31 12:15:00', '2010-05-31', NULL, 0, '2010-05-31 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2675, 0, '2010-05-31 12:30:00', '2010-05-31', NULL, 0, '2010-05-31 12:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2676, 0, '2010-05-31 12:45:00', '2010-05-31', NULL, 0, '2010-05-31 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2677, 0, '2010-05-31 13:00:00', '2010-05-31', NULL, 0, '2010-05-31 13:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2678, 0, '2010-05-31 13:15:00', '2010-05-31', NULL, 0, '2010-05-31 13:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2679, 0, '2010-05-31 13:30:00', '2010-05-31', NULL, 0, '2010-05-31 13:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2680, 0, '2010-05-31 13:45:00', '2010-05-31', NULL, 0, '2010-05-31 14:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2681, 0, '2010-05-31 14:00:00', '2010-05-31', NULL, 0, '2010-05-31 14:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2682, 0, '2010-05-31 14:15:00', '2010-05-31', NULL, 0, '2010-05-31 14:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2683, 0, '2010-05-31 14:30:00', '2010-05-31', NULL, 0, '2010-05-31 14:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2684, 0, '2010-05-31 14:45:00', '2010-05-31', NULL, 0, '2010-05-31 15:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2685, 0, '2010-05-31 15:00:00', '2010-05-31', NULL, 0, '2010-05-31 15:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2686, 0, '2010-05-31 15:15:00', '2010-05-31', NULL, 0, '2010-05-31 15:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2687, 0, '2010-05-31 15:30:00', '2010-05-31', NULL, 0, '2010-05-31 15:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2688, 0, '2010-05-31 15:45:00', '2010-05-31', NULL, 0, '2010-05-31 16:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2689, 0, '2010-05-31 16:00:00', '2010-05-31', NULL, 0, '2010-05-31 16:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2690, 0, '2010-05-31 16:15:00', '2010-05-31', NULL, 0, '2010-05-31 16:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2691, 0, '2010-05-31 16:30:00', '2010-05-31', NULL, 0, '2010-05-31 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2692, 0, '2010-05-31 16:45:00', '2010-05-31', NULL, 0, '2010-05-31 17:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1170, 1, '2010-03-25 12:15:00', '2010-03-25', NULL, 1, '2010-03-25 12:30:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1137, 1, '2010-03-24 12:00:00', '2010-03-24', NULL, 1, '2010-03-24 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2693, 0, '2010-03-15 10:00:00', '2010-03-15', NULL, 0, '2010-03-15 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2694, 0, '2010-03-15 10:30:00', '2010-03-15', NULL, 0, '2010-03-15 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2695, 0, '2010-03-15 11:00:00', '2010-03-15', NULL, 0, '2010-03-15 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2696, 0, '2010-03-15 11:30:00', '2010-03-15', NULL, 0, '2010-03-15 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2697, 0, '2010-03-15 12:00:00', '2010-03-15', NULL, 0, '2010-03-15 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2698, 0, '2010-03-15 12:30:00', '2010-03-15', NULL, 0, '2010-03-15 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2699, 0, '2010-03-15 13:00:00', '2010-03-15', NULL, 0, '2010-03-15 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2700, 0, '2010-03-15 13:30:00', '2010-03-15', NULL, 0, '2010-03-15 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2701, 0, '2010-03-15 14:00:00', '2010-03-15', NULL, 0, '2010-03-15 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2702, 0, '2010-03-15 14:30:00', '2010-03-15', NULL, 0, '2010-03-15 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2703, 0, '2010-03-15 15:00:00', '2010-03-15', NULL, 0, '2010-03-15 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2704, 0, '2010-03-15 15:30:00', '2010-03-15', NULL, 0, '2010-03-15 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2705, 0, '2010-03-16 10:00:00', '2010-03-16', NULL, 0, '2010-03-16 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2706, 0, '2010-03-16 10:30:00', '2010-03-16', NULL, 0, '2010-03-16 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2707, 0, '2010-03-16 11:00:00', '2010-03-16', NULL, 0, '2010-03-16 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2708, 0, '2010-03-16 11:30:00', '2010-03-16', NULL, 0, '2010-03-16 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2709, 0, '2010-03-16 12:00:00', '2010-03-16', NULL, 0, '2010-03-16 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2710, 0, '2010-03-16 12:30:00', '2010-03-16', NULL, 0, '2010-03-16 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2711, 0, '2010-03-16 13:00:00', '2010-03-16', NULL, 0, '2010-03-16 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2712, 0, '2010-03-16 13:30:00', '2010-03-16', NULL, 0, '2010-03-16 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2713, 0, '2010-03-16 14:00:00', '2010-03-16', NULL, 0, '2010-03-16 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2714, 0, '2010-03-16 14:30:00', '2010-03-16', NULL, 0, '2010-03-16 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2715, 0, '2010-03-16 15:00:00', '2010-03-16', NULL, 0, '2010-03-16 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2716, 0, '2010-03-16 15:30:00', '2010-03-16', NULL, 0, '2010-03-16 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2717, 0, '2010-03-17 10:00:00', '2010-03-17', NULL, 0, '2010-03-17 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2718, 0, '2010-03-17 10:30:00', '2010-03-17', NULL, 0, '2010-03-17 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2719, 0, '2010-03-17 11:00:00', '2010-03-17', NULL, 0, '2010-03-17 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2720, 0, '2010-03-17 11:30:00', '2010-03-17', NULL, 0, '2010-03-17 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2721, 0, '2010-03-17 12:00:00', '2010-03-17', NULL, 0, '2010-03-17 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2722, 0, '2010-03-17 12:30:00', '2010-03-17', NULL, 0, '2010-03-17 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2723, 0, '2010-03-17 13:00:00', '2010-03-17', NULL, 0, '2010-03-17 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2724, 0, '2010-03-17 13:30:00', '2010-03-17', NULL, 0, '2010-03-17 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2725, 0, '2010-03-17 14:00:00', '2010-03-17', NULL, 0, '2010-03-17 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2726, 0, '2010-03-17 14:30:00', '2010-03-17', NULL, 0, '2010-03-17 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2727, 0, '2010-03-17 15:00:00', '2010-03-17', NULL, 0, '2010-03-17 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2728, 0, '2010-03-17 15:30:00', '2010-03-17', NULL, 0, '2010-03-17 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2729, 0, '2010-03-18 10:00:00', '2010-03-18', NULL, 0, '2010-03-18 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2730, 0, '2010-03-18 10:30:00', '2010-03-18', NULL, 0, '2010-03-18 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2731, 0, '2010-03-18 11:00:00', '2010-03-18', NULL, 0, '2010-03-18 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2732, 0, '2010-03-18 11:30:00', '2010-03-18', NULL, 0, '2010-03-18 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2733, 0, '2010-03-18 12:00:00', '2010-03-18', NULL, 0, '2010-03-18 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2734, 0, '2010-03-18 12:30:00', '2010-03-18', NULL, 0, '2010-03-18 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2735, 0, '2010-03-18 13:00:00', '2010-03-18', NULL, 0, '2010-03-18 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2736, 0, '2010-03-18 13:30:00', '2010-03-18', NULL, 0, '2010-03-18 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2737, 0, '2010-03-18 14:00:00', '2010-03-18', NULL, 0, '2010-03-18 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2738, 0, '2010-03-18 14:30:00', '2010-03-18', NULL, 0, '2010-03-18 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2739, 0, '2010-03-18 15:00:00', '2010-03-18', NULL, 0, '2010-03-18 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2740, 0, '2010-03-18 15:30:00', '2010-03-18', NULL, 0, '2010-03-18 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2741, 0, '2010-03-19 10:00:00', '2010-03-19', NULL, 0, '2010-03-19 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2742, 0, '2010-03-19 10:30:00', '2010-03-19', NULL, 0, '2010-03-19 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2743, 0, '2010-03-19 11:00:00', '2010-03-19', NULL, 0, '2010-03-19 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2745, 0, '2010-03-19 12:00:00', '2010-03-19', NULL, 0, '2010-03-19 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2746, 0, '2010-03-19 12:30:00', '2010-03-19', NULL, 0, '2010-03-19 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2747, 0, '2010-03-19 13:00:00', '2010-03-19', NULL, 0, '2010-03-19 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2748, 0, '2010-03-19 13:30:00', '2010-03-19', NULL, 0, '2010-03-19 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2749, 0, '2010-03-19 14:00:00', '2010-03-19', NULL, 0, '2010-03-19 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2750, 0, '2010-03-19 14:30:00', '2010-03-19', NULL, 0, '2010-03-19 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2751, 0, '2010-03-19 15:00:00', '2010-03-19', NULL, 0, '2010-03-19 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2752, 0, '2010-03-19 15:30:00', '2010-03-19', NULL, 0, '2010-03-19 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2753, 0, '2010-03-22 10:00:00', '2010-03-22', NULL, 0, '2010-03-22 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2754, 0, '2010-03-22 10:30:00', '2010-03-22', NULL, 0, '2010-03-22 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2755, 0, '2010-03-22 11:00:00', '2010-03-22', NULL, 0, '2010-03-22 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2756, 0, '2010-03-22 11:30:00', '2010-03-22', NULL, 0, '2010-03-22 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2757, 0, '2010-03-22 12:00:00', '2010-03-22', NULL, 0, '2010-03-22 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2758, 0, '2010-03-22 12:30:00', '2010-03-22', NULL, 0, '2010-03-22 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2759, 0, '2010-03-22 13:00:00', '2010-03-22', NULL, 0, '2010-03-22 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2760, 0, '2010-03-22 13:30:00', '2010-03-22', NULL, 0, '2010-03-22 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2761, 0, '2010-03-22 14:00:00', '2010-03-22', NULL, 0, '2010-03-22 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2762, 0, '2010-03-22 14:30:00', '2010-03-22', NULL, 0, '2010-03-22 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2763, 0, '2010-03-22 15:00:00', '2010-03-22', NULL, 0, '2010-03-22 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2764, 0, '2010-03-22 15:30:00', '2010-03-22', NULL, 0, '2010-03-22 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2765, 0, '2010-03-23 10:00:00', '2010-03-23', NULL, 0, '2010-03-23 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2766, 0, '2010-03-23 10:30:00', '2010-03-23', NULL, 0, '2010-03-23 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2767, 0, '2010-03-23 11:00:00', '2010-03-23', NULL, 0, '2010-03-23 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2768, 0, '2010-03-23 11:30:00', '2010-03-23', NULL, 0, '2010-03-23 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2770, 0, '2010-03-23 12:30:00', '2010-03-23', NULL, 0, '2010-03-23 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2771, 0, '2010-03-23 13:00:00', '2010-03-23', NULL, 0, '2010-03-23 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2772, 0, '2010-03-23 13:30:00', '2010-03-23', NULL, 0, '2010-03-23 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2773, 0, '2010-03-23 14:00:00', '2010-03-23', NULL, 0, '2010-03-23 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2774, 0, '2010-03-23 14:30:00', '2010-03-23', NULL, 0, '2010-03-23 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2775, 0, '2010-03-23 15:00:00', '2010-03-23', NULL, 0, '2010-03-23 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2776, 0, '2010-03-23 15:30:00', '2010-03-23', NULL, 0, '2010-03-23 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2777, 0, '2010-03-24 10:00:00', '2010-03-24', NULL, 0, '2010-03-24 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2778, 0, '2010-03-24 10:30:00', '2010-03-24', NULL, 0, '2010-03-24 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2779, 0, '2010-03-24 11:00:00', '2010-03-24', NULL, 0, '2010-03-24 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2780, 0, '2010-03-24 11:30:00', '2010-03-24', NULL, 0, '2010-03-24 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2782, 0, '2010-03-24 12:30:00', '2010-03-24', NULL, 0, '2010-03-24 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2783, 0, '2010-03-24 13:00:00', '2010-03-24', NULL, 0, '2010-03-24 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2784, 0, '2010-03-24 13:30:00', '2010-03-24', NULL, 0, '2010-03-24 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2785, 0, '2010-03-24 14:00:00', '2010-03-24', NULL, 0, '2010-03-24 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2786, 0, '2010-03-24 14:30:00', '2010-03-24', NULL, 0, '2010-03-24 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2787, 0, '2010-03-24 15:00:00', '2010-03-24', NULL, 0, '2010-03-24 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2788, 0, '2010-03-24 15:30:00', '2010-03-24', NULL, 0, '2010-03-24 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2789, 0, '2010-03-25 10:00:00', '2010-03-25', NULL, 0, '2010-03-25 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2790, 0, '2010-03-25 10:30:00', '2010-03-25', NULL, 0, '2010-03-25 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2791, 0, '2010-03-25 11:00:00', '2010-03-25', NULL, 0, '2010-03-25 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2792, 0, '2010-03-25 11:30:00', '2010-03-25', NULL, 0, '2010-03-25 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2793, 0, '2010-03-25 12:00:00', '2010-03-25', NULL, 0, '2010-03-25 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2794, 0, '2010-03-25 12:30:00', '2010-03-25', NULL, 0, '2010-03-25 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2795, 0, '2010-03-25 13:00:00', '2010-03-25', NULL, 0, '2010-03-25 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2796, 0, '2010-03-25 13:30:00', '2010-03-25', NULL, 0, '2010-03-25 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2797, 0, '2010-03-25 14:00:00', '2010-03-25', NULL, 0, '2010-03-25 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2798, 0, '2010-03-25 14:30:00', '2010-03-25', NULL, 0, '2010-03-25 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2799, 0, '2010-03-25 15:00:00', '2010-03-25', NULL, 0, '2010-03-25 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2800, 0, '2010-03-25 15:30:00', '2010-03-25', NULL, 0, '2010-03-25 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2801, 0, '2010-03-26 10:00:00', '2010-03-26', NULL, 0, '2010-03-26 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2802, 0, '2010-03-26 10:30:00', '2010-03-26', NULL, 0, '2010-03-26 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2803, 0, '2010-03-26 11:00:00', '2010-03-26', NULL, 0, '2010-03-26 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2804, 0, '2010-03-26 11:30:00', '2010-03-26', NULL, 0, '2010-03-26 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2805, 0, '2010-03-26 12:00:00', '2010-03-26', NULL, 0, '2010-03-26 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2807, 0, '2010-03-26 13:00:00', '2010-03-26', NULL, 0, '2010-03-26 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2808, 0, '2010-03-26 13:30:00', '2010-03-26', NULL, 0, '2010-03-26 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2809, 0, '2010-03-26 14:00:00', '2010-03-26', NULL, 0, '2010-03-26 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2810, 0, '2010-03-26 14:30:00', '2010-03-26', NULL, 0, '2010-03-26 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2811, 0, '2010-03-26 15:00:00', '2010-03-26', NULL, 0, '2010-03-26 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2813, 0, '2010-03-29 10:00:00', '2010-03-29', NULL, 0, '2010-03-29 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2814, 0, '2010-03-29 10:30:00', '2010-03-29', NULL, 0, '2010-03-29 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2815, 0, '2010-03-29 11:00:00', '2010-03-29', NULL, 0, '2010-03-29 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2816, 0, '2010-03-29 11:30:00', '2010-03-29', NULL, 0, '2010-03-29 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2817, 0, '2010-03-29 12:00:00', '2010-03-29', NULL, 0, '2010-03-29 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2818, 0, '2010-03-29 12:30:00', '2010-03-29', NULL, 0, '2010-03-29 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2819, 0, '2010-03-29 13:00:00', '2010-03-29', NULL, 0, '2010-03-29 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2820, 0, '2010-03-29 13:30:00', '2010-03-29', NULL, 0, '2010-03-29 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2821, 0, '2010-03-29 14:00:00', '2010-03-29', NULL, 0, '2010-03-29 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2822, 0, '2010-03-29 14:30:00', '2010-03-29', NULL, 0, '2010-03-29 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2823, 0, '2010-03-29 15:00:00', '2010-03-29', NULL, 0, '2010-03-29 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2824, 0, '2010-03-29 15:30:00', '2010-03-29', NULL, 0, '2010-03-29 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2825, 0, '2010-03-30 10:00:00', '2010-03-30', NULL, 0, '2010-03-30 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2826, 0, '2010-03-30 10:30:00', '2010-03-30', NULL, 0, '2010-03-30 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2827, 0, '2010-03-30 11:00:00', '2010-03-30', NULL, 0, '2010-03-30 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2828, 0, '2010-03-30 11:30:00', '2010-03-30', NULL, 0, '2010-03-30 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2829, 0, '2010-03-30 12:00:00', '2010-03-30', NULL, 0, '2010-03-30 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2830, 0, '2010-03-30 12:30:00', '2010-03-30', NULL, 0, '2010-03-30 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2831, 0, '2010-03-30 13:00:00', '2010-03-30', NULL, 0, '2010-03-30 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2832, 0, '2010-03-30 13:30:00', '2010-03-30', NULL, 0, '2010-03-30 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2833, 0, '2010-03-30 14:00:00', '2010-03-30', NULL, 0, '2010-03-30 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2834, 0, '2010-03-30 14:30:00', '2010-03-30', NULL, 0, '2010-03-30 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2835, 0, '2010-03-30 15:00:00', '2010-03-30', NULL, 0, '2010-03-30 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2836, 0, '2010-03-30 15:30:00', '2010-03-30', NULL, 0, '2010-03-30 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2837, 0, '2010-03-31 10:00:00', '2010-03-31', NULL, 0, '2010-03-31 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2838, 0, '2010-03-31 10:30:00', '2010-03-31', NULL, 0, '2010-03-31 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2839, 0, '2010-03-31 11:00:00', '2010-03-31', NULL, 0, '2010-03-31 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2840, 0, '2010-03-31 11:30:00', '2010-03-31', NULL, 0, '2010-03-31 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2841, 0, '2010-03-31 12:00:00', '2010-03-31', NULL, 0, '2010-03-31 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2842, 0, '2010-03-31 12:30:00', '2010-03-31', NULL, 0, '2010-03-31 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2843, 0, '2010-03-31 13:00:00', '2010-03-31', NULL, 0, '2010-03-31 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2844, 0, '2010-03-31 13:30:00', '2010-03-31', NULL, 0, '2010-03-31 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2845, 0, '2010-03-31 14:00:00', '2010-03-31', NULL, 0, '2010-03-31 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2846, 0, '2010-03-31 14:30:00', '2010-03-31', NULL, 0, '2010-03-31 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2847, 0, '2010-03-31 15:00:00', '2010-03-31', NULL, 0, '2010-03-31 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2848, 0, '2010-03-31 15:30:00', '2010-03-31', NULL, 0, '2010-03-31 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2849, 0, '2010-04-01 10:00:00', '2010-04-01', NULL, 0, '2010-04-01 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2850, 0, '2010-04-01 10:30:00', '2010-04-01', NULL, 0, '2010-04-01 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2851, 0, '2010-04-01 11:00:00', '2010-04-01', NULL, 0, '2010-04-01 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2852, 0, '2010-04-01 11:30:00', '2010-04-01', NULL, 0, '2010-04-01 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2853, 0, '2010-04-01 12:00:00', '2010-04-01', NULL, 0, '2010-04-01 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2854, 0, '2010-04-01 12:30:00', '2010-04-01', NULL, 0, '2010-04-01 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2855, 0, '2010-04-01 13:00:00', '2010-04-01', NULL, 0, '2010-04-01 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2856, 0, '2010-04-01 13:30:00', '2010-04-01', NULL, 0, '2010-04-01 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2857, 0, '2010-04-01 14:00:00', '2010-04-01', NULL, 0, '2010-04-01 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2858, 0, '2010-04-01 14:30:00', '2010-04-01', NULL, 0, '2010-04-01 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2859, 0, '2010-04-01 15:00:00', '2010-04-01', NULL, 0, '2010-04-01 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2860, 0, '2010-04-01 15:30:00', '2010-04-01', NULL, 0, '2010-04-01 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2861, 0, '2010-04-02 10:00:00', '2010-04-02', NULL, 0, '2010-04-02 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2862, 0, '2010-04-02 10:30:00', '2010-04-02', NULL, 0, '2010-04-02 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2863, 0, '2010-04-02 11:00:00', '2010-04-02', NULL, 0, '2010-04-02 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2864, 0, '2010-04-02 11:30:00', '2010-04-02', NULL, 0, '2010-04-02 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2865, 0, '2010-04-02 12:00:00', '2010-04-02', NULL, 0, '2010-04-02 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2866, 0, '2010-04-02 12:30:00', '2010-04-02', NULL, 0, '2010-04-02 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2867, 0, '2010-04-02 13:00:00', '2010-04-02', NULL, 0, '2010-04-02 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2868, 0, '2010-04-02 13:30:00', '2010-04-02', NULL, 0, '2010-04-02 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2869, 0, '2010-04-02 14:00:00', '2010-04-02', NULL, 0, '2010-04-02 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2870, 0, '2010-04-02 14:30:00', '2010-04-02', NULL, 0, '2010-04-02 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2871, 0, '2010-04-02 15:00:00', '2010-04-02', NULL, 0, '2010-04-02 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2872, 0, '2010-04-02 15:30:00', '2010-04-02', NULL, 0, '2010-04-02 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2873, 0, '2010-04-05 10:00:00', '2010-04-05', NULL, 0, '2010-04-05 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2874, 0, '2010-04-05 10:30:00', '2010-04-05', NULL, 0, '2010-04-05 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2875, 0, '2010-04-05 11:00:00', '2010-04-05', NULL, 0, '2010-04-05 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2876, 0, '2010-04-05 11:30:00', '2010-04-05', NULL, 0, '2010-04-05 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2877, 0, '2010-04-05 12:00:00', '2010-04-05', NULL, 0, '2010-04-05 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2878, 0, '2010-04-05 12:30:00', '2010-04-05', NULL, 0, '2010-04-05 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2879, 0, '2010-04-05 13:00:00', '2010-04-05', NULL, 0, '2010-04-05 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2880, 0, '2010-04-05 13:30:00', '2010-04-05', NULL, 0, '2010-04-05 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2881, 0, '2010-04-05 14:00:00', '2010-04-05', NULL, 0, '2010-04-05 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2882, 0, '2010-04-05 14:30:00', '2010-04-05', NULL, 0, '2010-04-05 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2883, 0, '2010-04-05 15:00:00', '2010-04-05', NULL, 0, '2010-04-05 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2884, 0, '2010-04-05 15:30:00', '2010-04-05', NULL, 0, '2010-04-05 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2885, 0, '2010-04-06 10:00:00', '2010-04-06', NULL, 0, '2010-04-06 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2886, 0, '2010-04-06 10:30:00', '2010-04-06', NULL, 0, '2010-04-06 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2887, 0, '2010-04-06 11:00:00', '2010-04-06', NULL, 0, '2010-04-06 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2888, 0, '2010-04-06 11:30:00', '2010-04-06', NULL, 0, '2010-04-06 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2889, 0, '2010-04-06 12:00:00', '2010-04-06', NULL, 0, '2010-04-06 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2890, 0, '2010-04-06 12:30:00', '2010-04-06', NULL, 0, '2010-04-06 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2891, 0, '2010-04-06 13:00:00', '2010-04-06', NULL, 0, '2010-04-06 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2892, 0, '2010-04-06 13:30:00', '2010-04-06', NULL, 0, '2010-04-06 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2893, 0, '2010-04-06 14:00:00', '2010-04-06', NULL, 0, '2010-04-06 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2894, 0, '2010-04-06 14:30:00', '2010-04-06', NULL, 0, '2010-04-06 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2895, 0, '2010-04-06 15:00:00', '2010-04-06', NULL, 0, '2010-04-06 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2896, 0, '2010-04-06 15:30:00', '2010-04-06', NULL, 0, '2010-04-06 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2897, 0, '2010-04-07 10:00:00', '2010-04-07', NULL, 0, '2010-04-07 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2898, 0, '2010-04-07 10:30:00', '2010-04-07', NULL, 0, '2010-04-07 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2899, 0, '2010-04-07 11:00:00', '2010-04-07', NULL, 0, '2010-04-07 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2900, 0, '2010-04-07 11:30:00', '2010-04-07', NULL, 0, '2010-04-07 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2901, 0, '2010-04-07 12:00:00', '2010-04-07', NULL, 0, '2010-04-07 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2902, 0, '2010-04-07 12:30:00', '2010-04-07', NULL, 0, '2010-04-07 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2903, 0, '2010-04-07 13:00:00', '2010-04-07', NULL, 0, '2010-04-07 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2904, 0, '2010-04-07 13:30:00', '2010-04-07', NULL, 0, '2010-04-07 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2905, 0, '2010-04-07 14:00:00', '2010-04-07', NULL, 0, '2010-04-07 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2906, 0, '2010-04-07 14:30:00', '2010-04-07', NULL, 0, '2010-04-07 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2907, 0, '2010-04-07 15:00:00', '2010-04-07', NULL, 0, '2010-04-07 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2908, 0, '2010-04-07 15:30:00', '2010-04-07', NULL, 0, '2010-04-07 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2909, 0, '2010-04-08 10:00:00', '2010-04-08', NULL, 0, '2010-04-08 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2910, 0, '2010-04-08 10:30:00', '2010-04-08', NULL, 0, '2010-04-08 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2911, 0, '2010-04-08 11:00:00', '2010-04-08', NULL, 0, '2010-04-08 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2912, 0, '2010-04-08 11:30:00', '2010-04-08', NULL, 0, '2010-04-08 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2913, 0, '2010-04-08 12:00:00', '2010-04-08', NULL, 0, '2010-04-08 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2914, 0, '2010-04-08 12:30:00', '2010-04-08', NULL, 0, '2010-04-08 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2915, 0, '2010-04-08 13:00:00', '2010-04-08', NULL, 0, '2010-04-08 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2916, 0, '2010-04-08 13:30:00', '2010-04-08', NULL, 0, '2010-04-08 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2917, 0, '2010-04-08 14:00:00', '2010-04-08', NULL, 0, '2010-04-08 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2918, 0, '2010-04-08 14:30:00', '2010-04-08', NULL, 0, '2010-04-08 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2919, 0, '2010-04-08 15:00:00', '2010-04-08', NULL, 0, '2010-04-08 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2920, 0, '2010-04-08 15:30:00', '2010-04-08', NULL, 0, '2010-04-08 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2921, 0, '2010-04-09 10:00:00', '2010-04-09', NULL, 0, '2010-04-09 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2922, 0, '2010-04-09 10:30:00', '2010-04-09', NULL, 0, '2010-04-09 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2923, 0, '2010-04-09 11:00:00', '2010-04-09', NULL, 0, '2010-04-09 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2924, 0, '2010-04-09 11:30:00', '2010-04-09', NULL, 0, '2010-04-09 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2925, 0, '2010-04-09 12:00:00', '2010-04-09', NULL, 0, '2010-04-09 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2926, 0, '2010-04-09 12:30:00', '2010-04-09', NULL, 0, '2010-04-09 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2927, 0, '2010-04-09 13:00:00', '2010-04-09', NULL, 0, '2010-04-09 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2928, 0, '2010-04-09 13:30:00', '2010-04-09', NULL, 0, '2010-04-09 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2929, 0, '2010-04-09 14:00:00', '2010-04-09', NULL, 0, '2010-04-09 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2930, 0, '2010-04-09 14:30:00', '2010-04-09', NULL, 0, '2010-04-09 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2931, 0, '2010-04-09 15:00:00', '2010-04-09', NULL, 0, '2010-04-09 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2932, 0, '2010-04-09 15:30:00', '2010-04-09', NULL, 0, '2010-04-09 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2933, 0, '2010-04-12 10:00:00', '2010-04-12', NULL, 0, '2010-04-12 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2934, 0, '2010-04-12 10:30:00', '2010-04-12', NULL, 0, '2010-04-12 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2935, 0, '2010-04-12 11:00:00', '2010-04-12', NULL, 0, '2010-04-12 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2936, 0, '2010-04-12 11:30:00', '2010-04-12', NULL, 0, '2010-04-12 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2937, 0, '2010-04-12 12:00:00', '2010-04-12', NULL, 0, '2010-04-12 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2938, 0, '2010-04-12 12:30:00', '2010-04-12', NULL, 0, '2010-04-12 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2939, 0, '2010-04-12 13:00:00', '2010-04-12', NULL, 0, '2010-04-12 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2940, 0, '2010-04-12 13:30:00', '2010-04-12', NULL, 0, '2010-04-12 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2941, 0, '2010-04-12 14:00:00', '2010-04-12', NULL, 0, '2010-04-12 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2942, 0, '2010-04-12 14:30:00', '2010-04-12', NULL, 0, '2010-04-12 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2943, 0, '2010-04-12 15:00:00', '2010-04-12', NULL, 0, '2010-04-12 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2944, 0, '2010-04-12 15:30:00', '2010-04-12', NULL, 0, '2010-04-12 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2945, 0, '2010-04-13 10:00:00', '2010-04-13', NULL, 0, '2010-04-13 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2946, 0, '2010-04-13 10:30:00', '2010-04-13', NULL, 0, '2010-04-13 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2947, 0, '2010-04-13 11:00:00', '2010-04-13', NULL, 0, '2010-04-13 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2948, 0, '2010-04-13 11:30:00', '2010-04-13', NULL, 0, '2010-04-13 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2949, 0, '2010-04-13 12:00:00', '2010-04-13', NULL, 0, '2010-04-13 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2950, 0, '2010-04-13 12:30:00', '2010-04-13', NULL, 0, '2010-04-13 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2951, 0, '2010-04-13 13:00:00', '2010-04-13', NULL, 0, '2010-04-13 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2952, 0, '2010-04-13 13:30:00', '2010-04-13', NULL, 0, '2010-04-13 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2953, 0, '2010-04-13 14:00:00', '2010-04-13', NULL, 0, '2010-04-13 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2954, 0, '2010-04-13 14:30:00', '2010-04-13', NULL, 0, '2010-04-13 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2955, 0, '2010-04-13 15:00:00', '2010-04-13', NULL, 0, '2010-04-13 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2956, 0, '2010-04-13 15:30:00', '2010-04-13', NULL, 0, '2010-04-13 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2957, 0, '2010-04-14 10:00:00', '2010-04-14', NULL, 0, '2010-04-14 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2958, 0, '2010-04-14 10:30:00', '2010-04-14', NULL, 0, '2010-04-14 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2959, 0, '2010-04-14 11:00:00', '2010-04-14', NULL, 0, '2010-04-14 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2960, 0, '2010-04-14 11:30:00', '2010-04-14', NULL, 0, '2010-04-14 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2961, 0, '2010-04-14 12:00:00', '2010-04-14', NULL, 0, '2010-04-14 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2962, 0, '2010-04-14 12:30:00', '2010-04-14', NULL, 0, '2010-04-14 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2963, 0, '2010-04-14 13:00:00', '2010-04-14', NULL, 0, '2010-04-14 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2964, 0, '2010-04-14 13:30:00', '2010-04-14', NULL, 0, '2010-04-14 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2965, 0, '2010-04-14 14:00:00', '2010-04-14', NULL, 0, '2010-04-14 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2966, 0, '2010-04-14 14:30:00', '2010-04-14', NULL, 0, '2010-04-14 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2967, 0, '2010-04-14 15:00:00', '2010-04-14', NULL, 0, '2010-04-14 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2968, 0, '2010-04-14 15:30:00', '2010-04-14', NULL, 0, '2010-04-14 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2969, 0, '2010-04-15 10:00:00', '2010-04-15', NULL, 0, '2010-04-15 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2970, 0, '2010-04-15 10:30:00', '2010-04-15', NULL, 0, '2010-04-15 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2971, 0, '2010-04-15 11:00:00', '2010-04-15', NULL, 0, '2010-04-15 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2972, 0, '2010-04-15 11:30:00', '2010-04-15', NULL, 0, '2010-04-15 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2973, 0, '2010-04-15 12:00:00', '2010-04-15', NULL, 0, '2010-04-15 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2974, 0, '2010-04-15 12:30:00', '2010-04-15', NULL, 0, '2010-04-15 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2975, 0, '2010-04-15 13:00:00', '2010-04-15', NULL, 0, '2010-04-15 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2976, 0, '2010-04-15 13:30:00', '2010-04-15', NULL, 0, '2010-04-15 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2977, 0, '2010-04-15 14:00:00', '2010-04-15', NULL, 0, '2010-04-15 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2978, 0, '2010-04-15 14:30:00', '2010-04-15', NULL, 0, '2010-04-15 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2979, 0, '2010-04-15 15:00:00', '2010-04-15', NULL, 0, '2010-04-15 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2980, 0, '2010-04-15 15:30:00', '2010-04-15', NULL, 0, '2010-04-15 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2981, 0, '2010-04-16 10:00:00', '2010-04-16', NULL, 0, '2010-04-16 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2982, 0, '2010-04-16 10:30:00', '2010-04-16', NULL, 0, '2010-04-16 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2983, 0, '2010-04-16 11:00:00', '2010-04-16', NULL, 0, '2010-04-16 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2984, 0, '2010-04-16 11:30:00', '2010-04-16', NULL, 0, '2010-04-16 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2985, 0, '2010-04-16 12:00:00', '2010-04-16', NULL, 0, '2010-04-16 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2986, 0, '2010-04-16 12:30:00', '2010-04-16', NULL, 0, '2010-04-16 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2987, 0, '2010-04-16 13:00:00', '2010-04-16', NULL, 0, '2010-04-16 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2988, 0, '2010-04-16 13:30:00', '2010-04-16', NULL, 0, '2010-04-16 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2989, 0, '2010-04-16 14:00:00', '2010-04-16', NULL, 0, '2010-04-16 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2990, 0, '2010-04-16 14:30:00', '2010-04-16', NULL, 0, '2010-04-16 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2991, 0, '2010-04-16 15:00:00', '2010-04-16', NULL, 0, '2010-04-16 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2992, 0, '2010-04-16 15:30:00', '2010-04-16', NULL, 0, '2010-04-16 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2993, 0, '2010-04-19 10:00:00', '2010-04-19', NULL, 0, '2010-04-19 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2994, 0, '2010-04-19 10:30:00', '2010-04-19', NULL, 0, '2010-04-19 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2995, 0, '2010-04-19 11:00:00', '2010-04-19', NULL, 0, '2010-04-19 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2996, 0, '2010-04-19 11:30:00', '2010-04-19', NULL, 0, '2010-04-19 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2997, 0, '2010-04-19 12:00:00', '2010-04-19', NULL, 0, '2010-04-19 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2998, 0, '2010-04-19 12:30:00', '2010-04-19', NULL, 0, '2010-04-19 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2999, 0, '2010-04-19 13:00:00', '2010-04-19', NULL, 0, '2010-04-19 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3000, 0, '2010-04-19 13:30:00', '2010-04-19', NULL, 0, '2010-04-19 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3001, 0, '2010-04-19 14:00:00', '2010-04-19', NULL, 0, '2010-04-19 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3002, 0, '2010-04-19 14:30:00', '2010-04-19', NULL, 0, '2010-04-19 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3003, 0, '2010-04-19 15:00:00', '2010-04-19', NULL, 0, '2010-04-19 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3004, 0, '2010-04-19 15:30:00', '2010-04-19', NULL, 0, '2010-04-19 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3005, 0, '2010-04-20 10:00:00', '2010-04-20', NULL, 0, '2010-04-20 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3006, 0, '2010-04-20 10:30:00', '2010-04-20', NULL, 0, '2010-04-20 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3007, 0, '2010-04-20 11:00:00', '2010-04-20', NULL, 0, '2010-04-20 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3008, 0, '2010-04-20 11:30:00', '2010-04-20', NULL, 0, '2010-04-20 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3009, 0, '2010-04-20 12:00:00', '2010-04-20', NULL, 0, '2010-04-20 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3010, 0, '2010-04-20 12:30:00', '2010-04-20', NULL, 0, '2010-04-20 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3011, 0, '2010-04-20 13:00:00', '2010-04-20', NULL, 0, '2010-04-20 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3012, 0, '2010-04-20 13:30:00', '2010-04-20', NULL, 0, '2010-04-20 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3013, 0, '2010-04-20 14:00:00', '2010-04-20', NULL, 0, '2010-04-20 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3014, 0, '2010-04-20 14:30:00', '2010-04-20', NULL, 0, '2010-04-20 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3015, 0, '2010-04-20 15:00:00', '2010-04-20', NULL, 0, '2010-04-20 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3016, 0, '2010-04-20 15:30:00', '2010-04-20', NULL, 0, '2010-04-20 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3017, 0, '2010-04-21 10:00:00', '2010-04-21', NULL, 0, '2010-04-21 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3018, 0, '2010-04-21 10:30:00', '2010-04-21', NULL, 0, '2010-04-21 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3019, 0, '2010-04-21 11:00:00', '2010-04-21', NULL, 0, '2010-04-21 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3020, 0, '2010-04-21 11:30:00', '2010-04-21', NULL, 0, '2010-04-21 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3021, 0, '2010-04-21 12:00:00', '2010-04-21', NULL, 0, '2010-04-21 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3022, 0, '2010-04-21 12:30:00', '2010-04-21', NULL, 0, '2010-04-21 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3023, 0, '2010-04-21 13:00:00', '2010-04-21', NULL, 0, '2010-04-21 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3024, 0, '2010-04-21 13:30:00', '2010-04-21', NULL, 0, '2010-04-21 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3025, 0, '2010-04-21 14:00:00', '2010-04-21', NULL, 0, '2010-04-21 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3026, 0, '2010-04-21 14:30:00', '2010-04-21', NULL, 0, '2010-04-21 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3027, 0, '2010-04-21 15:00:00', '2010-04-21', NULL, 0, '2010-04-21 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3028, 0, '2010-04-21 15:30:00', '2010-04-21', NULL, 0, '2010-04-21 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3029, 0, '2010-04-22 10:00:00', '2010-04-22', NULL, 0, '2010-04-22 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3030, 0, '2010-04-22 10:30:00', '2010-04-22', NULL, 0, '2010-04-22 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3031, 0, '2010-04-22 11:00:00', '2010-04-22', NULL, 0, '2010-04-22 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3032, 0, '2010-04-22 11:30:00', '2010-04-22', NULL, 0, '2010-04-22 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3033, 0, '2010-04-22 12:00:00', '2010-04-22', NULL, 0, '2010-04-22 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3034, 0, '2010-04-22 12:30:00', '2010-04-22', NULL, 0, '2010-04-22 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3035, 0, '2010-04-22 13:00:00', '2010-04-22', NULL, 0, '2010-04-22 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3036, 0, '2010-04-22 13:30:00', '2010-04-22', NULL, 0, '2010-04-22 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3037, 0, '2010-04-22 14:00:00', '2010-04-22', NULL, 0, '2010-04-22 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3038, 0, '2010-04-22 14:30:00', '2010-04-22', NULL, 0, '2010-04-22 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3039, 0, '2010-04-22 15:00:00', '2010-04-22', NULL, 0, '2010-04-22 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3040, 0, '2010-04-22 15:30:00', '2010-04-22', NULL, 0, '2010-04-22 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3041, 0, '2010-04-23 10:00:00', '2010-04-23', NULL, 0, '2010-04-23 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3042, 0, '2010-04-23 10:30:00', '2010-04-23', NULL, 0, '2010-04-23 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3043, 0, '2010-04-23 11:00:00', '2010-04-23', NULL, 0, '2010-04-23 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3044, 0, '2010-04-23 11:30:00', '2010-04-23', NULL, 0, '2010-04-23 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3045, 0, '2010-04-23 12:00:00', '2010-04-23', NULL, 0, '2010-04-23 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3046, 0, '2010-04-23 12:30:00', '2010-04-23', NULL, 0, '2010-04-23 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3047, 0, '2010-04-23 13:00:00', '2010-04-23', NULL, 0, '2010-04-23 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3048, 0, '2010-04-23 13:30:00', '2010-04-23', NULL, 0, '2010-04-23 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3049, 0, '2010-04-23 14:00:00', '2010-04-23', NULL, 0, '2010-04-23 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3050, 0, '2010-04-23 14:30:00', '2010-04-23', NULL, 0, '2010-04-23 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3051, 0, '2010-04-23 15:00:00', '2010-04-23', NULL, 0, '2010-04-23 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3052, 0, '2010-04-23 15:30:00', '2010-04-23', NULL, 0, '2010-04-23 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3053, 0, '2010-04-26 10:00:00', '2010-04-26', NULL, 0, '2010-04-26 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3054, 0, '2010-04-26 10:30:00', '2010-04-26', NULL, 0, '2010-04-26 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3055, 0, '2010-04-26 11:00:00', '2010-04-26', NULL, 0, '2010-04-26 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3056, 0, '2010-04-26 11:30:00', '2010-04-26', NULL, 0, '2010-04-26 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3057, 0, '2010-04-26 12:00:00', '2010-04-26', NULL, 0, '2010-04-26 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3058, 0, '2010-04-26 12:30:00', '2010-04-26', NULL, 0, '2010-04-26 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3059, 0, '2010-04-26 13:00:00', '2010-04-26', NULL, 0, '2010-04-26 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3060, 0, '2010-04-26 13:30:00', '2010-04-26', NULL, 0, '2010-04-26 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3061, 0, '2010-04-26 14:00:00', '2010-04-26', NULL, 0, '2010-04-26 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3062, 0, '2010-04-26 14:30:00', '2010-04-26', NULL, 0, '2010-04-26 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3063, 0, '2010-04-26 15:00:00', '2010-04-26', NULL, 0, '2010-04-26 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3064, 0, '2010-04-26 15:30:00', '2010-04-26', NULL, 0, '2010-04-26 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3065, 0, '2010-04-27 10:00:00', '2010-04-27', NULL, 0, '2010-04-27 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3066, 0, '2010-04-27 10:30:00', '2010-04-27', NULL, 0, '2010-04-27 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3067, 0, '2010-04-27 11:00:00', '2010-04-27', NULL, 0, '2010-04-27 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3068, 0, '2010-04-27 11:30:00', '2010-04-27', NULL, 0, '2010-04-27 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3069, 0, '2010-04-27 12:00:00', '2010-04-27', NULL, 0, '2010-04-27 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3070, 0, '2010-04-27 12:30:00', '2010-04-27', NULL, 0, '2010-04-27 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3071, 0, '2010-04-27 13:00:00', '2010-04-27', NULL, 0, '2010-04-27 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3072, 0, '2010-04-27 13:30:00', '2010-04-27', NULL, 0, '2010-04-27 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3073, 0, '2010-04-27 14:00:00', '2010-04-27', NULL, 0, '2010-04-27 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3074, 0, '2010-04-27 14:30:00', '2010-04-27', NULL, 0, '2010-04-27 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3075, 0, '2010-04-27 15:00:00', '2010-04-27', NULL, 0, '2010-04-27 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3076, 0, '2010-04-27 15:30:00', '2010-04-27', NULL, 0, '2010-04-27 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3077, 0, '2010-04-28 10:00:00', '2010-04-28', NULL, 0, '2010-04-28 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3078, 0, '2010-04-28 10:30:00', '2010-04-28', NULL, 0, '2010-04-28 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3079, 0, '2010-04-28 11:00:00', '2010-04-28', NULL, 0, '2010-04-28 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3080, 0, '2010-04-28 11:30:00', '2010-04-28', NULL, 0, '2010-04-28 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3081, 0, '2010-04-28 12:00:00', '2010-04-28', NULL, 0, '2010-04-28 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3082, 0, '2010-04-28 12:30:00', '2010-04-28', NULL, 0, '2010-04-28 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3083, 0, '2010-04-28 13:00:00', '2010-04-28', NULL, 0, '2010-04-28 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3084, 0, '2010-04-28 13:30:00', '2010-04-28', NULL, 0, '2010-04-28 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3085, 0, '2010-04-28 14:00:00', '2010-04-28', NULL, 0, '2010-04-28 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3086, 0, '2010-04-28 14:30:00', '2010-04-28', NULL, 0, '2010-04-28 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3087, 0, '2010-04-28 15:00:00', '2010-04-28', NULL, 0, '2010-04-28 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3088, 0, '2010-04-28 15:30:00', '2010-04-28', NULL, 0, '2010-04-28 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3089, 0, '2010-04-29 10:00:00', '2010-04-29', NULL, 0, '2010-04-29 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3090, 0, '2010-04-29 10:30:00', '2010-04-29', NULL, 0, '2010-04-29 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3091, 0, '2010-04-29 11:00:00', '2010-04-29', NULL, 0, '2010-04-29 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3092, 0, '2010-04-29 11:30:00', '2010-04-29', NULL, 0, '2010-04-29 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3093, 0, '2010-04-29 12:00:00', '2010-04-29', NULL, 0, '2010-04-29 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3094, 0, '2010-04-29 12:30:00', '2010-04-29', NULL, 0, '2010-04-29 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3095, 0, '2010-04-29 13:00:00', '2010-04-29', NULL, 0, '2010-04-29 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3096, 0, '2010-04-29 13:30:00', '2010-04-29', NULL, 0, '2010-04-29 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3097, 0, '2010-04-29 14:00:00', '2010-04-29', NULL, 0, '2010-04-29 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3098, 0, '2010-04-29 14:30:00', '2010-04-29', NULL, 0, '2010-04-29 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3099, 0, '2010-04-29 15:00:00', '2010-04-29', NULL, 0, '2010-04-29 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3100, 0, '2010-04-29 15:30:00', '2010-04-29', NULL, 0, '2010-04-29 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3101, 0, '2010-04-30 10:00:00', '2010-04-30', NULL, 0, '2010-04-30 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3102, 0, '2010-04-30 10:30:00', '2010-04-30', NULL, 0, '2010-04-30 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3103, 0, '2010-04-30 11:00:00', '2010-04-30', NULL, 0, '2010-04-30 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3104, 0, '2010-04-30 11:30:00', '2010-04-30', NULL, 0, '2010-04-30 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3105, 0, '2010-04-30 12:00:00', '2010-04-30', NULL, 0, '2010-04-30 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3106, 0, '2010-04-30 12:30:00', '2010-04-30', NULL, 0, '2010-04-30 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3107, 0, '2010-04-30 13:00:00', '2010-04-30', NULL, 0, '2010-04-30 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3108, 0, '2010-04-30 13:30:00', '2010-04-30', NULL, 0, '2010-04-30 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3109, 0, '2010-04-30 14:00:00', '2010-04-30', NULL, 0, '2010-04-30 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3110, 0, '2010-04-30 14:30:00', '2010-04-30', NULL, 0, '2010-04-30 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3111, 0, '2010-04-30 15:00:00', '2010-04-30', NULL, 0, '2010-04-30 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3112, 0, '2010-04-30 15:30:00', '2010-04-30', NULL, 0, '2010-04-30 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3113, 0, '2010-05-03 10:00:00', '2010-05-03', NULL, 0, '2010-05-03 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3114, 0, '2010-05-03 10:30:00', '2010-05-03', NULL, 0, '2010-05-03 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3115, 0, '2010-05-03 11:00:00', '2010-05-03', NULL, 0, '2010-05-03 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3116, 0, '2010-05-03 11:30:00', '2010-05-03', NULL, 0, '2010-05-03 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3117, 0, '2010-05-03 12:00:00', '2010-05-03', NULL, 0, '2010-05-03 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3118, 0, '2010-05-03 12:30:00', '2010-05-03', NULL, 0, '2010-05-03 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3119, 0, '2010-05-03 13:00:00', '2010-05-03', NULL, 0, '2010-05-03 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3120, 0, '2010-05-03 13:30:00', '2010-05-03', NULL, 0, '2010-05-03 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3121, 0, '2010-05-03 14:00:00', '2010-05-03', NULL, 0, '2010-05-03 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3122, 0, '2010-05-03 14:30:00', '2010-05-03', NULL, 0, '2010-05-03 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3123, 0, '2010-05-03 15:00:00', '2010-05-03', NULL, 0, '2010-05-03 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3124, 0, '2010-05-03 15:30:00', '2010-05-03', NULL, 0, '2010-05-03 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3125, 0, '2010-05-04 10:00:00', '2010-05-04', NULL, 0, '2010-05-04 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3126, 0, '2010-05-04 10:30:00', '2010-05-04', NULL, 0, '2010-05-04 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3127, 0, '2010-05-04 11:00:00', '2010-05-04', NULL, 0, '2010-05-04 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3128, 0, '2010-05-04 11:30:00', '2010-05-04', NULL, 0, '2010-05-04 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3129, 0, '2010-05-04 12:00:00', '2010-05-04', NULL, 0, '2010-05-04 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3130, 0, '2010-05-04 12:30:00', '2010-05-04', NULL, 0, '2010-05-04 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3131, 0, '2010-05-04 13:00:00', '2010-05-04', NULL, 0, '2010-05-04 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3132, 0, '2010-05-04 13:30:00', '2010-05-04', NULL, 0, '2010-05-04 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3133, 0, '2010-05-04 14:00:00', '2010-05-04', NULL, 0, '2010-05-04 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3134, 0, '2010-05-04 14:30:00', '2010-05-04', NULL, 0, '2010-05-04 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3135, 0, '2010-05-04 15:00:00', '2010-05-04', NULL, 0, '2010-05-04 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3136, 0, '2010-05-04 15:30:00', '2010-05-04', NULL, 0, '2010-05-04 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3137, 0, '2010-05-05 10:00:00', '2010-05-05', NULL, 0, '2010-05-05 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3138, 0, '2010-05-05 10:30:00', '2010-05-05', NULL, 0, '2010-05-05 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3139, 0, '2010-05-05 11:00:00', '2010-05-05', NULL, 0, '2010-05-05 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3140, 0, '2010-05-05 11:30:00', '2010-05-05', NULL, 0, '2010-05-05 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3141, 0, '2010-05-05 12:00:00', '2010-05-05', NULL, 0, '2010-05-05 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3142, 0, '2010-05-05 12:30:00', '2010-05-05', NULL, 0, '2010-05-05 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3143, 0, '2010-05-05 13:00:00', '2010-05-05', NULL, 0, '2010-05-05 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3144, 0, '2010-05-05 13:30:00', '2010-05-05', NULL, 0, '2010-05-05 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3145, 0, '2010-05-05 14:00:00', '2010-05-05', NULL, 0, '2010-05-05 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3146, 0, '2010-05-05 14:30:00', '2010-05-05', NULL, 0, '2010-05-05 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3147, 0, '2010-05-05 15:00:00', '2010-05-05', NULL, 0, '2010-05-05 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3148, 0, '2010-05-05 15:30:00', '2010-05-05', NULL, 0, '2010-05-05 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3149, 0, '2010-05-06 10:00:00', '2010-05-06', NULL, 0, '2010-05-06 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3150, 0, '2010-05-06 10:30:00', '2010-05-06', NULL, 0, '2010-05-06 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3151, 0, '2010-05-06 11:00:00', '2010-05-06', NULL, 0, '2010-05-06 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3152, 0, '2010-05-06 11:30:00', '2010-05-06', NULL, 0, '2010-05-06 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3153, 0, '2010-05-06 12:00:00', '2010-05-06', NULL, 0, '2010-05-06 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3154, 0, '2010-05-06 12:30:00', '2010-05-06', NULL, 0, '2010-05-06 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3155, 0, '2010-05-06 13:00:00', '2010-05-06', NULL, 0, '2010-05-06 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3156, 0, '2010-05-06 13:30:00', '2010-05-06', NULL, 0, '2010-05-06 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3157, 0, '2010-05-06 14:00:00', '2010-05-06', NULL, 0, '2010-05-06 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3158, 0, '2010-05-06 14:30:00', '2010-05-06', NULL, 0, '2010-05-06 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3159, 0, '2010-05-06 15:00:00', '2010-05-06', NULL, 0, '2010-05-06 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3160, 0, '2010-05-06 15:30:00', '2010-05-06', NULL, 0, '2010-05-06 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3161, 0, '2010-05-07 10:00:00', '2010-05-07', NULL, 0, '2010-05-07 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3162, 0, '2010-05-07 10:30:00', '2010-05-07', NULL, 0, '2010-05-07 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3163, 0, '2010-05-07 11:00:00', '2010-05-07', NULL, 0, '2010-05-07 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3164, 0, '2010-05-07 11:30:00', '2010-05-07', NULL, 0, '2010-05-07 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3165, 0, '2010-05-07 12:00:00', '2010-05-07', NULL, 0, '2010-05-07 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3166, 0, '2010-05-07 12:30:00', '2010-05-07', NULL, 0, '2010-05-07 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3167, 0, '2010-05-07 13:00:00', '2010-05-07', NULL, 0, '2010-05-07 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3168, 0, '2010-05-07 13:30:00', '2010-05-07', NULL, 0, '2010-05-07 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3169, 0, '2010-05-07 14:00:00', '2010-05-07', NULL, 0, '2010-05-07 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3170, 0, '2010-05-07 14:30:00', '2010-05-07', NULL, 0, '2010-05-07 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3171, 0, '2010-05-07 15:00:00', '2010-05-07', NULL, 0, '2010-05-07 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3172, 0, '2010-05-07 15:30:00', '2010-05-07', NULL, 0, '2010-05-07 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3173, 0, '2010-05-10 10:00:00', '2010-05-10', NULL, 0, '2010-05-10 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3174, 0, '2010-05-10 10:30:00', '2010-05-10', NULL, 0, '2010-05-10 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3175, 0, '2010-05-10 11:00:00', '2010-05-10', NULL, 0, '2010-05-10 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3176, 0, '2010-05-10 11:30:00', '2010-05-10', NULL, 0, '2010-05-10 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3177, 0, '2010-05-10 12:00:00', '2010-05-10', NULL, 0, '2010-05-10 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3178, 0, '2010-05-10 12:30:00', '2010-05-10', NULL, 0, '2010-05-10 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3179, 0, '2010-05-10 13:00:00', '2010-05-10', NULL, 0, '2010-05-10 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3180, 0, '2010-05-10 13:30:00', '2010-05-10', NULL, 0, '2010-05-10 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3181, 0, '2010-05-10 14:00:00', '2010-05-10', NULL, 0, '2010-05-10 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3182, 0, '2010-05-10 14:30:00', '2010-05-10', NULL, 0, '2010-05-10 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3183, 0, '2010-05-10 15:00:00', '2010-05-10', NULL, 0, '2010-05-10 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3184, 0, '2010-05-10 15:30:00', '2010-05-10', NULL, 0, '2010-05-10 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3185, 0, '2010-05-11 10:00:00', '2010-05-11', NULL, 0, '2010-05-11 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3186, 0, '2010-05-11 10:30:00', '2010-05-11', NULL, 0, '2010-05-11 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3187, 0, '2010-05-11 11:00:00', '2010-05-11', NULL, 0, '2010-05-11 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3188, 0, '2010-05-11 11:30:00', '2010-05-11', NULL, 0, '2010-05-11 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3189, 0, '2010-05-11 12:00:00', '2010-05-11', NULL, 0, '2010-05-11 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3190, 0, '2010-05-11 12:30:00', '2010-05-11', NULL, 0, '2010-05-11 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3191, 0, '2010-05-11 13:00:00', '2010-05-11', NULL, 0, '2010-05-11 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3192, 0, '2010-05-11 13:30:00', '2010-05-11', NULL, 0, '2010-05-11 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3193, 0, '2010-05-11 14:00:00', '2010-05-11', NULL, 0, '2010-05-11 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3194, 0, '2010-05-11 14:30:00', '2010-05-11', NULL, 0, '2010-05-11 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3195, 0, '2010-05-11 15:00:00', '2010-05-11', NULL, 0, '2010-05-11 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3196, 0, '2010-05-11 15:30:00', '2010-05-11', NULL, 0, '2010-05-11 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3197, 0, '2010-05-12 10:00:00', '2010-05-12', NULL, 0, '2010-05-12 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3198, 0, '2010-05-12 10:30:00', '2010-05-12', NULL, 0, '2010-05-12 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3199, 0, '2010-05-12 11:00:00', '2010-05-12', NULL, 0, '2010-05-12 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3200, 0, '2010-05-12 11:30:00', '2010-05-12', NULL, 0, '2010-05-12 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3201, 0, '2010-05-12 12:00:00', '2010-05-12', NULL, 0, '2010-05-12 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3202, 0, '2010-05-12 12:30:00', '2010-05-12', NULL, 0, '2010-05-12 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3203, 0, '2010-05-12 13:00:00', '2010-05-12', NULL, 0, '2010-05-12 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3204, 0, '2010-05-12 13:30:00', '2010-05-12', NULL, 0, '2010-05-12 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3205, 0, '2010-05-12 14:00:00', '2010-05-12', NULL, 0, '2010-05-12 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3206, 0, '2010-05-12 14:30:00', '2010-05-12', NULL, 0, '2010-05-12 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3207, 0, '2010-05-12 15:00:00', '2010-05-12', NULL, 0, '2010-05-12 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3208, 0, '2010-05-12 15:30:00', '2010-05-12', NULL, 0, '2010-05-12 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3209, 0, '2010-05-13 10:00:00', '2010-05-13', NULL, 0, '2010-05-13 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3210, 0, '2010-05-13 10:30:00', '2010-05-13', NULL, 0, '2010-05-13 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3211, 0, '2010-05-13 11:00:00', '2010-05-13', NULL, 0, '2010-05-13 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3212, 0, '2010-05-13 11:30:00', '2010-05-13', NULL, 0, '2010-05-13 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3213, 0, '2010-05-13 12:00:00', '2010-05-13', NULL, 0, '2010-05-13 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3214, 0, '2010-05-13 12:30:00', '2010-05-13', NULL, 0, '2010-05-13 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3215, 0, '2010-05-13 13:00:00', '2010-05-13', NULL, 0, '2010-05-13 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3216, 0, '2010-05-13 13:30:00', '2010-05-13', NULL, 0, '2010-05-13 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3217, 0, '2010-05-13 14:00:00', '2010-05-13', NULL, 0, '2010-05-13 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3218, 0, '2010-05-13 14:30:00', '2010-05-13', NULL, 0, '2010-05-13 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3219, 0, '2010-05-13 15:00:00', '2010-05-13', NULL, 0, '2010-05-13 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3220, 0, '2010-05-13 15:30:00', '2010-05-13', NULL, 0, '2010-05-13 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3221, 0, '2010-05-14 10:00:00', '2010-05-14', NULL, 0, '2010-05-14 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3222, 0, '2010-05-14 10:30:00', '2010-05-14', NULL, 0, '2010-05-14 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3223, 0, '2010-05-14 11:00:00', '2010-05-14', NULL, 0, '2010-05-14 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3224, 0, '2010-05-14 11:30:00', '2010-05-14', NULL, 0, '2010-05-14 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3225, 0, '2010-05-14 12:00:00', '2010-05-14', NULL, 0, '2010-05-14 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3226, 0, '2010-05-14 12:30:00', '2010-05-14', NULL, 0, '2010-05-14 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3227, 0, '2010-05-14 13:00:00', '2010-05-14', NULL, 0, '2010-05-14 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3228, 0, '2010-05-14 13:30:00', '2010-05-14', NULL, 0, '2010-05-14 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3229, 0, '2010-05-14 14:00:00', '2010-05-14', NULL, 0, '2010-05-14 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3230, 0, '2010-05-14 14:30:00', '2010-05-14', NULL, 0, '2010-05-14 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3231, 0, '2010-05-14 15:00:00', '2010-05-14', NULL, 0, '2010-05-14 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3232, 0, '2010-05-14 15:30:00', '2010-05-14', NULL, 0, '2010-05-14 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3233, 0, '2010-05-17 10:00:00', '2010-05-17', NULL, 0, '2010-05-17 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3234, 0, '2010-05-17 10:30:00', '2010-05-17', NULL, 0, '2010-05-17 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3235, 0, '2010-05-17 11:00:00', '2010-05-17', NULL, 0, '2010-05-17 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3236, 0, '2010-05-17 11:30:00', '2010-05-17', NULL, 0, '2010-05-17 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3237, 0, '2010-05-17 12:00:00', '2010-05-17', NULL, 0, '2010-05-17 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3238, 0, '2010-05-17 12:30:00', '2010-05-17', NULL, 0, '2010-05-17 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3239, 0, '2010-05-17 13:00:00', '2010-05-17', NULL, 0, '2010-05-17 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3240, 0, '2010-05-17 13:30:00', '2010-05-17', NULL, 0, '2010-05-17 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3241, 0, '2010-05-17 14:00:00', '2010-05-17', NULL, 0, '2010-05-17 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3242, 0, '2010-05-17 14:30:00', '2010-05-17', NULL, 0, '2010-05-17 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3243, 0, '2010-05-17 15:00:00', '2010-05-17', NULL, 0, '2010-05-17 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3244, 0, '2010-05-17 15:30:00', '2010-05-17', NULL, 0, '2010-05-17 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3245, 0, '2010-05-18 10:00:00', '2010-05-18', NULL, 0, '2010-05-18 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3246, 0, '2010-05-18 10:30:00', '2010-05-18', NULL, 0, '2010-05-18 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3247, 0, '2010-05-18 11:00:00', '2010-05-18', NULL, 0, '2010-05-18 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3248, 0, '2010-05-18 11:30:00', '2010-05-18', NULL, 0, '2010-05-18 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3249, 0, '2010-05-18 12:00:00', '2010-05-18', NULL, 0, '2010-05-18 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3250, 0, '2010-05-18 12:30:00', '2010-05-18', NULL, 0, '2010-05-18 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3251, 0, '2010-05-18 13:00:00', '2010-05-18', NULL, 0, '2010-05-18 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3252, 0, '2010-05-18 13:30:00', '2010-05-18', NULL, 0, '2010-05-18 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3253, 0, '2010-05-18 14:00:00', '2010-05-18', NULL, 0, '2010-05-18 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3254, 0, '2010-05-18 14:30:00', '2010-05-18', NULL, 0, '2010-05-18 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3255, 0, '2010-05-18 15:00:00', '2010-05-18', NULL, 0, '2010-05-18 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3256, 0, '2010-05-18 15:30:00', '2010-05-18', NULL, 0, '2010-05-18 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3257, 0, '2010-05-19 10:00:00', '2010-05-19', NULL, 0, '2010-05-19 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3258, 0, '2010-05-19 10:30:00', '2010-05-19', NULL, 0, '2010-05-19 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3259, 0, '2010-05-19 11:00:00', '2010-05-19', NULL, 0, '2010-05-19 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3260, 0, '2010-05-19 11:30:00', '2010-05-19', NULL, 0, '2010-05-19 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3261, 0, '2010-05-19 12:00:00', '2010-05-19', NULL, 0, '2010-05-19 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3262, 0, '2010-05-19 12:30:00', '2010-05-19', NULL, 0, '2010-05-19 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3263, 0, '2010-05-19 13:00:00', '2010-05-19', NULL, 0, '2010-05-19 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3264, 0, '2010-05-19 13:30:00', '2010-05-19', NULL, 0, '2010-05-19 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3265, 0, '2010-05-19 14:00:00', '2010-05-19', NULL, 0, '2010-05-19 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3266, 0, '2010-05-19 14:30:00', '2010-05-19', NULL, 0, '2010-05-19 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3267, 0, '2010-05-19 15:00:00', '2010-05-19', NULL, 0, '2010-05-19 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3268, 0, '2010-05-19 15:30:00', '2010-05-19', NULL, 0, '2010-05-19 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3269, 0, '2010-05-20 10:00:00', '2010-05-20', NULL, 0, '2010-05-20 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3270, 0, '2010-05-20 10:30:00', '2010-05-20', NULL, 0, '2010-05-20 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3271, 0, '2010-05-20 11:00:00', '2010-05-20', NULL, 0, '2010-05-20 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3272, 0, '2010-05-20 11:30:00', '2010-05-20', NULL, 0, '2010-05-20 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3273, 0, '2010-05-20 12:00:00', '2010-05-20', NULL, 0, '2010-05-20 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3274, 0, '2010-05-20 12:30:00', '2010-05-20', NULL, 0, '2010-05-20 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3275, 0, '2010-05-20 13:00:00', '2010-05-20', NULL, 0, '2010-05-20 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3276, 0, '2010-05-20 13:30:00', '2010-05-20', NULL, 0, '2010-05-20 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3277, 0, '2010-05-20 14:00:00', '2010-05-20', NULL, 0, '2010-05-20 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3278, 0, '2010-05-20 14:30:00', '2010-05-20', NULL, 0, '2010-05-20 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3279, 0, '2010-05-20 15:00:00', '2010-05-20', NULL, 0, '2010-05-20 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3280, 0, '2010-05-20 15:30:00', '2010-05-20', NULL, 0, '2010-05-20 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3281, 0, '2010-05-21 10:00:00', '2010-05-21', NULL, 0, '2010-05-21 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3282, 0, '2010-05-21 10:30:00', '2010-05-21', NULL, 0, '2010-05-21 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3283, 0, '2010-05-21 11:00:00', '2010-05-21', NULL, 0, '2010-05-21 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3284, 0, '2010-05-21 11:30:00', '2010-05-21', NULL, 0, '2010-05-21 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3285, 0, '2010-05-21 12:00:00', '2010-05-21', NULL, 0, '2010-05-21 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3286, 0, '2010-05-21 12:30:00', '2010-05-21', NULL, 0, '2010-05-21 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3287, 0, '2010-05-21 13:00:00', '2010-05-21', NULL, 0, '2010-05-21 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3288, 0, '2010-05-21 13:30:00', '2010-05-21', NULL, 0, '2010-05-21 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3289, 0, '2010-05-21 14:00:00', '2010-05-21', NULL, 0, '2010-05-21 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3290, 0, '2010-05-21 14:30:00', '2010-05-21', NULL, 0, '2010-05-21 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3291, 0, '2010-05-21 15:00:00', '2010-05-21', NULL, 0, '2010-05-21 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3292, 0, '2010-05-21 15:30:00', '2010-05-21', NULL, 0, '2010-05-21 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3293, 0, '2010-05-24 10:00:00', '2010-05-24', NULL, 0, '2010-05-24 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3294, 0, '2010-05-24 10:30:00', '2010-05-24', NULL, 0, '2010-05-24 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3295, 0, '2010-05-24 11:00:00', '2010-05-24', NULL, 0, '2010-05-24 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3296, 0, '2010-05-24 11:30:00', '2010-05-24', NULL, 0, '2010-05-24 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3297, 0, '2010-05-24 12:00:00', '2010-05-24', NULL, 0, '2010-05-24 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3298, 0, '2010-05-24 12:30:00', '2010-05-24', NULL, 0, '2010-05-24 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3299, 0, '2010-05-24 13:00:00', '2010-05-24', NULL, 0, '2010-05-24 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3300, 0, '2010-05-24 13:30:00', '2010-05-24', NULL, 0, '2010-05-24 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3301, 0, '2010-05-24 14:00:00', '2010-05-24', NULL, 0, '2010-05-24 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3302, 0, '2010-05-24 14:30:00', '2010-05-24', NULL, 0, '2010-05-24 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3303, 0, '2010-05-24 15:00:00', '2010-05-24', NULL, 0, '2010-05-24 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3304, 0, '2010-05-24 15:30:00', '2010-05-24', NULL, 0, '2010-05-24 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3305, 0, '2010-05-25 10:00:00', '2010-05-25', NULL, 0, '2010-05-25 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3306, 0, '2010-05-25 10:30:00', '2010-05-25', NULL, 0, '2010-05-25 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3307, 0, '2010-05-25 11:00:00', '2010-05-25', NULL, 0, '2010-05-25 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3308, 0, '2010-05-25 11:30:00', '2010-05-25', NULL, 0, '2010-05-25 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3309, 0, '2010-05-25 12:00:00', '2010-05-25', NULL, 0, '2010-05-25 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3310, 0, '2010-05-25 12:30:00', '2010-05-25', NULL, 0, '2010-05-25 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3311, 0, '2010-05-25 13:00:00', '2010-05-25', NULL, 0, '2010-05-25 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3312, 0, '2010-05-25 13:30:00', '2010-05-25', NULL, 0, '2010-05-25 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3313, 0, '2010-05-25 14:00:00', '2010-05-25', NULL, 0, '2010-05-25 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3314, 0, '2010-05-25 14:30:00', '2010-05-25', NULL, 0, '2010-05-25 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3315, 0, '2010-05-25 15:00:00', '2010-05-25', NULL, 0, '2010-05-25 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3316, 0, '2010-05-25 15:30:00', '2010-05-25', NULL, 0, '2010-05-25 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3317, 0, '2010-05-26 10:00:00', '2010-05-26', NULL, 0, '2010-05-26 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3318, 0, '2010-05-26 10:30:00', '2010-05-26', NULL, 0, '2010-05-26 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3319, 0, '2010-05-26 11:00:00', '2010-05-26', NULL, 0, '2010-05-26 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3320, 0, '2010-05-26 11:30:00', '2010-05-26', NULL, 0, '2010-05-26 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3321, 0, '2010-05-26 12:00:00', '2010-05-26', NULL, 0, '2010-05-26 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3322, 0, '2010-05-26 12:30:00', '2010-05-26', NULL, 0, '2010-05-26 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3323, 0, '2010-05-26 13:00:00', '2010-05-26', NULL, 0, '2010-05-26 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3324, 0, '2010-05-26 13:30:00', '2010-05-26', NULL, 0, '2010-05-26 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3325, 0, '2010-05-26 14:00:00', '2010-05-26', NULL, 0, '2010-05-26 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3326, 0, '2010-05-26 14:30:00', '2010-05-26', NULL, 0, '2010-05-26 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3327, 0, '2010-05-26 15:00:00', '2010-05-26', NULL, 0, '2010-05-26 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3328, 0, '2010-05-26 15:30:00', '2010-05-26', NULL, 0, '2010-05-26 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3329, 0, '2010-05-27 10:00:00', '2010-05-27', NULL, 0, '2010-05-27 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3330, 0, '2010-05-27 10:30:00', '2010-05-27', NULL, 0, '2010-05-27 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3331, 0, '2010-05-27 11:00:00', '2010-05-27', NULL, 0, '2010-05-27 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3332, 0, '2010-05-27 11:30:00', '2010-05-27', NULL, 0, '2010-05-27 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3333, 0, '2010-05-27 12:00:00', '2010-05-27', NULL, 0, '2010-05-27 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3334, 0, '2010-05-27 12:30:00', '2010-05-27', NULL, 0, '2010-05-27 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3335, 0, '2010-05-27 13:00:00', '2010-05-27', NULL, 0, '2010-05-27 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3336, 0, '2010-05-27 13:30:00', '2010-05-27', NULL, 0, '2010-05-27 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3337, 0, '2010-05-27 14:00:00', '2010-05-27', NULL, 0, '2010-05-27 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3338, 0, '2010-05-27 14:30:00', '2010-05-27', NULL, 0, '2010-05-27 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3339, 0, '2010-05-27 15:00:00', '2010-05-27', NULL, 0, '2010-05-27 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3340, 0, '2010-05-27 15:30:00', '2010-05-27', NULL, 0, '2010-05-27 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3341, 0, '2010-05-28 10:00:00', '2010-05-28', NULL, 0, '2010-05-28 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3342, 0, '2010-05-28 10:30:00', '2010-05-28', NULL, 0, '2010-05-28 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3343, 0, '2010-05-28 11:00:00', '2010-05-28', NULL, 0, '2010-05-28 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3344, 0, '2010-05-28 11:30:00', '2010-05-28', NULL, 0, '2010-05-28 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3345, 0, '2010-05-28 12:00:00', '2010-05-28', NULL, 0, '2010-05-28 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3346, 0, '2010-05-28 12:30:00', '2010-05-28', NULL, 0, '2010-05-28 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3347, 0, '2010-05-28 13:00:00', '2010-05-28', NULL, 0, '2010-05-28 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3348, 0, '2010-05-28 13:30:00', '2010-05-28', NULL, 0, '2010-05-28 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3349, 0, '2010-05-28 14:00:00', '2010-05-28', NULL, 0, '2010-05-28 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3350, 0, '2010-05-28 14:30:00', '2010-05-28', NULL, 0, '2010-05-28 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3351, 0, '2010-05-28 15:00:00', '2010-05-28', NULL, 0, '2010-05-28 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3352, 0, '2010-05-28 15:30:00', '2010-05-28', NULL, 0, '2010-05-28 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3353, 0, '2010-05-31 10:00:00', '2010-05-31', NULL, 0, '2010-05-31 10:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3354, 0, '2010-05-31 10:30:00', '2010-05-31', NULL, 0, '2010-05-31 11:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3355, 0, '2010-05-31 11:00:00', '2010-05-31', NULL, 0, '2010-05-31 11:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3356, 0, '2010-05-31 11:30:00', '2010-05-31', NULL, 0, '2010-05-31 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3357, 0, '2010-05-31 12:00:00', '2010-05-31', NULL, 0, '2010-05-31 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3358, 0, '2010-05-31 12:30:00', '2010-05-31', NULL, 0, '2010-05-31 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3359, 0, '2010-05-31 13:00:00', '2010-05-31', NULL, 0, '2010-05-31 13:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3360, 0, '2010-05-31 13:30:00', '2010-05-31', NULL, 0, '2010-05-31 14:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3361, 0, '2010-05-31 14:00:00', '2010-05-31', NULL, 0, '2010-05-31 14:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3362, 0, '2010-05-31 14:30:00', '2010-05-31', NULL, 0, '2010-05-31 15:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3363, 0, '2010-05-31 15:00:00', '2010-05-31', NULL, 0, '2010-05-31 15:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (3364, 0, '2010-05-31 15:30:00', '2010-05-31', NULL, 0, '2010-05-31 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2806, 1, '2010-03-26 12:30:00', '2010-03-26', NULL, 1, '2010-03-26 13:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1204, 1, '2010-03-26 12:45:00', '2010-03-26', NULL, 1, '2010-03-26 13:00:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1155, 1, '2010-03-24 16:30:00', '2010-03-24', NULL, 1, '2010-03-24 16:45:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2812, 1, '2010-03-26 15:30:00', '2010-03-26', NULL, 1, '2010-03-26 16:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2769, 1, '2010-03-23 12:00:00', '2010-03-23', NULL, 1, '2010-03-23 12:30:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2744, 1, '2010-03-19 11:30:00', '2010-03-19', NULL, 1, '2010-03-19 12:00:00', 10, 5, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (1009, 1, '2010-03-18 12:00:00', '2010-03-18', NULL, 1, '2010-03-18 12:15:00', 10, 3, NULL);
INSERT INTO ae_disponibilidades (id, version, hora_inicio, fecha, fecha_baja, numerador, hora_fin, cupo, aere_id, aepl_id) VALUES (2781, 1, '2010-03-24 12:00:00', '2010-03-24', NULL, 1, '2010-03-24 12:30:00', 10, 5, NULL);


--
-- TOC entry 1676 (class 0 OID 17154)
-- Dependencies: 1258
-- Data for Name: ae_llamadas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1677 (class 0 OID 17160)
-- Dependencies: 1259
-- Data for Name: ae_meses; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1679 (class 0 OID 17168)
-- Dependencies: 1261
-- Data for Name: ae_plantillas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1681 (class 0 OID 17176)
-- Dependencies: 1263
-- Data for Name: ae_reservas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (19, 1, 'R', NULL, '2010-03-16 18:31:09.796', 1, '2010-03-16 18:31:09.796');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (20, 1, 'R', NULL, '2010-03-16 18:31:59.64', 1, '2010-03-16 18:31:59.64');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (21, 1, 'R', NULL, '2010-03-16 18:32:41.281', 1, '2010-03-16 18:32:41.281');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (22, 1, 'R', NULL, '2010-03-16 18:33:41.093', 1, '2010-03-16 18:33:41.093');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (23, 1, 'R', NULL, '2010-03-16 18:35:04.765', 1, '2010-03-16 18:35:04.765');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (24, 1, 'R', NULL, '2010-03-16 18:35:33.421', 1, '2010-03-16 18:35:33.421');
INSERT INTO ae_reservas (id, version, estado, observaciones, fcrea, numero, fact) VALUES (25, 1, 'R', NULL, '2010-03-16 18:37:55.75', 1, '2010-03-16 18:37:55.75');


--
-- TOC entry 1682 (class 0 OID 17180)
-- Dependencies: 1264
-- Data for Name: ae_reservas_disponibilidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (19, 1204);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (20, 1155);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (21, 2812);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (22, 2769);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (23, 2744);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (24, 1009);
INSERT INTO ae_reservas_disponibilidades (aers_id, aedi_id) VALUES (25, 2781);


--
-- TOC entry 1672 (class 0 OID 17138)
-- Dependencies: 1254
-- Data for Name: ae_datos_reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (18, 'Inicio de tramite', 7, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (19, '1111111', 1, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (20, 'Alvaro', 3, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (21, '1', 2, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (22, 'Rettich', 4, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (23, '1234567890', 5, 19);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (24, 'Consulta', 7, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (25, '3333333', 1, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (26, 'Irene', 3, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (27, '3', 2, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (28, 'Condon', 4, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (29, '0987654321', 5, 20);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (30, '1', 15, 21);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (31, 'Valeria', 12, 21);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (32, '2222222-2', 16, 21);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (33, 'Martinez', 13, 21);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (34, '4667979', 10, 21);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (35, '3', 15, 22);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (36, 'Pablo', 12, 22);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (37, '6798133681', 16, 22);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (38, 'Zamudio', 13, 22);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (39, '75292266', 10, 22);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (40, '5', 15, 23);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (41, 'Sheila', 12, 23);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (42, 'LLL12346', 16, 23);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (43, 'Rahi', 13, 23);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (44, '8430237', 10, 23);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (45, 'Pedido otro tramite posterior', 7, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (46, '7777777', 1, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (47, 'Jorge', 3, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (48, '7', 2, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (49, 'Braga', 4, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (50, '6789813', 5, 24);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (51, '3', 15, 25);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (52, 'Laura', 12, 25);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (53, 'ABC1234567', 16, 25);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (54, 'Schiaffarino', 13, 25);
INSERT INTO ae_datos_reserva (id, valor, aeds_id, aers_id) VALUES (55, '6899222', 10, 25);


--
-- TOC entry 1683 (class 0 OID 17182)
-- Dependencies: 1265
-- Data for Name: ae_textos_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_textos_agenda (id, texto_paso1, texto_paso2, texto_paso3, texto_sel_recurso, texto_ticket, aeag_id) VALUES (3, '<ul>
<li>Alguna informacion pertinente</li>
<li>Otro punto interesante para el ciudadano</li>
</ul>
<ul>
</ul>', '<ul>
<li>Informacion para el paso 2</li>
</ul>', '<ul>
<li>Informacion sobre formulario de ingreso de paso 3</li>
</ul>', 'Tipo de Tramite', '<p>Conserve este recibo para futuras referencias.</p>', 3);


--
-- TOC entry 1684 (class 0 OID 17191)
-- Dependencies: 1266
-- Data for Name: ae_textos_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_textos_recurso (id, texto_paso2, texto_paso3, titulo_ciudadano_en_llamador, titulo_puesto_en_llamador, aere_id) VALUES (4, NULL, NULL, NULL, NULL, 4);
INSERT INTO ae_textos_recurso (id, texto_paso2, texto_paso3, titulo_ciudadano_en_llamador, titulo_puesto_en_llamador, aere_id) VALUES (3, '<p>Informacion adicional del Tramite A para el paso 2</p>', '<p>Informacion adicional del Tramite A para el paso 3</p>', 'Ciudadano', 'Puesto', 3);
INSERT INTO ae_textos_recurso (id, texto_paso2, texto_paso3, titulo_ciudadano_en_llamador, titulo_puesto_en_llamador, aere_id) VALUES (5, '<p>Informacion adicional del Tramite A para el paso 2</p>', '<p>Informacion adicional del Tramite A para el paso 3</p>', 'Ciudadano', 'Puesto', 5);


--
-- TOC entry 1685 (class 0 OID 17200)
-- Dependencies: 1267
-- Data for Name: ae_validaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_validaciones (id, host, nombre, fecha_baja, servicio, descripcion) VALUES (1, '', 'DIGITO_VERIFICADOR_CEDULA_IDENTIDAD', NULL, 'SAE-Validaciones-EAR/ValidadorDatosPersonaBean/remote', 'Chequea que la cedula y digito sean correctos');


--
-- TOC entry 1678 (class 0 OID 17164)
-- Dependencies: 1260
-- Data for Name: ae_parametros_validacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_parametros_validacion (id, nombre, fecha_baja, tipo, largo, aeva_id) VALUES (1, 'CI', NULL, 'STRING', 15, 1);
INSERT INTO ae_parametros_validacion (id, nombre, fecha_baja, tipo, largo, aeva_id) VALUES (2, 'DIGITO_CI', NULL, 'STRING', 1, 1);





--
-- TOC entry 1687 (class 0 OID 17211)
-- Dependencies: 1269
-- Data for Name: ae_validaciones_por_recurso; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_validaciones_por_recurso (id, fecha_baja, orden_ejecucion, aeva_id, aere_id) VALUES (1, '2010-03-16 14:48:44.656', 1, 1, 3);
INSERT INTO ae_validaciones_por_recurso (id, fecha_baja, orden_ejecucion, aeva_id, aere_id) VALUES (2, NULL, 1, 1, 3);
INSERT INTO ae_validaciones_por_recurso (id, fecha_baja, orden_ejecucion, aeva_id, aere_id) VALUES (3, '2010-03-16 17:30:41.812', 1, 1, 5);



--
-- TOC entry 1686 (class 0 OID 17207)
-- Dependencies: 1268
-- Data for Name: ae_validaciones_por_dato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (1, '2010-03-16 14:48:44.656', 'CI', 1, 1);
INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (2, '2010-03-16 14:48:44.656', 'DIGITO_CI', 2, 1);
INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (3, NULL, 'CI', 1, 2);
INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (4, NULL, 'DIGITO_CI', 2, 2);
INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (5, '2010-03-16 17:30:41.812', 'CI', 8, 3);
INSERT INTO ae_validaciones_por_dato (id, fecha_desasociacion, nombre_parametro, aeds_id, aevr_id) VALUES (6, '2010-03-16 17:30:41.812', 'DIGITO_CI', 9, 3);

--
-- TOC entry 1688 (class 0 OID 17215)
-- Dependencies: 1270
-- Data for Name: ae_valores_del_dato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ae_valores_del_dato (id, valor, etiqueta, orden, fecha_desde, fecha_hasta, aeds_id) VALUES (1, '1', 'Cedula', 1, '2010-03-15 00:00:00', NULL, 15);
INSERT INTO ae_valores_del_dato (id, valor, etiqueta, orden, fecha_desde, fecha_hasta, aeds_id) VALUES (2, '3', 'Pasaporte', 2, '2010-03-15 00:00:00', NULL, 15);
INSERT INTO ae_valores_del_dato (id, valor, etiqueta, orden, fecha_desde, fecha_hasta, aeds_id) VALUES (3, '5', 'Credencial Civica', 3, '2010-03-15 00:00:00', NULL, 15);


-- Completed on 2010-03-16 18:39:21 Hora est�ndar de Montevideo

--
-- PostgreSQL database dump complete
--

