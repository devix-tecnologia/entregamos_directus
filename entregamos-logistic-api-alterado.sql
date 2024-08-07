

ALTER TABLE public.visitors_id_seq OWNER TO "postgres";

--
-- TOC entry 5283 (class 0 OID 0)
-- Dependencies: 264
-- Name: visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visitors_id_seq OWNED BY public.visitors.id;


--
-- TOC entry 4483 (class 2604 OID 20773)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 4482 (class 2604 OID 20763)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 4536 (class 2604 OID 21292)
-- Name: attendence_systems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendence_systems ALTER COLUMN id SET DEFAULT nextval('public.attendence_systems_id_seq'::regclass);


--
-- TOC entry 4539 (class 2604 OID 21347)
-- Name: audit_employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_employees ALTER COLUMN id SET DEFAULT nextval('public.audit_employees_id_seq'::regclass);


--
-- TOC entry 4540 (class 2604 OID 21366)
-- Name: audit_products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_products ALTER COLUMN id SET DEFAULT nextval('public.audit_products_id_seq'::regclass);


--
-- TOC entry 4537 (class 2604 OID 21333)
-- Name: audits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audits ALTER COLUMN id SET DEFAULT nextval('public.audits_id_seq'::regclass);


--
-- TOC entry 4468 (class 2604 OID 20651)
-- Name: base_module_functions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base_module_functions ALTER COLUMN id SET DEFAULT nextval('public.base_module_functions_id_seq'::regclass);


--
-- TOC entry 4465 (class 2604 OID 20627)
-- Name: base_modules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base_modules ALTER COLUMN id SET DEFAULT nextval('public.base_modules_id_seq'::regclass);


--
-- TOC entry 4469 (class 2604 OID 20684)
-- Name: class_lists id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_lists ALTER COLUMN id SET DEFAULT nextval('public.class_lists_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 20510)
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- TOC entry 4588 (class 2604 OID 22015)
-- Name: compartments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compartments ALTER COLUMN id SET DEFAULT nextval('public.compartments_id_seq'::regclass);


--
-- TOC entry 4569 (class 2604 OID 21680)
-- Name: complaint_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint_logs ALTER COLUMN id SET DEFAULT nextval('public.complaint_logs_id_seq'::regclass);


--
-- TOC entry 4567 (class 2604 OID 21640)
-- Name: complaints id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints ALTER COLUMN id SET DEFAULT nextval('public.complaints_id_seq'::regclass);


--
-- TOC entry 4574 (class 2604 OID 21784)
-- Name: courier_helpers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers ALTER COLUMN id SET DEFAULT nextval('public.courier_helpers_id_seq'::regclass);


--
-- TOC entry 4581 (class 2604 OID 21892)
-- Name: current_drivers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_drivers ALTER COLUMN id SET DEFAULT nextval('public.current_drivers_id_seq'::regclass);


--
-- TOC entry 4563 (class 2604 OID 21579)
-- Name: damage_packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages ALTER COLUMN id SET DEFAULT nextval('public.damage_packages_id_seq'::regclass);


--
-- TOC entry 4579 (class 2604 OID 21851)
-- Name: driver_histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_histories ALTER COLUMN id SET DEFAULT nextval('public.driver_histories_id_seq'::regclass);


--
-- TOC entry 4583 (class 2604 OID 21960)
-- Name: employee_trainings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_trainings ALTER COLUMN id SET DEFAULT nextval('public.employee_trainings_id_seq'::regclass);


--
-- TOC entry 4500 (class 2604 OID 20991)
-- Name: employee_user_functions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_user_functions ALTER COLUMN id SET DEFAULT nextval('public.employee_user_functions_id_seq'::regclass);


--
-- TOC entry 4451 (class 2604 OID 20568)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 4534 (class 2604 OID 21222)
-- Name: gadgets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgets ALTER COLUMN id SET DEFAULT nextval('public.gadgets_id_seq'::regclass);


--
-- TOC entry 4592 (class 2604 OID 22061)
-- Name: gate_access_entries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gate_access_entries ALTER COLUMN id SET DEFAULT nextval('public.gate_access_entries_id_seq'::regclass);


--
-- TOC entry 4591 (class 2604 OID 22038)
-- Name: grouped_orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grouped_orders ALTER COLUMN id SET DEFAULT nextval('public.grouped_orders_id_seq'::regclass);


--
-- TOC entry 4521 (class 2604 OID 21094)
-- Name: inspection_helpers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection_helpers ALTER COLUMN id SET DEFAULT nextval('public.inspection_helpers_id_seq'::regclass);


--
-- TOC entry 4501 (class 2604 OID 21022)
-- Name: inspections id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspections ALTER COLUMN id SET DEFAULT nextval('public.inspections_id_seq'::regclass);


--
-- TOC entry 4552 (class 2604 OID 21432)
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- TOC entry 4576 (class 2604 OID 21827)
-- Name: license_docs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_docs ALTER COLUMN id SET DEFAULT nextval('public.license_docs_id_seq'::regclass);


--
-- TOC entry 4551 (class 2604 OID 21410)
-- Name: loads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loads ALTER COLUMN id SET DEFAULT nextval('public.loads_id_seq'::regclass);


--
-- TOC entry 4511 (class 2604 OID 21063)
-- Name: maintainances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maintainances ALTER COLUMN id SET DEFAULT nextval('public.maintainances_id_seq'::regclass);


--
-- TOC entry 4484 (class 2604 OID 20789)
-- Name: measurements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.measurements ALTER COLUMN id SET DEFAULT nextval('public.measurements_id_seq'::regclass);


--
-- TOC entry 4565 (class 2604 OID 21613)
-- Name: missing_packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages ALTER COLUMN id SET DEFAULT nextval('public.missing_packages_id_seq'::regclass);


--
-- TOC entry 4528 (class 2604 OID 21180)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 4571 (class 2604 OID 21707)
-- Name: order_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_actions ALTER COLUMN id SET DEFAULT nextval('public.order_actions_id_seq'::regclass);


--
-- TOC entry 4590 (class 2604 OID 22029)
-- Name: order_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_groups ALTER COLUMN id SET DEFAULT nextval('public.order_groups_id_seq'::regclass);


--
-- TOC entry 4559 (class 2604 OID 21544)
-- Name: order_histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_histories ALTER COLUMN id SET DEFAULT nextval('public.order_histories_id_seq'::regclass);


--
-- TOC entry 4560 (class 2604 OID 21553)
-- Name: order_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_logs ALTER COLUMN id SET DEFAULT nextval('public.order_logs_id_seq'::regclass);


--
-- TOC entry 4573 (class 2604 OID 21757)
-- Name: order_passes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_passes ALTER COLUMN id SET DEFAULT nextval('public.order_passes_id_seq'::regclass);


--
-- TOC entry 4582 (class 2604 OID 21917)
-- Name: order_statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses ALTER COLUMN id SET DEFAULT nextval('public.order_statuses_id_seq'::regclass);


--
-- TOC entry 4558 (class 2604 OID 21511)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4557 (class 2604 OID 21477)
-- Name: other_companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_companies ALTER COLUMN id SET DEFAULT nextval('public.other_companies_id_seq'::regclass);


--
-- TOC entry 4572 (class 2604 OID 21732)
-- Name: package_actions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions ALTER COLUMN id SET DEFAULT nextval('public.package_actions_id_seq'::regclass);


--
-- TOC entry 4553 (class 2604 OID 21468)
-- Name: packages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages ALTER COLUMN id SET DEFAULT nextval('public.packages_id_seq'::regclass);


--
-- TOC entry 4487 (class 2604 OID 20808)
-- Name: product_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs ALTER COLUMN id SET DEFAULT nextval('public.product_logs_id_seq'::regclass);


--
-- TOC entry 4472 (class 2604 OID 20699)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4580 (class 2604 OID 21870)
-- Name: remark_vehicles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remark_vehicles ALTER COLUMN id SET DEFAULT nextval('public.remark_vehicles_id_seq'::regclass);


--
-- TOC entry 4532 (class 2604 OID 21192)
-- Name: request_accesses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_accesses ALTER COLUMN id SET DEFAULT nextval('public.request_accesses_id_seq'::regclass);


--
-- TOC entry 4497 (class 2604 OID 20867)
-- Name: requested_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requested_items ALTER COLUMN id SET DEFAULT nextval('public.requested_items_id_seq'::regclass);


--
-- TOC entry 4494 (class 2604 OID 20835)
-- Name: resource_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resource_requests ALTER COLUMN id SET DEFAULT nextval('public.resource_requests_id_seq'::regclass);


--
-- TOC entry 4441 (class 2604 OID 20522)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4459 (class 2604 OID 20595)
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- TOC entry 4525 (class 2604 OID 21152)
-- Name: services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- TOC entry 4448 (class 2604 OID 20559)
-- Name: trainings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainings ALTER COLUMN id SET DEFAULT nextval('public.trainings_id_seq'::regclass);


--
-- TOC entry 4586 (class 2604 OID 22001)
-- Name: transport_units id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transport_units ALTER COLUMN id SET DEFAULT nextval('public.transport_units_id_seq'::regclass);


--
-- TOC entry 4509 (class 2604 OID 21040)
-- Name: user_favourite_rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favourite_rooms ALTER COLUMN id SET DEFAULT nextval('public.user_favourite_rooms_id_seq'::regclass);


--
-- TOC entry 4443 (class 2604 OID 20531)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4546 (class 2604 OID 21400)
-- Name: vehicle_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_types ALTER COLUMN id SET DEFAULT nextval('public.vehicle_types_id_seq'::regclass);


--
-- TOC entry 4541 (class 2604 OID 21385)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 4535 (class 2604 OID 21237)
-- Name: visitor_request_accesses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitor_request_accesses ALTER COLUMN id SET DEFAULT nextval('public.visitor_request_accesses_id_seq'::regclass);


--
-- TOC entry 4533 (class 2604 OID 21201)
-- Name: visitors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors ALTER COLUMN id SET DEFAULT nextval('public.visitors_id_seq'::regclass);



--
-- TOC entry 5284 (class 0 OID 0)
-- Dependencies: 238
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 6, true);


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 236
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 9, true);


--
-- TOC entry 5286 (class 0 OID 0)
-- Dependencies: 270
-- Name: attendence_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attendence_systems_id_seq', 1, false);


--
-- TOC entry 5287 (class 0 OID 0)
-- Dependencies: 274
-- Name: audit_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_employees_id_seq', 1, false);


--
-- TOC entry 5288 (class 0 OID 0)
-- Dependencies: 276
-- Name: audit_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_products_id_seq', 1, false);


--
-- TOC entry 5289 (class 0 OID 0)
-- Dependencies: 272
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audits_id_seq', 1, false);


--
-- TOC entry 5290 (class 0 OID 0)
-- Dependencies: 230
-- Name: base_module_functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_module_functions_id_seq', 29, true);


--
-- TOC entry 5291 (class 0 OID 0)
-- Dependencies: 228
-- Name: base_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_modules_id_seq', 8, true);


--
-- TOC entry 5292 (class 0 OID 0)
-- Dependencies: 232
-- Name: class_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.class_lists_id_seq', 1, false);


--
-- TOC entry 5293 (class 0 OID 0)
-- Dependencies: 216
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 3, true);


--
-- TOC entry 5294 (class 0 OID 0)
-- Dependencies: 326
-- Name: compartments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compartments_id_seq', 7, true);


--
-- TOC entry 5295 (class 0 OID 0)
-- Dependencies: 302
-- Name: complaint_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.complaint_logs_id_seq', 1, false);


--
-- TOC entry 5296 (class 0 OID 0)
-- Dependencies: 300
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.complaints_id_seq', 1, false);


--
-- TOC entry 5297 (class 0 OID 0)
-- Dependencies: 310
-- Name: courier_helpers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courier_helpers_id_seq', 1, false);


--
-- TOC entry 5298 (class 0 OID 0)
-- Dependencies: 318
-- Name: current_drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.current_drivers_id_seq', 1, false);


--
-- TOC entry 5299 (class 0 OID 0)
-- Dependencies: 296
-- Name: damage_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.damage_packages_id_seq', 1, false);


--
-- TOC entry 5300 (class 0 OID 0)
-- Dependencies: 314
-- Name: driver_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.driver_histories_id_seq', 1, false);


--
-- TOC entry 5301 (class 0 OID 0)
-- Dependencies: 322
-- Name: employee_trainings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_trainings_id_seq', 1, false);


--
-- TOC entry 5302 (class 0 OID 0)
-- Dependencies: 248
-- Name: employee_user_functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_user_functions_id_seq', 82, true);


--
-- TOC entry 5303 (class 0 OID 0)
-- Dependencies: 224
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 6, true);


--
-- TOC entry 5304 (class 0 OID 0)
-- Dependencies: 266
-- Name: gadgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gadgets_id_seq', 1, false);


--
-- TOC entry 5305 (class 0 OID 0)
-- Dependencies: 332
-- Name: gate_access_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gate_access_entries_id_seq', 1, false);


--
-- TOC entry 5306 (class 0 OID 0)
-- Dependencies: 330
-- Name: grouped_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grouped_orders_id_seq', 4, true);


--
-- TOC entry 5307 (class 0 OID 0)
-- Dependencies: 256
-- Name: inspection_helpers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inspection_helpers_id_seq', 1, false);


--
-- TOC entry 5308 (class 0 OID 0)
-- Dependencies: 250
-- Name: inspections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inspections_id_seq', 1, false);


--
-- TOC entry 5309 (class 0 OID 0)
-- Dependencies: 284
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.invoices_id_seq', 6, true);


--
-- TOC entry 5310 (class 0 OID 0)
-- Dependencies: 312
-- Name: license_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.license_docs_id_seq', 1, false);


--
-- TOC entry 5311 (class 0 OID 0)
-- Dependencies: 282
-- Name: loads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loads_id_seq', 1, false);


--
-- TOC entry 5312 (class 0 OID 0)
-- Dependencies: 254
-- Name: maintainances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maintainances_id_seq', 1, false);


--
-- TOC entry 5313 (class 0 OID 0)
-- Dependencies: 240
-- Name: measurements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.measurements_id_seq', 4, true);


--
-- TOC entry 5314 (class 0 OID 0)
-- Dependencies: 298
-- Name: missing_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.missing_packages_id_seq', 1, false);


--
-- TOC entry 5315 (class 0 OID 0)
-- Dependencies: 260
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- TOC entry 5316 (class 0 OID 0)
-- Dependencies: 304
-- Name: order_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_actions_id_seq', 1, false);


--
-- TOC entry 5317 (class 0 OID 0)
-- Dependencies: 328
-- Name: order_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_groups_id_seq', 3, true);


--
-- TOC entry 5318 (class 0 OID 0)
-- Dependencies: 292
-- Name: order_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_histories_id_seq', 1, false);


--
-- TOC entry 5319 (class 0 OID 0)
-- Dependencies: 294
-- Name: order_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_logs_id_seq', 1, false);


--
-- TOC entry 5320 (class 0 OID 0)
-- Dependencies: 308
-- Name: order_passes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_passes_id_seq', 1, false);


--
-- TOC entry 5321 (class 0 OID 0)
-- Dependencies: 320
-- Name: order_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_statuses_id_seq', 2, true);


--
-- TOC entry 5322 (class 0 OID 0)
-- Dependencies: 290
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, true);


--
-- TOC entry 5323 (class 0 OID 0)
-- Dependencies: 288
-- Name: other_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.other_companies_id_seq', 3, true);


--
-- TOC entry 5324 (class 0 OID 0)
-- Dependencies: 306
-- Name: package_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.package_actions_id_seq', 1, false);


--
-- TOC entry 5325 (class 0 OID 0)
-- Dependencies: 286
-- Name: packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.packages_id_seq', 7, true);


--
-- TOC entry 5326 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_logs_id_seq', 41, true);


--
-- TOC entry 5327 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 29, true);


--
-- TOC entry 5328 (class 0 OID 0)
-- Dependencies: 316
-- Name: remark_vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.remark_vehicles_id_seq', 1, false);


--
-- TOC entry 5329 (class 0 OID 0)
-- Dependencies: 262
-- Name: request_accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.request_accesses_id_seq', 1, false);


--
-- TOC entry 5330 (class 0 OID 0)
-- Dependencies: 246
-- Name: requested_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.requested_items_id_seq', 1, false);


--
-- TOC entry 5331 (class 0 OID 0)
-- Dependencies: 244
-- Name: resource_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resource_requests_id_seq', 1, false);


--
-- TOC entry 5332 (class 0 OID 0)
-- Dependencies: 218
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 15, true);


--
-- TOC entry 5333 (class 0 OID 0)
-- Dependencies: 226
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 3, true);


--
-- TOC entry 5334 (class 0 OID 0)
-- Dependencies: 258
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- TOC entry 5335 (class 0 OID 0)
-- Dependencies: 222
-- Name: trainings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trainings_id_seq', 6, true);


--
-- TOC entry 5336 (class 0 OID 0)
-- Dependencies: 324
-- Name: transport_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transport_units_id_seq', 7, true);


--
-- TOC entry 5337 (class 0 OID 0)
-- Dependencies: 252
-- Name: user_favourite_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_favourite_rooms_id_seq', 1, false);


--
-- TOC entry 5338 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- TOC entry 5339 (class 0 OID 0)
-- Dependencies: 280
-- Name: vehicle_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehicle_types_id_seq', 4, true);


--
-- TOC entry 5340 (class 0 OID 0)
-- Dependencies: 278
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 4, true);


--
-- TOC entry 5341 (class 0 OID 0)
-- Dependencies: 268
-- Name: visitor_request_accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitor_request_accesses_id_seq', 1, false);


--
-- TOC entry 5342 (class 0 OID 0)
-- Dependencies: 264
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visitors_id_seq', 1, false);


--
-- TOC entry 4641 (class 2606 OID 20777)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 4638 (class 2606 OID 20767)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4596 (class 2606 OID 20505)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 4708 (class 2606 OID 21294)
-- Name: attendence_systems attendence_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendence_systems
    ADD CONSTRAINT attendence_systems_pkey PRIMARY KEY (id);


--
-- TOC entry 4714 (class 2606 OID 21349)
-- Name: audit_employees audit_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT audit_employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4718 (class 2606 OID 21368)
-- Name: audit_products audit_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT audit_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 21336)
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- TOC entry 4625 (class 2606 OID 20655)
-- Name: base_module_functions base_module_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base_module_functions
    ADD CONSTRAINT base_module_functions_pkey PRIMARY KEY (id);


--
-- TOC entry 4623 (class 2606 OID 20631)
-- Name: base_modules base_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base_modules
    ADD CONSTRAINT base_modules_pkey PRIMARY KEY (id);


--
-- TOC entry 4628 (class 2606 OID 20688)
-- Name: class_lists class_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_lists
    ADD CONSTRAINT class_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4598 (class 2606 OID 20517)
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- TOC entry 4831 (class 2606 OID 22018)
-- Name: compartments compartments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compartments
    ADD CONSTRAINT compartments_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 21683)
-- Name: complaint_logs complaint_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT complaint_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 21643)
-- Name: complaints complaints_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_pkey PRIMARY KEY (id);


--
-- TOC entry 4797 (class 2606 OID 21786)
-- Name: courier_helpers courier_helpers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT courier_helpers_pkey PRIMARY KEY (id);


--
-- TOC entry 4815 (class 2606 OID 21894)
-- Name: current_drivers current_drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT current_drivers_pkey PRIMARY KEY (id);


--
-- TOC entry 4756 (class 2606 OID 21581)
-- Name: damage_packages damage_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT damage_packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4807 (class 2606 OID 21853)
-- Name: driver_histories driver_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT driver_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 21962)
-- Name: employee_trainings employee_trainings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_trainings
    ADD CONSTRAINT employee_trainings_pkey PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 20993)
-- Name: employee_user_functions employee_user_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT employee_user_functions_pkey PRIMARY KEY (id);


--
-- TOC entry 4614 (class 2606 OID 20572)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 21224)
-- Name: gadgets gadgets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT gadgets_pkey PRIMARY KEY (id);


--
-- TOC entry 4841 (class 2606 OID 22065)
-- Name: gate_access_entries gate_access_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gate_access_entries
    ADD CONSTRAINT gate_access_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 4836 (class 2606 OID 22040)
-- Name: grouped_orders grouped_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT grouped_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 21098)
-- Name: inspection_helpers inspection_helpers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT inspection_helpers_pkey PRIMARY KEY (id);


--
-- TOC entry 4671 (class 2606 OID 21027)
-- Name: inspections inspections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspections
    ADD CONSTRAINT inspections_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 21436)
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- TOC entry 4805 (class 2606 OID 21833)
-- Name: license_docs license_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT license_docs_pkey PRIMARY KEY (id);


--
-- TOC entry 4731 (class 2606 OID 21412)
-- Name: loads loads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loads
    ADD CONSTRAINT loads_pkey PRIMARY KEY (id);


--
-- TOC entry 4680 (class 2606 OID 21069)
-- Name: maintainances maintainances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT maintainances_pkey PRIMARY KEY (id);


--
-- TOC entry 4645 (class 2606 OID 20795)
-- Name: measurements measurements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.measurements
    ADD CONSTRAINT measurements_pkey PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 21615)
-- Name: missing_packages missing_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT missing_packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4691 (class 2606 OID 21187)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 21709)
-- Name: order_actions order_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT order_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 4834 (class 2606 OID 22033)
-- Name: order_groups order_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_groups
    ADD CONSTRAINT order_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4749 (class 2606 OID 21548)
-- Name: order_histories order_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_histories
    ADD CONSTRAINT order_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 21555)
-- Name: order_logs order_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT order_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4795 (class 2606 OID 21761)
-- Name: order_passes order_passes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT order_passes_pkey PRIMARY KEY (id);


--
-- TOC entry 4824 (class 2606 OID 21921)
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 21515)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4742 (class 2606 OID 21481)
-- Name: other_companies other_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_companies
    ADD CONSTRAINT other_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 4790 (class 2606 OID 21734)
-- Name: package_actions package_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT package_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 21472)
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4653 (class 2606 OID 20812)
-- Name: product_logs product_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT product_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4636 (class 2606 OID 20703)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4813 (class 2606 OID 21874)
-- Name: remark_vehicles remark_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT remark_vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 4694 (class 2606 OID 21196)
-- Name: request_accesses request_accesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_accesses
    ADD CONSTRAINT request_accesses_pkey PRIMARY KEY (id);


--
-- TOC entry 4662 (class 2606 OID 20869)
-- Name: requested_items requested_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT requested_items_pkey PRIMARY KEY (id);


--
-- TOC entry 4658 (class 2606 OID 20837)
-- Name: resource_requests resource_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT resource_requests_pkey PRIMARY KEY (id);


--
-- TOC entry 4601 (class 2606 OID 20526)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4621 (class 2606 OID 20599)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4594 (class 2606 OID 20498)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 4689 (class 2606 OID 21158)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- TOC entry 4612 (class 2606 OID 20563)
-- Name: trainings trainings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT trainings_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 22004)
-- Name: transport_units transport_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transport_units
    ADD CONSTRAINT transport_units_pkey PRIMARY KEY (id);


--
-- TOC entry 4675 (class 2606 OID 21043)
-- Name: user_favourite_rooms user_favourite_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT user_favourite_rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4608 (class 2606 OID 20537)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 21405)
-- Name: vehicle_types vehicle_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_types
    ADD CONSTRAINT vehicle_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 21389)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 21239)
-- Name: visitor_request_accesses visitor_request_accesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT visitor_request_accesses_pkey PRIMARY KEY (id);


--
-- TOC entry 4698 (class 2606 OID 21205)
-- Name: visitors visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (id);


--
-- TOC entry 4642 (class 1259 OID 20783)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 4643 (class 1259 OID 20784)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 4639 (class 1259 OID 20768)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 4709 (class 1259 OID 21300)
-- Name: index_attendence_systems_on_employee_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_attendence_systems_on_employee_id ON public.attendence_systems USING btree (employee_id);


--
-- TOC entry 4715 (class 1259 OID 21361)
-- Name: index_audit_employees_on_audit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audit_employees_on_audit_id ON public.audit_employees USING btree (audit_id);


--
-- TOC entry 4716 (class 1259 OID 21360)
-- Name: index_audit_employees_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audit_employees_on_user_id ON public.audit_employees USING btree (user_id);


--
-- TOC entry 4719 (class 1259 OID 21379)
-- Name: index_audit_products_on_audit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audit_products_on_audit_id ON public.audit_products USING btree (audit_id);


--
-- TOC entry 4720 (class 1259 OID 21380)
-- Name: index_audit_products_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audit_products_on_product_id ON public.audit_products USING btree (product_id);


--
-- TOC entry 4712 (class 1259 OID 21342)
-- Name: index_audits_on_room_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_audits_on_room_id ON public.audits USING btree (room_id);


--
-- TOC entry 4626 (class 1259 OID 20661)
-- Name: index_base_module_functions_on_base_module_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_base_module_functions_on_base_module_id ON public.base_module_functions USING btree (base_module_id);


--
-- TOC entry 4629 (class 1259 OID 20694)
-- Name: index_class_lists_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_class_lists_on_company_id ON public.class_lists USING btree (company_id);


--
-- TOC entry 4832 (class 1259 OID 22024)
-- Name: index_compartments_on_transport_unit_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_compartments_on_transport_unit_id ON public.compartments USING btree (transport_unit_id);


--
-- TOC entry 4775 (class 1259 OID 21701)
-- Name: index_complaint_logs_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaint_logs_on_company_id ON public.complaint_logs USING btree (company_id);


--
-- TOC entry 4776 (class 1259 OID 21700)
-- Name: index_complaint_logs_on_complaint_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaint_logs_on_complaint_id ON public.complaint_logs USING btree (complaint_id);


--
-- TOC entry 4777 (class 1259 OID 21699)
-- Name: index_complaint_logs_on_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaint_logs_on_invoice_id ON public.complaint_logs USING btree (invoice_id);


--
-- TOC entry 4778 (class 1259 OID 22054)
-- Name: index_complaint_logs_on_respond_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaint_logs_on_respond_by_id ON public.complaint_logs USING btree (respond_by_id);


--
-- TOC entry 4769 (class 1259 OID 21660)
-- Name: index_complaints_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaints_on_company_id ON public.complaints USING btree (company_id);


--
-- TOC entry 4770 (class 1259 OID 21774)
-- Name: index_complaints_on_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaints_on_invoice_id ON public.complaints USING btree (invoice_id);


--
-- TOC entry 4771 (class 1259 OID 21661)
-- Name: index_complaints_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaints_on_order_id ON public.complaints USING btree (order_id);


--
-- TOC entry 4772 (class 1259 OID 21659)
-- Name: index_complaints_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_complaints_on_user_id ON public.complaints USING btree (user_id);


--
-- TOC entry 4798 (class 1259 OID 21798)
-- Name: index_courier_helpers_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_courier_helpers_on_company_id ON public.courier_helpers USING btree (company_id);


--
-- TOC entry 4799 (class 1259 OID 21805)
-- Name: index_courier_helpers_on_order_pass_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_courier_helpers_on_order_pass_id ON public.courier_helpers USING btree (order_pass_id);


--
-- TOC entry 4800 (class 1259 OID 21797)
-- Name: index_courier_helpers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_courier_helpers_on_user_id ON public.courier_helpers USING btree (user_id);


--
-- TOC entry 4801 (class 1259 OID 21799)
-- Name: index_courier_helpers_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_courier_helpers_on_vehicle_id ON public.courier_helpers USING btree (vehicle_id);


--
-- TOC entry 4816 (class 1259 OID 21950)
-- Name: index_current_drivers_on_order_pass_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_current_drivers_on_order_pass_id ON public.current_drivers USING btree (order_pass_id);


--
-- TOC entry 4817 (class 1259 OID 21905)
-- Name: index_current_drivers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_current_drivers_on_user_id ON public.current_drivers USING btree (user_id);


--
-- TOC entry 4818 (class 1259 OID 21906)
-- Name: index_current_drivers_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_current_drivers_on_vehicle_id ON public.current_drivers USING btree (vehicle_id);


--
-- TOC entry 4757 (class 1259 OID 21599)
-- Name: index_damage_packages_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_damage_packages_on_company_id ON public.damage_packages USING btree (company_id);


--
-- TOC entry 4758 (class 1259 OID 21662)
-- Name: index_damage_packages_on_complaint_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_damage_packages_on_complaint_id ON public.damage_packages USING btree (complaint_id);


--
-- TOC entry 4759 (class 1259 OID 21598)
-- Name: index_damage_packages_on_package_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_damage_packages_on_package_id ON public.damage_packages USING btree (package_id);


--
-- TOC entry 4760 (class 1259 OID 21597)
-- Name: index_damage_packages_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_damage_packages_on_user_id ON public.damage_packages USING btree (user_id);


--
-- TOC entry 4808 (class 1259 OID 21865)
-- Name: index_driver_histories_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_driver_histories_on_user_id ON public.driver_histories USING btree (user_id);


--
-- TOC entry 4809 (class 1259 OID 21864)
-- Name: index_driver_histories_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_driver_histories_on_vehicle_id ON public.driver_histories USING btree (vehicle_id);


--
-- TOC entry 4665 (class 1259 OID 21005)
-- Name: index_employee_user_functions_on_base_module_function_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employee_user_functions_on_base_module_function_id ON public.employee_user_functions USING btree (base_module_function_id);


--
-- TOC entry 4666 (class 1259 OID 21111)
-- Name: index_employee_user_functions_on_base_module_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employee_user_functions_on_base_module_id ON public.employee_user_functions USING btree (base_module_id);


--
-- TOC entry 4667 (class 1259 OID 21004)
-- Name: index_employee_user_functions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employee_user_functions_on_user_id ON public.employee_user_functions USING btree (user_id);


--
-- TOC entry 4615 (class 1259 OID 20588)
-- Name: index_employees_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employees_on_company_id ON public.employees USING btree (company_id);


--
-- TOC entry 4616 (class 1259 OID 20590)
-- Name: index_employees_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employees_on_role_id ON public.employees USING btree (role_id);


--
-- TOC entry 4617 (class 1259 OID 20589)
-- Name: index_employees_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_employees_on_user_id ON public.employees USING btree (user_id);


--
-- TOC entry 4701 (class 1259 OID 21323)
-- Name: index_gadgets_on_request_access_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_gadgets_on_request_access_id ON public.gadgets USING btree (request_access_id);


--
-- TOC entry 4702 (class 1259 OID 21230)
-- Name: index_gadgets_on_visitor_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_gadgets_on_visitor_id ON public.gadgets USING btree (visitor_id);


--
-- TOC entry 4842 (class 1259 OID 22071)
-- Name: index_gate_access_entries_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_gate_access_entries_on_company_id ON public.gate_access_entries USING btree (company_id);


--
-- TOC entry 4837 (class 1259 OID 22051)
-- Name: index_grouped_orders_on_order_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_grouped_orders_on_order_group_id ON public.grouped_orders USING btree (order_group_id);


--
-- TOC entry 4838 (class 1259 OID 22053)
-- Name: index_grouped_orders_on_order_group_id_and_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_grouped_orders_on_order_group_id_and_order_id ON public.grouped_orders USING btree (order_group_id, order_id);


--
-- TOC entry 4839 (class 1259 OID 22052)
-- Name: index_grouped_orders_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_grouped_orders_on_order_id ON public.grouped_orders USING btree (order_id);


--
-- TOC entry 4681 (class 1259 OID 21110)
-- Name: index_inspection_helpers_on_inspection_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inspection_helpers_on_inspection_id ON public.inspection_helpers USING btree (inspection_id);


--
-- TOC entry 4682 (class 1259 OID 21120)
-- Name: index_inspection_helpers_on_maintainance_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inspection_helpers_on_maintainance_id ON public.inspection_helpers USING btree (maintainance_id);


--
-- TOC entry 4683 (class 1259 OID 21109)
-- Name: index_inspection_helpers_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inspection_helpers_on_user_id ON public.inspection_helpers USING btree (user_id);


--
-- TOC entry 4668 (class 1259 OID 21172)
-- Name: index_inspections_on_inspectable_type_and_inspectable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inspections_on_inspectable_type_and_inspectable_id ON public.inspections USING btree (inspectable_type, inspectable_id);


--
-- TOC entry 4669 (class 1259 OID 21033)
-- Name: index_inspections_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_inspections_on_product_id ON public.inspections USING btree (product_id);


--
-- TOC entry 4732 (class 1259 OID 21437)
-- Name: index_invoices_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invoices_on_company_id ON public.invoices USING btree (company_id);


--
-- TOC entry 4733 (class 1259 OID 21528)
-- Name: index_invoices_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invoices_on_order_id ON public.invoices USING btree (order_id);


--
-- TOC entry 4734 (class 1259 OID 21488)
-- Name: index_invoices_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_invoices_on_user_id ON public.invoices USING btree (user_id);


--
-- TOC entry 4802 (class 1259 OID 21845)
-- Name: index_license_docs_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_license_docs_on_company_id ON public.license_docs USING btree (company_id);


--
-- TOC entry 4803 (class 1259 OID 21844)
-- Name: index_license_docs_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_license_docs_on_user_id ON public.license_docs USING btree (user_id);


--
-- TOC entry 4729 (class 1259 OID 21418)
-- Name: index_loads_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_loads_on_company_id ON public.loads USING btree (company_id);


--
-- TOC entry 4676 (class 1259 OID 21075)
-- Name: index_maintainances_on_inspection_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_maintainances_on_inspection_id ON public.maintainances USING btree (inspection_id);


--
-- TOC entry 4677 (class 1259 OID 21173)
-- Name: index_maintainances_on_maintainable_type_and_maintainable_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_maintainances_on_maintainable_type_and_maintainable_id ON public.maintainances USING btree (maintainable_type, maintainable_id);


--
-- TOC entry 4678 (class 1259 OID 21082)
-- Name: index_maintainances_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_maintainances_on_product_id ON public.maintainances USING btree (product_id);


--
-- TOC entry 4761 (class 1259 OID 21633)
-- Name: index_missing_packages_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_missing_packages_on_company_id ON public.missing_packages USING btree (company_id);


--
-- TOC entry 4762 (class 1259 OID 21668)
-- Name: index_missing_packages_on_complaint_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_missing_packages_on_complaint_id ON public.missing_packages USING btree (complaint_id);


--
-- TOC entry 4763 (class 1259 OID 21632)
-- Name: index_missing_packages_on_package_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_missing_packages_on_package_id ON public.missing_packages USING btree (package_id);


--
-- TOC entry 4764 (class 1259 OID 21631)
-- Name: index_missing_packages_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_missing_packages_on_user_id ON public.missing_packages USING btree (user_id);


--
-- TOC entry 4779 (class 1259 OID 21725)
-- Name: index_order_actions_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_actions_on_company_id ON public.order_actions USING btree (company_id);


--
-- TOC entry 4780 (class 1259 OID 21726)
-- Name: index_order_actions_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_actions_on_order_id ON public.order_actions USING btree (order_id);


--
-- TOC entry 4781 (class 1259 OID 21727)
-- Name: index_order_actions_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_actions_on_vehicle_id ON public.order_actions USING btree (vehicle_id);


--
-- TOC entry 4750 (class 1259 OID 21566)
-- Name: index_order_logs_on_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_logs_on_invoice_id ON public.order_logs USING btree (invoice_id);


--
-- TOC entry 4751 (class 1259 OID 21569)
-- Name: index_order_logs_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_logs_on_user_id ON public.order_logs USING btree (user_id);


--
-- TOC entry 4752 (class 1259 OID 21567)
-- Name: index_order_logs_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_logs_on_vehicle_id ON public.order_logs USING btree (vehicle_id);


--
-- TOC entry 4791 (class 1259 OID 21907)
-- Name: index_order_passes_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_passes_on_company_id ON public.order_passes USING btree (company_id);


--
-- TOC entry 4792 (class 1259 OID 21817)
-- Name: index_order_passes_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_passes_on_user_id ON public.order_passes USING btree (user_id);


--
-- TOC entry 4793 (class 1259 OID 21767)
-- Name: index_order_passes_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_passes_on_vehicle_id ON public.order_passes USING btree (vehicle_id);


--
-- TOC entry 4819 (class 1259 OID 21944)
-- Name: index_order_statuses_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_statuses_on_company_id ON public.order_statuses USING btree (company_id);


--
-- TOC entry 4820 (class 1259 OID 21942)
-- Name: index_order_statuses_on_order_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_statuses_on_order_id ON public.order_statuses USING btree (order_id);


--
-- TOC entry 4821 (class 1259 OID 21945)
-- Name: index_order_statuses_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_statuses_on_user_id ON public.order_statuses USING btree (user_id);


--
-- TOC entry 4822 (class 1259 OID 21943)
-- Name: index_order_statuses_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_order_statuses_on_vehicle_id ON public.order_statuses USING btree (vehicle_id);


--
-- TOC entry 4743 (class 1259 OID 21526)
-- Name: index_orders_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_company_id ON public.orders USING btree (company_id);


--
-- TOC entry 4744 (class 1259 OID 21527)
-- Name: index_orders_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_user_id ON public.orders USING btree (user_id);


--
-- TOC entry 4745 (class 1259 OID 21600)
-- Name: index_orders_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_orders_on_vehicle_id ON public.orders USING btree (vehicle_id);


--
-- TOC entry 4740 (class 1259 OID 21487)
-- Name: index_other_companies_on_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_other_companies_on_invoice_id ON public.other_companies USING btree (invoice_id);


--
-- TOC entry 4784 (class 1259 OID 21768)
-- Name: index_package_actions_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_package_actions_on_company_id ON public.package_actions USING btree (company_id);


--
-- TOC entry 4785 (class 1259 OID 21751)
-- Name: index_package_actions_on_order_action_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_package_actions_on_order_action_id ON public.package_actions USING btree (order_action_id);


--
-- TOC entry 4786 (class 1259 OID 21811)
-- Name: index_package_actions_on_order_pass_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_package_actions_on_order_pass_id ON public.package_actions USING btree (order_pass_id);


--
-- TOC entry 4787 (class 1259 OID 21752)
-- Name: index_package_actions_on_package_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_package_actions_on_package_id ON public.package_actions USING btree (package_id);


--
-- TOC entry 4788 (class 1259 OID 21750)
-- Name: index_package_actions_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_package_actions_on_user_id ON public.package_actions USING btree (user_id);


--
-- TOC entry 4737 (class 1259 OID 21494)
-- Name: index_packages_on_invoice_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_packages_on_invoice_id ON public.packages USING btree (invoice_id);


--
-- TOC entry 4646 (class 1259 OID 20935)
-- Name: index_product_logs_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_company_id ON public.product_logs USING btree (company_id);


--
-- TOC entry 4647 (class 1259 OID 20923)
-- Name: index_product_logs_on_giver_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_giver_id ON public.product_logs USING btree (giver_id);


--
-- TOC entry 4648 (class 1259 OID 20828)
-- Name: index_product_logs_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_product_id ON public.product_logs USING btree (product_id);


--
-- TOC entry 4649 (class 1259 OID 20929)
-- Name: index_product_logs_on_receiver_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_receiver_id ON public.product_logs USING btree (receiver_id);


--
-- TOC entry 4650 (class 1259 OID 21016)
-- Name: index_product_logs_on_ref_table_type_and_ref_table_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_ref_table_type_and_ref_table_id ON public.product_logs USING btree (ref_table_type, ref_table_id);


--
-- TOC entry 4651 (class 1259 OID 20829)
-- Name: index_product_logs_on_room_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_product_logs_on_room_id ON public.product_logs USING btree (room_id);


--
-- TOC entry 4630 (class 1259 OID 20720)
-- Name: index_products_on_class_list_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_class_list_id ON public.products USING btree (class_list_id);


--
-- TOC entry 4631 (class 1259 OID 20721)
-- Name: index_products_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_company_id ON public.products USING btree (company_id);


--
-- TOC entry 4632 (class 1259 OID 20796)
-- Name: index_products_on_measurement_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_measurement_id ON public.products USING btree (measurement_id);


--
-- TOC entry 4633 (class 1259 OID 21077)
-- Name: index_products_on_patrimonial_qr_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_patrimonial_qr_code ON public.products USING btree (patrimonial_qr_code);


--
-- TOC entry 4634 (class 1259 OID 20719)
-- Name: index_products_on_room_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_room_id ON public.products USING btree (room_id);


--
-- TOC entry 4810 (class 1259 OID 21885)
-- Name: index_remark_vehicles_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_remark_vehicles_on_user_id ON public.remark_vehicles USING btree (user_id);


--
-- TOC entry 4811 (class 1259 OID 21886)
-- Name: index_remark_vehicles_on_vehicle_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_remark_vehicles_on_vehicle_id ON public.remark_vehicles USING btree (vehicle_id);


--
-- TOC entry 4692 (class 1259 OID 21266)
-- Name: index_request_accesses_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_request_accesses_on_company_id ON public.request_accesses USING btree (company_id);


--
-- TOC entry 4659 (class 1259 OID 20881)
-- Name: index_requested_items_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_requested_items_on_product_id ON public.requested_items USING btree (product_id);


--
-- TOC entry 4660 (class 1259 OID 20884)
-- Name: index_requested_items_on_resource_request_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_requested_items_on_resource_request_id ON public.requested_items USING btree (resource_request_id);


--
-- TOC entry 4654 (class 1259 OID 20862)
-- Name: index_resource_requests_on_base_module_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_resource_requests_on_base_module_id ON public.resource_requests USING btree (base_module_id);


--
-- TOC entry 4655 (class 1259 OID 20861)
-- Name: index_resource_requests_on_requested_by_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_resource_requests_on_requested_by_id ON public.resource_requests USING btree (requested_by_id);


--
-- TOC entry 4656 (class 1259 OID 20859)
-- Name: index_resource_requests_on_room_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_resource_requests_on_room_id ON public.resource_requests USING btree (room_id);


--
-- TOC entry 4599 (class 1259 OID 20606)
-- Name: index_roles_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_roles_on_company_id ON public.roles USING btree (company_id);


--
-- TOC entry 4618 (class 1259 OID 20605)
-- Name: index_rooms_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_rooms_on_company_id ON public.rooms USING btree (company_id);


--
-- TOC entry 4619 (class 1259 OID 20674)
-- Name: index_rooms_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_rooms_on_user_id ON public.rooms USING btree (user_id);


--
-- TOC entry 4686 (class 1259 OID 21166)
-- Name: index_services_on_class_list_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_services_on_class_list_id ON public.services USING btree (class_list_id);


--
-- TOC entry 4687 (class 1259 OID 21164)
-- Name: index_services_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_services_on_company_id ON public.services USING btree (company_id);


--
-- TOC entry 4609 (class 1259 OID 21973)
-- Name: index_trainings_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_trainings_on_company_id ON public.trainings USING btree (company_id);


--
-- TOC entry 4610 (class 1259 OID 21967)
-- Name: index_trainings_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_trainings_on_user_id ON public.trainings USING btree (user_id);


--
-- TOC entry 4827 (class 1259 OID 22010)
-- Name: index_transport_units_on_vehicle_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_transport_units_on_vehicle_type_id ON public.transport_units USING btree (vehicle_type_id);


--
-- TOC entry 4672 (class 1259 OID 21055)
-- Name: index_user_favourite_rooms_on_room_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_favourite_rooms_on_room_id ON public.user_favourite_rooms USING btree (room_id);


--
-- TOC entry 4673 (class 1259 OID 21054)
-- Name: index_user_favourite_rooms_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_user_favourite_rooms_on_user_id ON public.user_favourite_rooms USING btree (user_id);


--
-- TOC entry 4602 (class 1259 OID 20549)
-- Name: index_users_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_company_id ON public.users USING btree (company_id);


--
-- TOC entry 4603 (class 1259 OID 20539)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- TOC entry 4604 (class 1259 OID 20538)
-- Name: index_users_on_jti; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_jti ON public.users USING btree (jti);


--
-- TOC entry 4605 (class 1259 OID 20540)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- TOC entry 4606 (class 1259 OID 20543)
-- Name: index_users_on_role_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_users_on_role_id ON public.users USING btree (role_id);


--
-- TOC entry 4725 (class 1259 OID 21534)
-- Name: index_vehicle_types_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vehicle_types_on_company_id ON public.vehicle_types USING btree (company_id);


--
-- TOC entry 4726 (class 1259 OID 21996)
-- Name: index_vehicle_types_on_label; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_vehicle_types_on_label ON public.vehicle_types USING btree (label);


--
-- TOC entry 4721 (class 1259 OID 21458)
-- Name: index_vehicles_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vehicles_on_company_id ON public.vehicles USING btree (company_id);


--
-- TOC entry 4722 (class 1259 OID 21438)
-- Name: index_vehicles_on_vehicle_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_vehicles_on_vehicle_type_id ON public.vehicles USING btree (vehicle_type_id);


--
-- TOC entry 4703 (class 1259 OID 21251)
-- Name: index_visitor_request_accesses_on_request_access_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_visitor_request_accesses_on_request_access_id ON public.visitor_request_accesses USING btree (request_access_id);


--
-- TOC entry 4704 (class 1259 OID 21250)
-- Name: index_visitor_request_accesses_on_visitor_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_visitor_request_accesses_on_visitor_id ON public.visitor_request_accesses USING btree (visitor_id);


--
-- TOC entry 4695 (class 1259 OID 21303)
-- Name: index_visitors_on_company_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_visitors_on_company_id ON public.visitors USING btree (company_id);


--
-- TOC entry 4696 (class 1259 OID 21216)
-- Name: index_visitors_on_employee_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_visitors_on_employee_id ON public.visitors USING btree (employee_id);


--
-- TOC entry 4865 (class 2606 OID 20848)
-- Name: resource_requests fk_rails_0174b3eb81; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_0174b3eb81 FOREIGN KEY (requested_by_id) REFERENCES public.users(id);


--
-- TOC entry 4886 (class 2606 OID 21225)
-- Name: gadgets fk_rails_030db80932; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT fk_rails_030db80932 FOREIGN KEY (visitor_id) REFERENCES public.visitors(id);


--
-- TOC entry 4843 (class 2606 OID 20607)
-- Name: roles fk_rails_04d85086a1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_rails_04d85086a1 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4933 (class 2606 OID 21818)
-- Name: order_passes fk_rails_07c07f0e31; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_07c07f0e31 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4870 (class 2606 OID 21112)
-- Name: employee_user_functions fk_rails_08559623ef; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_08559623ef FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4940 (class 2606 OID 21839)
-- Name: license_docs fk_rails_0ce15a2b0c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT fk_rails_0ce15a2b0c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4851 (class 2606 OID 20600)
-- Name: rooms fk_rails_0dd0298df2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rails_0dd0298df2 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4946 (class 2606 OID 21900)
-- Name: current_drivers fk_rails_0ec35f4b50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_0ec35f4b50 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4907 (class 2606 OID 21556)
-- Name: order_logs fk_rails_0faa4ef22b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_0faa4ef22b FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4890 (class 2606 OID 21295)
-- Name: attendence_systems fk_rails_0fe8a320e2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attendence_systems
    ADD CONSTRAINT fk_rails_0fe8a320e2 FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 4922 (class 2606 OID 21694)
-- Name: complaint_logs fk_rails_10237ad050; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_10237ad050 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4910 (class 2606 OID 21592)
-- Name: damage_packages fk_rails_1096b326e9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_1096b326e9 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4911 (class 2606 OID 21587)
-- Name: damage_packages fk_rails_145ae70824; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_145ae70824 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4914 (class 2606 OID 21621)
-- Name: missing_packages fk_rails_15096ccca6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_15096ccca6 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4949 (class 2606 OID 21922)
-- Name: order_statuses fk_rails_159fd1d59f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_159fd1d59f FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4848 (class 2606 OID 20573)
-- Name: employees fk_rails_15ca1438d5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_15ca1438d5 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4860 (class 2606 OID 20818)
-- Name: product_logs fk_rails_1c5b17e141; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_1c5b17e141 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4878 (class 2606 OID 21121)
-- Name: inspection_helpers fk_rails_2016746fdd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_2016746fdd FOREIGN KEY (maintainance_id) REFERENCES public.maintainances(id);


--
-- TOC entry 4887 (class 2606 OID 21324)
-- Name: gadgets fk_rails_20bb647ae1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT fk_rails_20bb647ae1 FOREIGN KEY (request_access_id) REFERENCES public.request_accesses(id);


--
-- TOC entry 4846 (class 2606 OID 21974)
-- Name: trainings fk_rails_2131102492; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT fk_rails_2131102492 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4944 (class 2606 OID 21875)
-- Name: remark_vehicles fk_rails_216eddd9ba; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT fk_rails_216eddd9ba FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4861 (class 2606 OID 20813)
-- Name: product_logs fk_rails_224843983b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_224843983b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4934 (class 2606 OID 21762)
-- Name: order_passes fk_rails_24556aaa3f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_24556aaa3f FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4849 (class 2606 OID 20583)
-- Name: employees fk_rails_24bc67ae55; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_24bc67ae55 FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 4896 (class 2606 OID 21439)
-- Name: vehicles fk_rails_269c894ad2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT fk_rails_269c894ad2 FOREIGN KEY (vehicle_type_id) REFERENCES public.vehicle_types(id);


--
-- TOC entry 4881 (class 2606 OID 21167)
-- Name: services fk_rails_2a3f363019; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_rails_2a3f363019 FOREIGN KEY (class_list_id) REFERENCES public.class_lists(id);


--
-- TOC entry 4897 (class 2606 OID 21459)
-- Name: vehicles fk_rails_314b522c0a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT fk_rails_314b522c0a FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4898 (class 2606 OID 21535)
-- Name: vehicle_types fk_rails_32d04846ae; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle_types
    ADD CONSTRAINT fk_rails_32d04846ae FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4874 (class 2606 OID 21044)
-- Name: user_favourite_rooms fk_rails_32f1ac2c9e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT fk_rails_32f1ac2c9e FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4928 (class 2606 OID 21745)
-- Name: package_actions fk_rails_3620c48ab1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_3620c48ab1 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4923 (class 2606 OID 21684)
-- Name: complaint_logs fk_rails_37bb7ae934; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_37bb7ae934 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4918 (class 2606 OID 21654)
-- Name: complaints fk_rails_39362cba92; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_39362cba92 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4900 (class 2606 OID 21489)
-- Name: invoices fk_rails_3d1522a0d8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_rails_3d1522a0d8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4873 (class 2606 OID 21028)
-- Name: inspections fk_rails_3d42a5dd2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspections
    ADD CONSTRAINT fk_rails_3d42a5dd2b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4919 (class 2606 OID 21644)
-- Name: complaints fk_rails_3d83173382; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_3d83173382 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4915 (class 2606 OID 21669)
-- Name: missing_packages fk_rails_3eb4e55da5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_3eb4e55da5 FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4876 (class 2606 OID 21083)
-- Name: maintainances fk_rails_41db695b06; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT fk_rails_41db695b06 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4862 (class 2606 OID 20924)
-- Name: product_logs fk_rails_4242793324; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_4242793324 FOREIGN KEY (giver_id) REFERENCES public.users(id);


--
-- TOC entry 4855 (class 2606 OID 20714)
-- Name: products fk_rails_438d5b34ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_438d5b34ce FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4899 (class 2606 OID 21413)
-- Name: loads fk_rails_48ece3b526; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loads
    ADD CONSTRAINT fk_rails_48ece3b526 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4888 (class 2606 OID 21245)
-- Name: visitor_request_accesses fk_rails_48fb8e4c9b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT fk_rails_48fb8e4c9b FOREIGN KEY (request_access_id) REFERENCES public.request_accesses(id);


--
-- TOC entry 4908 (class 2606 OID 21570)
-- Name: order_logs fk_rails_4db295fe30; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_4db295fe30 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4901 (class 2606 OID 21529)
-- Name: invoices fk_rails_4fa42a6dca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_rails_4fa42a6dca FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4902 (class 2606 OID 21495)
-- Name: packages fk_rails_5298977550; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT fk_rails_5298977550 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4947 (class 2606 OID 21895)
-- Name: current_drivers fk_rails_536571919b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_536571919b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4912 (class 2606 OID 21582)
-- Name: damage_packages fk_rails_53ea562ca4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_53ea562ca4 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4866 (class 2606 OID 20838)
-- Name: resource_requests fk_rails_562966692c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_562966692c FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4955 (class 2606 OID 22041)
-- Name: grouped_orders fk_rails_581f1459b3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT fk_rails_581f1459b3 FOREIGN KEY (order_group_id) REFERENCES public.order_groups(id);


--
-- TOC entry 4925 (class 2606 OID 21715)
-- Name: order_actions fk_rails_5891e08ac7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_5891e08ac7 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4868 (class 2606 OID 20875)
-- Name: requested_items fk_rails_5a83bcf601; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT fk_rails_5a83bcf601 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4936 (class 2606 OID 21800)
-- Name: courier_helpers fk_rails_5b97dbe003; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_5b97dbe003 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4844 (class 2606 OID 20544)
-- Name: users fk_rails_642f17018b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_642f17018b FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 4856 (class 2606 OID 20709)
-- Name: products fk_rails_6767bffcce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_6767bffcce FOREIGN KEY (class_list_id) REFERENCES public.class_lists(id);


--
-- TOC entry 4935 (class 2606 OID 21908)
-- Name: order_passes fk_rails_6798b10d44; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_6798b10d44 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4882 (class 2606 OID 21159)
-- Name: services fk_rails_6c869ccd3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_rails_6c869ccd3c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4877 (class 2606 OID 21070)
-- Name: maintainances fk_rails_6d4f9e7b55; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT fk_rails_6d4f9e7b55 FOREIGN KEY (inspection_id) REFERENCES public.inspections(id);


--
-- TOC entry 4869 (class 2606 OID 20885)
-- Name: requested_items fk_rails_7025f6b88e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT fk_rails_7025f6b88e FOREIGN KEY (resource_request_id) REFERENCES public.resource_requests(id);


--
-- TOC entry 4857 (class 2606 OID 20704)
-- Name: products fk_rails_71119d0f74; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_71119d0f74 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4879 (class 2606 OID 21099)
-- Name: inspection_helpers fk_rails_719c539625; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_719c539625 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4929 (class 2606 OID 21769)
-- Name: package_actions fk_rails_7298907e8c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_7298907e8c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4913 (class 2606 OID 21663)
-- Name: damage_packages fk_rails_7557c2d75e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_7557c2d75e FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4845 (class 2606 OID 20550)
-- Name: users fk_rails_7682a3bdfe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_7682a3bdfe FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4892 (class 2606 OID 21350)
-- Name: audit_employees fk_rails_7ae052f480; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT fk_rails_7ae052f480 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4950 (class 2606 OID 21927)
-- Name: order_statuses fk_rails_7d004fc2ba; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_7d004fc2ba FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4953 (class 2606 OID 22005)
-- Name: transport_units fk_rails_808a335247; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transport_units
    ADD CONSTRAINT fk_rails_808a335247 FOREIGN KEY (vehicle_type_id) REFERENCES public.vehicle_types(id);


--
-- TOC entry 4880 (class 2606 OID 21104)
-- Name: inspection_helpers fk_rails_81b4ad5d8a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_81b4ad5d8a FOREIGN KEY (inspection_id) REFERENCES public.inspections(id);


--
-- TOC entry 4954 (class 2606 OID 22019)
-- Name: compartments fk_rails_8302a58bf5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compartments
    ADD CONSTRAINT fk_rails_8302a58bf5 FOREIGN KEY (transport_unit_id) REFERENCES public.transport_units(id);


--
-- TOC entry 4875 (class 2606 OID 21049)
-- Name: user_favourite_rooms fk_rails_834b87db05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT fk_rails_834b87db05 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4889 (class 2606 OID 21240)
-- Name: visitor_request_accesses fk_rails_89c92dbc49; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT fk_rails_89c92dbc49 FOREIGN KEY (visitor_id) REFERENCES public.visitors(id);


--
-- TOC entry 4853 (class 2606 OID 20656)
-- Name: base_module_functions fk_rails_8a14c30a03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.base_module_functions
    ADD CONSTRAINT fk_rails_8a14c30a03 FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4941 (class 2606 OID 21834)
-- Name: license_docs fk_rails_8acb3c28e7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT fk_rails_8acb3c28e7 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4863 (class 2606 OID 20930)
-- Name: product_logs fk_rails_8b2b6850f2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_8b2b6850f2 FOREIGN KEY (receiver_id) REFERENCES public.users(id);


--
-- TOC entry 4909 (class 2606 OID 21561)
-- Name: order_logs fk_rails_8d6acd8a13; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_8d6acd8a13 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4858 (class 2606 OID 20797)
-- Name: products fk_rails_8de2cea656; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_8de2cea656 FOREIGN KEY (measurement_id) REFERENCES public.measurements(id);


--
-- TOC entry 4930 (class 2606 OID 21812)
-- Name: package_actions fk_rails_90c472030a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_90c472030a FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4937 (class 2606 OID 21787)
-- Name: courier_helpers fk_rails_958ef00b38; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_958ef00b38 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4884 (class 2606 OID 21304)
-- Name: visitors fk_rails_95acc76597; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT fk_rails_95acc76597 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4926 (class 2606 OID 21720)
-- Name: order_actions fk_rails_97286c373a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_97286c373a FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4920 (class 2606 OID 21775)
-- Name: complaints fk_rails_9b01d4cc82; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_9b01d4cc82 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4871 (class 2606 OID 20994)
-- Name: employee_user_functions fk_rails_9b0a80c0dc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_9b0a80c0dc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4945 (class 2606 OID 21880)
-- Name: remark_vehicles fk_rails_9d20bdd0cd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT fk_rails_9d20bdd0cd FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4864 (class 2606 OID 20936)
-- Name: product_logs fk_rails_a033b42ae9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_a033b42ae9 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4894 (class 2606 OID 21374)
-- Name: audit_products fk_rails_a0acab3f98; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT fk_rails_a0acab3f98 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4931 (class 2606 OID 21740)
-- Name: package_actions fk_rails_a469c0da0d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_a469c0da0d FOREIGN KEY (order_action_id) REFERENCES public.order_actions(id);


--
-- TOC entry 4893 (class 2606 OID 21355)
-- Name: audit_employees fk_rails_a57d6b09c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT fk_rails_a57d6b09c7 FOREIGN KEY (audit_id) REFERENCES public.audits(id);


--
-- TOC entry 4852 (class 2606 OID 20675)
-- Name: rooms fk_rails_a63cab0c67; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rails_a63cab0c67 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4895 (class 2606 OID 21369)
-- Name: audit_products fk_rails_a8c645ae30; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT fk_rails_a8c645ae30 FOREIGN KEY (audit_id) REFERENCES public.audits(id);


--
-- TOC entry 4956 (class 2606 OID 22046)
-- Name: grouped_orders fk_rails_ab6cf2c44b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT fk_rails_ab6cf2c44b FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4867 (class 2606 OID 20853)
-- Name: resource_requests fk_rails_aba7bea058; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_aba7bea058 FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4883 (class 2606 OID 21267)
-- Name: request_accesses fk_rails_ad3fe8d70d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_accesses
    ADD CONSTRAINT fk_rails_ad3fe8d70d FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4854 (class 2606 OID 20689)
-- Name: class_lists fk_rails_ae02d031e1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_lists
    ADD CONSTRAINT fk_rails_ae02d031e1 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4948 (class 2606 OID 21951)
-- Name: current_drivers fk_rails_ae19f43d73; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_ae19f43d73 FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4904 (class 2606 OID 21601)
-- Name: orders fk_rails_aee0f20b8c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_aee0f20b8c FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4942 (class 2606 OID 21854)
-- Name: driver_histories fk_rails_b27e44e76e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT fk_rails_b27e44e76e FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4938 (class 2606 OID 21806)
-- Name: courier_helpers fk_rails_b601ef0bb1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_b601ef0bb1 FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4932 (class 2606 OID 21735)
-- Name: package_actions fk_rails_b8a7f1a3e9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_b8a7f1a3e9 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4916 (class 2606 OID 21616)
-- Name: missing_packages fk_rails_ba2ace96b4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_ba2ace96b4 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4903 (class 2606 OID 21482)
-- Name: other_companies fk_rails_bdff589dcd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.other_companies
    ADD CONSTRAINT fk_rails_bdff589dcd FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4891 (class 2606 OID 21337)
-- Name: audits fk_rails_be9f1a8563; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT fk_rails_be9f1a8563 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4859 (class 2606 OID 20778)
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 4927 (class 2606 OID 21710)
-- Name: order_actions fk_rails_c522fdb0fc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_c522fdb0fc FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4921 (class 2606 OID 21649)
-- Name: complaints fk_rails_cdbaa5c57c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_cdbaa5c57c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4951 (class 2606 OID 21932)
-- Name: order_statuses fk_rails_d9a4d9e722; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_d9a4d9e722 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4847 (class 2606 OID 21968)
-- Name: trainings fk_rails_db3101896b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT fk_rails_db3101896b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4850 (class 2606 OID 20578)
-- Name: employees fk_rails_dcfd3d4fc3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_dcfd3d4fc3 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4952 (class 2606 OID 21937)
-- Name: order_statuses fk_rails_df1ff66651; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_df1ff66651 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4905 (class 2606 OID 21516)
-- Name: orders fk_rails_dfd2d6dcf6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_dfd2d6dcf6 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4885 (class 2606 OID 21206)
-- Name: visitors fk_rails_e17864dc65; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT fk_rails_e17864dc65 FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 4872 (class 2606 OID 20999)
-- Name: employee_user_functions fk_rails_e6fbe29e40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_e6fbe29e40 FOREIGN KEY (base_module_function_id) REFERENCES public.base_module_functions(id);


--
-- TOC entry 4943 (class 2606 OID 21859)
-- Name: driver_histories fk_rails_f0012de9d9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT fk_rails_f0012de9d9 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4906 (class 2606 OID 21521)
-- Name: orders fk_rails_f868b47f6a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f868b47f6a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4939 (class 2606 OID 21792)
-- Name: courier_helpers fk_rails_f8e5c08ffa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_f8e5c08ffa FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4924 (class 2606 OID 21689)
-- Name: complaint_logs fk_rails_fa45f7d9d8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_fa45f7d9d8 FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4917 (class 2606 OID 21626)
-- Name: missing_packages fk_rails_fc8a187b44; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_fc8a187b44 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4957 (class 2606 OID 22066)
-- Name: gate_access_entries fk_rails_fe4bb5d473; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gate_access_entries
    ADD CONSTRAINT fk_rails_fe4bb5d473 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--

-- Completed on 2023-11-03 14:42:28 -03

--
-- PostgreSQL database dump complete
--

