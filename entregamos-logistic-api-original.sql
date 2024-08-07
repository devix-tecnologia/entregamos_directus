--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.4 (Debian 15.4-3)

-- Started on 2023-11-03 14:41:03 -03

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
-- TOC entry 239 (class 1259 OID 20770)
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO "logistic-api-app";

--
-- TOC entry 238 (class 1259 OID 20769)
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5225 (class 0 OID 0)
-- Dependencies: 238
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- TOC entry 237 (class 1259 OID 20760)
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO "logistic-api-app";

--
-- TOC entry 236 (class 1259 OID 20759)
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5226 (class 0 OID 0)
-- Dependencies: 236
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- TOC entry 215 (class 1259 OID 20499)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "logistic-api-app";

--
-- TOC entry 271 (class 1259 OID 21289)
-- Name: attendence_systems; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.attendence_systems (
    id bigint NOT NULL,
    employee_id bigint,
    entry_type integer,
    in_out_time timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    latitude double precision,
    longitude double precision,
    image_url text
);


ALTER TABLE public.attendence_systems OWNER TO "logistic-api-app";

--
-- TOC entry 270 (class 1259 OID 21288)
-- Name: attendence_systems_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.attendence_systems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendence_systems_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5227 (class 0 OID 0)
-- Dependencies: 270
-- Name: attendence_systems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.attendence_systems_id_seq OWNED BY public.attendence_systems.id;


--
-- TOC entry 275 (class 1259 OID 21344)
-- Name: audit_employees; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.audit_employees (
    id bigint NOT NULL,
    user_id bigint,
    audit_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.audit_employees OWNER TO "logistic-api-app";

--
-- TOC entry 274 (class 1259 OID 21343)
-- Name: audit_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.audit_employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_employees_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5228 (class 0 OID 0)
-- Dependencies: 274
-- Name: audit_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.audit_employees_id_seq OWNED BY public.audit_employees.id;


--
-- TOC entry 277 (class 1259 OID 21363)
-- Name: audit_products; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.audit_products (
    id bigint NOT NULL,
    audit_id bigint,
    product_id bigint,
    created_by integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.audit_products OWNER TO "logistic-api-app";

--
-- TOC entry 276 (class 1259 OID 21362)
-- Name: audit_products_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.audit_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_products_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5229 (class 0 OID 0)
-- Dependencies: 276
-- Name: audit_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.audit_products_id_seq OWNED BY public.audit_products.id;


--
-- TOC entry 273 (class 1259 OID 21330)
-- Name: audits; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.audits (
    id bigint NOT NULL,
    status integer DEFAULT 0,
    created_by integer,
    room_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.audits OWNER TO "logistic-api-app";

--
-- TOC entry 272 (class 1259 OID 21329)
-- Name: audits_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.audits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audits_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5230 (class 0 OID 0)
-- Dependencies: 272
-- Name: audits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.audits_id_seq OWNED BY public.audits.id;


--
-- TOC entry 231 (class 1259 OID 20648)
-- Name: base_module_functions; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.base_module_functions (
    id bigint NOT NULL,
    function_title character varying,
    function_description text,
    base_module_id bigint,
    is_active boolean,
    is_deleted boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.base_module_functions OWNER TO "logistic-api-app";

--
-- TOC entry 230 (class 1259 OID 20647)
-- Name: base_module_functions_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.base_module_functions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_module_functions_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5231 (class 0 OID 0)
-- Dependencies: 230
-- Name: base_module_functions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.base_module_functions_id_seq OWNED BY public.base_module_functions.id;


--
-- TOC entry 229 (class 1259 OID 20624)
-- Name: base_modules; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.base_modules (
    id bigint NOT NULL,
    module_title character varying,
    module_description text,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.base_modules OWNER TO "logistic-api-app";

--
-- TOC entry 228 (class 1259 OID 20623)
-- Name: base_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.base_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_modules_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5232 (class 0 OID 0)
-- Dependencies: 228
-- Name: base_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.base_modules_id_seq OWNED BY public.base_modules.id;


--
-- TOC entry 233 (class 1259 OID 20681)
-- Name: class_lists; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.class_lists (
    id bigint NOT NULL,
    class_title character varying,
    description text,
    company_id bigint,
    questions text,
    is_active boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    created_by character varying,
    updated_by character varying
);


ALTER TABLE public.class_lists OWNER TO "logistic-api-app";

--
-- TOC entry 232 (class 1259 OID 20680)
-- Name: class_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.class_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_lists_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5233 (class 0 OID 0)
-- Dependencies: 232
-- Name: class_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.class_lists_id_seq OWNED BY public.class_lists.id;


--
-- TOC entry 217 (class 1259 OID 20507)
-- Name: companies; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    company_name character varying,
    company_address text,
    email character varying,
    cnpj_number character varying,
    contact_number character varying,
    company_type integer,
    plan_expiry_date timestamp without time zone,
    pickup_availability_days text,
    pickup_opening_hours text,
    pickup_closing_hours text,
    pickup_interval_time character varying,
    delivery_availibility_days text,
    delivery_opening_hours text,
    delivery_closing_hours text,
    delivery_interval_type integer,
    rtnc_number character varying,
    pincode integer,
    stripe_card character varying,
    stripe_token character varying,
    payment_status boolean DEFAULT false,
    is_active boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_url_array text,
    moment_beginning_service double precision,
    period_moment_end_service double precision,
    accpeted_quantity_items integer,
    average_delivery_time_item double precision,
    latitude double precision,
    longtitude double precision,
    corporate_name_customer character varying DEFAULT '{}'::text[],
    actual_address text,
    period_types_vehicles character varying DEFAULT '{}'::character varying[]
);


ALTER TABLE public.companies OWNER TO "logistic-api-app";

--
-- TOC entry 216 (class 1259 OID 20506)
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5234 (class 0 OID 0)
-- Dependencies: 216
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- TOC entry 327 (class 1259 OID 22012)
-- Name: compartments; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.compartments (
    id bigint NOT NULL,
    identifier integer DEFAULT 1 NOT NULL,
    length numeric(10,2) NOT NULL,
    width numeric(10,2) NOT NULL,
    height numeric(10,2) NOT NULL,
    distance_of_transport_unit numeric(10,2) NOT NULL,
    transport_unit_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.compartments OWNER TO "logistic-api-app";

--
-- TOC entry 326 (class 1259 OID 22011)
-- Name: compartments_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.compartments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compartments_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5235 (class 0 OID 0)
-- Dependencies: 326
-- Name: compartments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.compartments_id_seq OWNED BY public.compartments.id;


--
-- TOC entry 303 (class 1259 OID 21677)
-- Name: complaint_logs; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.complaint_logs (
    id bigint NOT NULL,
    status integer DEFAULT 1,
    invoice_id bigint,
    complaint_id bigint,
    company_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    respond_by_id bigint
);


ALTER TABLE public.complaint_logs OWNER TO "logistic-api-app";

--
-- TOC entry 302 (class 1259 OID 21676)
-- Name: complaint_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.complaint_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.complaint_logs_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5236 (class 0 OID 0)
-- Dependencies: 302
-- Name: complaint_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.complaint_logs_id_seq OWNED BY public.complaint_logs.id;


--
-- TOC entry 301 (class 1259 OID 21637)
-- Name: complaints; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.complaints (
    id bigint NOT NULL,
    user_id bigint,
    company_id bigint,
    status integer DEFAULT 1,
    order_id bigint,
    requested_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    truck_qr_code character varying,
    invoice_id bigint,
    type_missing integer
);


ALTER TABLE public.complaints OWNER TO "logistic-api-app";

--
-- TOC entry 300 (class 1259 OID 21636)
-- Name: complaints_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.complaints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.complaints_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5237 (class 0 OID 0)
-- Dependencies: 300
-- Name: complaints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.complaints_id_seq OWNED BY public.complaints.id;


--
-- TOC entry 311 (class 1259 OID 21781)
-- Name: courier_helpers; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.courier_helpers (
    id bigint NOT NULL,
    driver_helper_created_by integer,
    user_id bigint,
    company_id bigint,
    helper_type integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    vehicle_id bigint,
    order_pass_id bigint,
    status integer DEFAULT 1
);


ALTER TABLE public.courier_helpers OWNER TO "logistic-api-app";

--
-- TOC entry 310 (class 1259 OID 21780)
-- Name: courier_helpers_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.courier_helpers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courier_helpers_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5238 (class 0 OID 0)
-- Dependencies: 310
-- Name: courier_helpers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.courier_helpers_id_seq OWNED BY public.courier_helpers.id;


--
-- TOC entry 319 (class 1259 OID 21889)
-- Name: current_drivers; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.current_drivers (
    id bigint NOT NULL,
    status integer,
    user_id bigint,
    vehicle_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    order_pass_id bigint
);


ALTER TABLE public.current_drivers OWNER TO "logistic-api-app";

--
-- TOC entry 318 (class 1259 OID 21888)
-- Name: current_drivers_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.current_drivers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.current_drivers_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5239 (class 0 OID 0)
-- Dependencies: 318
-- Name: current_drivers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.current_drivers_id_seq OWNED BY public.current_drivers.id;


--
-- TOC entry 297 (class 1259 OID 21576)
-- Name: damage_packages; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.damage_packages (
    id bigint NOT NULL,
    user_id bigint,
    package_id bigint,
    company_id bigint,
    status integer DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    invoice_id integer,
    complaint_id bigint
);


ALTER TABLE public.damage_packages OWNER TO "logistic-api-app";

--
-- TOC entry 296 (class 1259 OID 21575)
-- Name: damage_packages_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.damage_packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.damage_packages_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5240 (class 0 OID 0)
-- Dependencies: 296
-- Name: damage_packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.damage_packages_id_seq OWNED BY public.damage_packages.id;


--
-- TOC entry 315 (class 1259 OID 21848)
-- Name: driver_histories; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.driver_histories (
    id bigint NOT NULL,
    status integer,
    vehicle_id bigint,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.driver_histories OWNER TO "logistic-api-app";

--
-- TOC entry 314 (class 1259 OID 21847)
-- Name: driver_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.driver_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.driver_histories_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5241 (class 0 OID 0)
-- Dependencies: 314
-- Name: driver_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.driver_histories_id_seq OWNED BY public.driver_histories.id;


--
-- TOC entry 323 (class 1259 OID 21957)
-- Name: employee_trainings; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.employee_trainings (
    id bigint NOT NULL,
    training_id integer,
    employee_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status integer DEFAULT 0,
    admin_comments text DEFAULT ''::text,
    approved_by integer
);


ALTER TABLE public.employee_trainings OWNER TO "logistic-api-app";

--
-- TOC entry 322 (class 1259 OID 21956)
-- Name: employee_trainings_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.employee_trainings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_trainings_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5242 (class 0 OID 0)
-- Dependencies: 322
-- Name: employee_trainings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.employee_trainings_id_seq OWNED BY public.employee_trainings.id;


--
-- TOC entry 249 (class 1259 OID 20988)
-- Name: employee_user_functions; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.employee_user_functions (
    id bigint NOT NULL,
    user_id bigint,
    base_module_function_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    base_module_id bigint
);


ALTER TABLE public.employee_user_functions OWNER TO "logistic-api-app";

--
-- TOC entry 248 (class 1259 OID 20987)
-- Name: employee_user_functions_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.employee_user_functions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_user_functions_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5243 (class 0 OID 0)
-- Dependencies: 248
-- Name: employee_user_functions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.employee_user_functions_id_seq OWNED BY public.employee_user_functions.id;


--
-- TOC entry 225 (class 1259 OID 20565)
-- Name: employees; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    employee_name character varying,
    employee_id character varying,
    email character varying,
    contact_number character varying,
    training_completed character varying,
    workdays text,
    company_id bigint,
    is_outsource_employee boolean DEFAULT false,
    out_source_cnpj_number character varying,
    is_active boolean DEFAULT false,
    user_id bigint,
    role_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    qr_code character varying,
    qrcode_url character varying,
    country_code character varying,
    out_source_employeer_name character varying,
    passcode character varying,
    is_passcode_available boolean DEFAULT false,
    reset_passcode_token character varying,
    devise_token character varying,
    device_type character varying,
    is_passcode_enable boolean DEFAULT false,
    is_biometric_enable boolean DEFAULT false,
    is_passcode_verified boolean DEFAULT false,
    buffer_time integer DEFAULT 0,
    work_start_time timestamp without time zone,
    work_end_time timestamp without time zone,
    quick_block_id integer
);


ALTER TABLE public.employees OWNER TO "logistic-api-app";

--
-- TOC entry 224 (class 1259 OID 20564)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5244 (class 0 OID 0)
-- Dependencies: 224
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 267 (class 1259 OID 21219)
-- Name: gadgets; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.gadgets (
    id bigint NOT NULL,
    gadget_type integer,
    serial_number character varying,
    visitor_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    model_number character varying,
    request_access_id bigint
);


ALTER TABLE public.gadgets OWNER TO "logistic-api-app";

--
-- TOC entry 266 (class 1259 OID 21218)
-- Name: gadgets_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.gadgets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gadgets_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5245 (class 0 OID 0)
-- Dependencies: 266
-- Name: gadgets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.gadgets_id_seq OWNED BY public.gadgets.id;


--
-- TOC entry 333 (class 1259 OID 22058)
-- Name: gate_access_entries; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.gate_access_entries (
    id bigint NOT NULL,
    company_id bigint,
    employee_id integer,
    security_id integer,
    access_status integer,
    scan_date_time timestamp without time zone,
    deny_reason text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.gate_access_entries OWNER TO "logistic-api-app";

--
-- TOC entry 332 (class 1259 OID 22057)
-- Name: gate_access_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.gate_access_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gate_access_entries_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5246 (class 0 OID 0)
-- Dependencies: 332
-- Name: gate_access_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.gate_access_entries_id_seq OWNED BY public.gate_access_entries.id;


--
-- TOC entry 331 (class 1259 OID 22035)
-- Name: grouped_orders; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.grouped_orders (
    id bigint NOT NULL,
    order_group_id bigint,
    order_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.grouped_orders OWNER TO "logistic-api-app";

--
-- TOC entry 330 (class 1259 OID 22034)
-- Name: grouped_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.grouped_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grouped_orders_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5247 (class 0 OID 0)
-- Dependencies: 330
-- Name: grouped_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.grouped_orders_id_seq OWNED BY public.grouped_orders.id;


--
-- TOC entry 257 (class 1259 OID 21091)
-- Name: inspection_helpers; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.inspection_helpers (
    id bigint NOT NULL,
    user_id bigint,
    inspection_id bigint,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    maintainance_id bigint,
    id_type integer DEFAULT 0
);


ALTER TABLE public.inspection_helpers OWNER TO "logistic-api-app";

--
-- TOC entry 256 (class 1259 OID 21090)
-- Name: inspection_helpers_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.inspection_helpers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inspection_helpers_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5248 (class 0 OID 0)
-- Dependencies: 256
-- Name: inspection_helpers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.inspection_helpers_id_seq OWNED BY public.inspection_helpers.id;


--
-- TOC entry 251 (class 1259 OID 21019)
-- Name: inspections; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.inspections (
    id bigint NOT NULL,
    product_id bigint,
    requested_by integer,
    added_by_date timestamp without time zone,
    added_by integer,
    status integer DEFAULT 0,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    assign_to integer,
    schedule_start_dtm timestamp without time zone,
    schedule_end_dtm timestamp without time zone,
    question_answer text,
    image_url text,
    urgency_rate integer,
    inspection_complete_dtm timestamp without time zone,
    maintainance_required integer DEFAULT 0,
    comment_schedular text,
    comment_inspector text,
    comment_checker text,
    is_direct_schedule boolean DEFAULT false,
    is_direct_submit boolean DEFAULT false,
    is_product_inspection integer DEFAULT 1,
    inspectable_type character varying,
    inspectable_id bigint,
    execution_start_time timestamp without time zone
);


ALTER TABLE public.inspections OWNER TO "logistic-api-app";

--
-- TOC entry 250 (class 1259 OID 21018)
-- Name: inspections_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.inspections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inspections_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5249 (class 0 OID 0)
-- Dependencies: 250
-- Name: inspections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.inspections_id_seq OWNED BY public.inspections.id;


--
-- TOC entry 285 (class 1259 OID 21429)
-- Name: invoices; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.invoices (
    id bigint NOT NULL,
    invoice_number character varying,
    seller_company_cnpj character varying,
    seller_company_name character varying,
    seller_company_address character varying,
    seller_company_nro character varying,
    "seller_company_xCpl" character varying,
    seller_company_neighborhood character varying,
    "seller_company_cMun" character varying,
    seller_company_city character varying,
    seller_company_state character varying,
    "seller_company_CEP" character varying,
    receiver_company_cnpj character varying,
    receiver_company_name character varying,
    receiver_company_address character varying,
    receiver_company_nro character varying,
    receiver_company_neighborhood character varying,
    "receiver_company_cMun" character varying,
    receiver_company_city character varying,
    receiver_company_state character varying,
    "receiver_company_CEP" character varying,
    shipping_company_name character varying,
    shipping_company_cnpj character varying,
    "shipping_company_xEnder" character varying,
    shipping_company_city character varying,
    shipping_company_state character varying,
    package_volume integer,
    "package_pesoL" character varying,
    "package_pesoB" character varying,
    "chNFe" character varying,
    outsource_shipping_company_name character varying,
    outsource_shipping_company_cnpj_number character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_id bigint,
    is_outsource_shipping_company boolean,
    tag_type integer,
    status integer,
    seller_company_present_in_db boolean,
    receiver_company_present_in_db boolean,
    shipping_company_present_in_db boolean,
    seller_company_id integer,
    receiver_company_id integer,
    shipping_company_id integer,
    user_id bigint,
    order_id bigint,
    outsource_shipping_company_present_in_db boolean,
    outsource_shipping_company_id integer,
    seller_company_full_address text,
    seller_company_latitude double precision,
    seller_company_longtitude double precision,
    shipping_company_full_address text,
    shipping_company_latitude double precision,
    shipping_company_longtitude double precision,
    receiver_company_full_address text,
    receiver_company_latitude double precision,
    receiver_company_longtitude double precision,
    invoice_data text,
    outsource_shipping_company_full_address character varying
);


ALTER TABLE public.invoices OWNER TO "logistic-api-app";

--
-- TOC entry 284 (class 1259 OID 21428)
-- Name: invoices_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.invoices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoices_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5250 (class 0 OID 0)
-- Dependencies: 284
-- Name: invoices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.invoices_id_seq OWNED BY public.invoices.id;


--
-- TOC entry 313 (class 1259 OID 21824)
-- Name: license_docs; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.license_docs (
    id bigint NOT NULL,
    user_id bigint,
    company_id bigint,
    status integer DEFAULT 1,
    expiry_date timestamp without time zone,
    approved_by integer,
    license_type integer,
    admin_comment text DEFAULT ''::text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.license_docs OWNER TO "logistic-api-app";

--
-- TOC entry 312 (class 1259 OID 21823)
-- Name: license_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.license_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.license_docs_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5251 (class 0 OID 0)
-- Dependencies: 312
-- Name: license_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.license_docs_id_seq OWNED BY public.license_docs.id;


--
-- TOC entry 283 (class 1259 OID 21407)
-- Name: loads; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.loads (
    id bigint NOT NULL,
    length double precision,
    width double precision,
    height double precision,
    weight double precision,
    is_3d boolean,
    is_2d boolean,
    can_not boolean,
    company_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.loads OWNER TO "logistic-api-app";

--
-- TOC entry 282 (class 1259 OID 21406)
-- Name: loads_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.loads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loads_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5252 (class 0 OID 0)
-- Dependencies: 282
-- Name: loads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.loads_id_seq OWNED BY public.loads.id;


--
-- TOC entry 255 (class 1259 OID 21060)
-- Name: maintainances; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.maintainances (
    id bigint NOT NULL,
    inspection_id bigint,
    requested_dtm timestamp without time zone,
    scheduled_dtm timestamp without time zone,
    completed_dtm timestamp without time zone,
    deleted_dtm timestamp without time zone,
    maintainance_start_dtm timestamp without time zone,
    maintainance_end_dtm timestamp without time zone,
    created_by integer DEFAULT 0,
    scheduled_by integer DEFAULT 0,
    assigned_to integer DEFAULT 0,
    status integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id bigint,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    comment_schedular text,
    remark text,
    is_direct_schedule boolean DEFAULT false,
    image_url text,
    is_direct_submit boolean DEFAULT false,
    urgency_rate integer DEFAULT 0,
    maintainable_type character varying,
    maintainable_id bigint,
    execution_start_time timestamp without time zone
);


ALTER TABLE public.maintainances OWNER TO "logistic-api-app";

--
-- TOC entry 254 (class 1259 OID 21059)
-- Name: maintainances_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.maintainances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maintainances_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5253 (class 0 OID 0)
-- Dependencies: 254
-- Name: maintainances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.maintainances_id_seq OWNED BY public.maintainances.id;


--
-- TOC entry 241 (class 1259 OID 20786)
-- Name: measurements; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.measurements (
    id bigint NOT NULL,
    title character varying,
    description text,
    is_active boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.measurements OWNER TO "logistic-api-app";

--
-- TOC entry 240 (class 1259 OID 20785)
-- Name: measurements_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.measurements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.measurements_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5254 (class 0 OID 0)
-- Dependencies: 240
-- Name: measurements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.measurements_id_seq OWNED BY public.measurements.id;


--
-- TOC entry 299 (class 1259 OID 21610)
-- Name: missing_packages; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.missing_packages (
    id bigint NOT NULL,
    user_id bigint,
    package_id bigint,
    company_id bigint,
    status integer DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    invoice_id integer,
    complaint_id bigint,
    type_missing integer
);


ALTER TABLE public.missing_packages OWNER TO "logistic-api-app";

--
-- TOC entry 298 (class 1259 OID 21609)
-- Name: missing_packages_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.missing_packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.missing_packages_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5255 (class 0 OID 0)
-- Dependencies: 298
-- Name: missing_packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.missing_packages_id_seq OWNED BY public.missing_packages.id;


--
-- TOC entry 261 (class 1259 OID 21177)
-- Name: notifications; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    title character varying,
    description text,
    notification_type integer,
    is_read boolean DEFAULT false,
    sender_id integer,
    receiver_id integer,
    read_at timestamp without time zone,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.notifications OWNER TO "logistic-api-app";

--
-- TOC entry 260 (class 1259 OID 21176)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5256 (class 0 OID 0)
-- Dependencies: 260
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 305 (class 1259 OID 21704)
-- Name: order_actions; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_actions (
    id bigint NOT NULL,
    company_id bigint,
    order_id bigint,
    vehicle_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.order_actions OWNER TO "logistic-api-app";

--
-- TOC entry 304 (class 1259 OID 21703)
-- Name: order_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_actions_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5257 (class 0 OID 0)
-- Dependencies: 304
-- Name: order_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_actions_id_seq OWNED BY public.order_actions.id;


--
-- TOC entry 329 (class 1259 OID 22026)
-- Name: order_groups; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_groups (
    id bigint NOT NULL,
    identifier character varying,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.order_groups OWNER TO "logistic-api-app";

--
-- TOC entry 328 (class 1259 OID 22025)
-- Name: order_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_groups_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5258 (class 0 OID 0)
-- Dependencies: 328
-- Name: order_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_groups_id_seq OWNED BY public.order_groups.id;


--
-- TOC entry 293 (class 1259 OID 21541)
-- Name: order_histories; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_histories (
    id bigint NOT NULL,
    order_path character varying,
    order_ids character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.order_histories OWNER TO "logistic-api-app";

--
-- TOC entry 292 (class 1259 OID 21540)
-- Name: order_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_histories_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5259 (class 0 OID 0)
-- Dependencies: 292
-- Name: order_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_histories_id_seq OWNED BY public.order_histories.id;


--
-- TOC entry 295 (class 1259 OID 21550)
-- Name: order_logs; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_logs (
    id bigint NOT NULL,
    invoice_id bigint,
    vehicle_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    status integer,
    user_id bigint,
    is_loaded boolean DEFAULT false,
    order_log_status boolean DEFAULT true
);


ALTER TABLE public.order_logs OWNER TO "logistic-api-app";

--
-- TOC entry 294 (class 1259 OID 21549)
-- Name: order_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_logs_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5260 (class 0 OID 0)
-- Dependencies: 294
-- Name: order_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_logs_id_seq OWNED BY public.order_logs.id;


--
-- TOC entry 309 (class 1259 OID 21754)
-- Name: order_passes; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_passes (
    id bigint NOT NULL,
    order_pass_code character varying,
    status integer,
    vehicle_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    order_type integer,
    company_id bigint
);


ALTER TABLE public.order_passes OWNER TO "logistic-api-app";

--
-- TOC entry 308 (class 1259 OID 21753)
-- Name: order_passes_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_passes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_passes_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5261 (class 0 OID 0)
-- Dependencies: 308
-- Name: order_passes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_passes_id_seq OWNED BY public.order_passes.id;


--
-- TOC entry 321 (class 1259 OID 21914)
-- Name: order_statuses; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.order_statuses (
    id bigint NOT NULL,
    order_id bigint,
    vehicle_id bigint,
    company_id bigint,
    user_id bigint,
    sequence_delivery character varying,
    client_name character varying,
    reciver_company_id integer,
    max_deliver_date character varying,
    priority character varying,
    weight character varying,
    volume character varying,
    vehicles_accepted character varying,
    client_service_time character varying,
    estimated_arrival_time character varying,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    confirm_datetime timestamp without time zone
);


ALTER TABLE public.order_statuses OWNER TO "logistic-api-app";

--
-- TOC entry 320 (class 1259 OID 21913)
-- Name: order_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.order_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_statuses_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5262 (class 0 OID 0)
-- Dependencies: 320
-- Name: order_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.order_statuses_id_seq OWNED BY public.order_statuses.id;


--
-- TOC entry 291 (class 1259 OID 21508)
-- Name: orders; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    company_id bigint,
    order_number character varying,
    delivery_status integer,
    is_sending_courier_company_office boolean,
    user_id bigint,
    delivery_type integer,
    delivery_mode integer,
    priority integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    shipping_company_id integer,
    max_date timestamp without time zone,
    scheduled_by_id integer,
    accpeted_quantity_items integer,
    average_delivery_time_item double precision,
    exe_output text,
    vehicle_ids text,
    start_movement_shift double precision,
    vehicle_id bigint,
    reciever_company_unique_code character varying,
    seller_company_unique_code character varying,
    shipping_company_unique_code character varying,
    display_max_date character varying
);


ALTER TABLE public.orders OWNER TO "logistic-api-app";

--
-- TOC entry 290 (class 1259 OID 21507)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5263 (class 0 OID 0)
-- Dependencies: 290
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 289 (class 1259 OID 21474)
-- Name: other_companies; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.other_companies (
    id bigint NOT NULL,
    company_name character varying,
    cnpj_number character varying,
    pickup_availability_days text,
    pickup_opening_hours text,
    pickup_closing_hours text,
    pickup_interval_time character varying,
    delivery_availibility_days text,
    delivery_opening_hours text,
    delivery_closing_hours text,
    delivery_interval_type integer,
    latitude double precision,
    longtitude double precision,
    actual_address text,
    company_type integer,
    invoice_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    moment_beginning_service double precision,
    period_moment_end_service double precision
);


ALTER TABLE public.other_companies OWNER TO "logistic-api-app";

--
-- TOC entry 288 (class 1259 OID 21473)
-- Name: other_companies_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.other_companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_companies_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5264 (class 0 OID 0)
-- Dependencies: 288
-- Name: other_companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.other_companies_id_seq OWNED BY public.other_companies.id;


--
-- TOC entry 307 (class 1259 OID 21729)
-- Name: package_actions; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.package_actions (
    id bigint NOT NULL,
    user_id bigint,
    order_action_id bigint,
    package_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_id bigint,
    order_pass_id bigint
);


ALTER TABLE public.package_actions OWNER TO "logistic-api-app";

--
-- TOC entry 306 (class 1259 OID 21728)
-- Name: package_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.package_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.package_actions_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5265 (class 0 OID 0)
-- Dependencies: 306
-- Name: package_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.package_actions_id_seq OWNED BY public.package_actions.id;


--
-- TOC entry 287 (class 1259 OID 21465)
-- Name: packages; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.packages (
    id bigint NOT NULL,
    package_number character varying,
    tag character varying,
    receiver_company_name character varying,
    uploaded_at timestamp without time zone,
    uploaded_by integer,
    length character varying,
    width double precision,
    height double precision,
    weight double precision,
    is_3d boolean DEFAULT false,
    is_2d boolean DEFAULT false,
    can_not boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    invoice_id bigint,
    volume double precision
);


ALTER TABLE public.packages OWNER TO "logistic-api-app";

--
-- TOC entry 286 (class 1259 OID 21464)
-- Name: packages_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.packages_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5266 (class 0 OID 0)
-- Dependencies: 286
-- Name: packages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.packages_id_seq OWNED BY public.packages.id;


--
-- TOC entry 243 (class 1259 OID 20805)
-- Name: product_logs; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.product_logs (
    id bigint NOT NULL,
    product_id bigint,
    room_id bigint,
    is_patrimonial boolean DEFAULT false,
    is_material_control boolean DEFAULT false,
    quantity double precision,
    operation integer,
    current_stock double precision,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    giver_id bigint,
    receiver_id bigint,
    pickup_date timestamp without time zone,
    expected_return_date timestamp without time zone,
    is_return_complete boolean DEFAULT false,
    return_date timestamp without time zone,
    company_id bigint,
    operation_type integer,
    ref_table_type character varying,
    ref_table_id bigint,
    consumed_quantity double precision,
    is_epi boolean DEFAULT false
);


ALTER TABLE public.product_logs OWNER TO "logistic-api-app";

--
-- TOC entry 242 (class 1259 OID 20804)
-- Name: product_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.product_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_logs_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5267 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.product_logs_id_seq OWNED BY public.product_logs.id;


--
-- TOC entry 235 (class 1259 OID 20696)
-- Name: products; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    product_title character varying,
    manufacturer character varying,
    product_model character varying,
    room_id bigint,
    universal_barcode character varying,
    price double precision,
    is_patrimonial boolean DEFAULT false,
    serial_number character varying,
    is_material_control boolean DEFAULT false,
    patrimonial_qr_code character varying,
    is_require_maintanance boolean DEFAULT false,
    is_discard boolean DEFAULT false,
    class_list_id bigint,
    company_id bigint,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    measurement_id bigint,
    image_url_array text,
    product_type integer,
    discarded_date_time timestamp without time zone,
    discarded_user_id integer DEFAULT 0,
    is_compliance integer DEFAULT 1,
    is_epi boolean DEFAULT false,
    epi_expiry_date timestamp without time zone,
    epi_ca_number character varying
);


ALTER TABLE public.products OWNER TO "logistic-api-app";

--
-- TOC entry 234 (class 1259 OID 20695)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5268 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 317 (class 1259 OID 21867)
-- Name: remark_vehicles; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.remark_vehicles (
    id bigint NOT NULL,
    remark text,
    user_id bigint,
    vehicle_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.remark_vehicles OWNER TO "logistic-api-app";

--
-- TOC entry 316 (class 1259 OID 21866)
-- Name: remark_vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.remark_vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remark_vehicles_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5269 (class 0 OID 0)
-- Dependencies: 316
-- Name: remark_vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.remark_vehicles_id_seq OWNED BY public.remark_vehicles.id;


--
-- TOC entry 263 (class 1259 OID 21189)
-- Name: request_accesses; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.request_accesses (
    id bigint NOT NULL,
    reason_to_visit text,
    visit_start_date timestamp without time zone,
    visit_end_date timestamp without time zone,
    request_sender_id integer,
    request_receiver_id integer,
    status integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    training_required character varying,
    access_control_incharge_status integer,
    access_control_incharge_id integer,
    request_type integer,
    employee_request_approve_date_time timestamp without time zone,
    incharge_request_approve_date_time timestamp without time zone,
    company_id bigint
);


ALTER TABLE public.request_accesses OWNER TO "logistic-api-app";

--
-- TOC entry 262 (class 1259 OID 21188)
-- Name: request_accesses_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.request_accesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_accesses_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5270 (class 0 OID 0)
-- Dependencies: 262
-- Name: request_accesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.request_accesses_id_seq OWNED BY public.request_accesses.id;


--
-- TOC entry 247 (class 1259 OID 20864)
-- Name: requested_items; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.requested_items (
    id bigint NOT NULL,
    product_id bigint,
    quantity double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    resource_request_id bigint,
    proposed_date_time timestamp without time zone,
    reserved_quantity double precision,
    reserve_till_date timestamp without time zone
);


ALTER TABLE public.requested_items OWNER TO "logistic-api-app";

--
-- TOC entry 246 (class 1259 OID 20863)
-- Name: requested_items_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.requested_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requested_items_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5271 (class 0 OID 0)
-- Dependencies: 246
-- Name: requested_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.requested_items_id_seq OWNED BY public.requested_items.id;


--
-- TOC entry 245 (class 1259 OID 20832)
-- Name: resource_requests; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.resource_requests (
    id bigint NOT NULL,
    room_id bigint,
    requested_by_id bigint,
    base_module_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    request_type integer
);


ALTER TABLE public.resource_requests OWNER TO "logistic-api-app";

--
-- TOC entry 244 (class 1259 OID 20831)
-- Name: resource_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.resource_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resource_requests_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5272 (class 0 OID 0)
-- Dependencies: 244
-- Name: resource_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.resource_requests_id_seq OWNED BY public.resource_requests.id;


--
-- TOC entry 219 (class 1259 OID 20519)
-- Name: roles; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    role_title character varying,
    description text,
    role_type integer,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    training_required character varying,
    company_id bigint
);


ALTER TABLE public.roles OWNER TO "logistic-api-app";

--
-- TOC entry 218 (class 1259 OID 20518)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5273 (class 0 OID 0)
-- Dependencies: 218
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 227 (class 1259 OID 20592)
-- Name: rooms; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.rooms (
    id bigint NOT NULL,
    room_name character varying,
    room_qr_code character varying,
    company_id bigint,
    is_patrominial boolean DEFAULT false,
    is_material_control boolean DEFAULT false,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    room_qr_url character varying,
    is_epi boolean DEFAULT false
);


ALTER TABLE public.rooms OWNER TO "logistic-api-app";

--
-- TOC entry 226 (class 1259 OID 20591)
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5274 (class 0 OID 0)
-- Dependencies: 226
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- TOC entry 214 (class 1259 OID 20492)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "logistic-api-app";

--
-- TOC entry 259 (class 1259 OID 21149)
-- Name: services; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.services (
    id bigint NOT NULL,
    title character varying,
    description text,
    company_id bigint,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_by character varying,
    updated_by character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    qr_code character varying,
    class_list_id bigint
);


ALTER TABLE public.services OWNER TO "logistic-api-app";

--
-- TOC entry 258 (class 1259 OID 21148)
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5275 (class 0 OID 0)
-- Dependencies: 258
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- TOC entry 223 (class 1259 OID 20556)
-- Name: trainings; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.trainings (
    id bigint NOT NULL,
    training_title character varying,
    description text,
    is_active boolean DEFAULT true,
    is_deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    company_id bigint
);


ALTER TABLE public.trainings OWNER TO "logistic-api-app";

--
-- TOC entry 222 (class 1259 OID 20555)
-- Name: trainings_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.trainings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trainings_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5276 (class 0 OID 0)
-- Dependencies: 222
-- Name: trainings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.trainings_id_seq OWNED BY public.trainings.id;


--
-- TOC entry 325 (class 1259 OID 21998)
-- Name: transport_units; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.transport_units (
    id bigint NOT NULL,
    identifier integer DEFAULT 0 NOT NULL,
    weight_limit_front_axel numeric(10,2) NOT NULL,
    tare_front_axel numeric(10,2) NOT NULL,
    distance_between_supports numeric(10,2) NOT NULL,
    weight_limit_rear_axel numeric(10,2) NOT NULL,
    tare_rear_axel numeric(10,2) NOT NULL,
    distance_of_fifth_wheel numeric(10,2) NOT NULL,
    vehicle_type_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.transport_units OWNER TO "logistic-api-app";

--
-- TOC entry 324 (class 1259 OID 21997)
-- Name: transport_units_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.transport_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transport_units_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5277 (class 0 OID 0)
-- Dependencies: 324
-- Name: transport_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.transport_units_id_seq OWNED BY public.transport_units.id;


--
-- TOC entry 253 (class 1259 OID 21037)
-- Name: user_favourite_rooms; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.user_favourite_rooms (
    id bigint NOT NULL,
    user_id bigint,
    room_id bigint,
    is_fav boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_favourite_rooms OWNER TO "logistic-api-app";

--
-- TOC entry 252 (class 1259 OID 21036)
-- Name: user_favourite_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.user_favourite_rooms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_favourite_rooms_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5278 (class 0 OID 0)
-- Dependencies: 252
-- Name: user_favourite_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.user_favourite_rooms_id_seq OWNED BY public.user_favourite_rooms.id;


--
-- TOC entry 221 (class 1259 OID 20528)
-- Name: users; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    jti character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    fullname character varying,
    latitude character varying,
    longitude character varying,
    isd_code integer,
    mobile_number character varying,
    mobile_verification integer,
    profile_image character varying,
    passcode integer,
    qr_code character varying,
    ejabbered_id integer,
    is_active boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    role_id bigint,
    company_id bigint,
    access_type integer
);


ALTER TABLE public.users OWNER TO "logistic-api-app";

--
-- TOC entry 220 (class 1259 OID 20527)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5279 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 281 (class 1259 OID 21397)
-- Name: vehicle_types; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.vehicle_types (
    id bigint NOT NULL,
    label character varying DEFAULT '{}'::character varying[],
    payload_capacity numeric(10,2),
    average_speed numeric(10,2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_id bigint,
    type_code integer DEFAULT 0 NOT NULL,
    number_of_transport_units integer DEFAULT 0 NOT NULL,
    number_of_compartments integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.vehicle_types OWNER TO "logistic-api-app";

--
-- TOC entry 280 (class 1259 OID 21396)
-- Name: vehicle_types_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.vehicle_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicle_types_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5280 (class 0 OID 0)
-- Dependencies: 280
-- Name: vehicle_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.vehicle_types_id_seq OWNED BY public.vehicle_types.id;


--
-- TOC entry 279 (class 1259 OID 21382)
-- Name: vehicles; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.vehicles (
    id bigint NOT NULL,
    fixed_vehicle_cost double precision,
    cost_km_driven double precision,
    vehicle_service_time_per_day double precision,
    license_plate character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    vehicle_type_id bigint,
    company_id bigint,
    qr_code character varying,
    vehicle_available boolean DEFAULT true,
    license_type character varying,
    is_loaded boolean DEFAULT false,
    is_assigned boolean DEFAULT false,
    is_started boolean DEFAULT false,
    longtitude double precision,
    latitude double precision
);


ALTER TABLE public.vehicles OWNER TO "logistic-api-app";

--
-- TOC entry 278 (class 1259 OID 21381)
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehicles_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5281 (class 0 OID 0)
-- Dependencies: 278
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.vehicles_id_seq OWNED BY public.vehicles.id;


--
-- TOC entry 269 (class 1259 OID 21234)
-- Name: visitor_request_accesses; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.visitor_request_accesses (
    id bigint NOT NULL,
    visitor_id bigint,
    request_access_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.visitor_request_accesses OWNER TO "logistic-api-app";

--
-- TOC entry 268 (class 1259 OID 21233)
-- Name: visitor_request_accesses_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.visitor_request_accesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitor_request_accesses_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5282 (class 0 OID 0)
-- Dependencies: 268
-- Name: visitor_request_accesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.visitor_request_accesses_id_seq OWNED BY public.visitor_request_accesses.id;


--
-- TOC entry 265 (class 1259 OID 21198)
-- Name: visitors; Type: TABLE; Schema: public; Owner: logistic-api-app
--

CREATE TABLE public.visitors (
    id bigint NOT NULL,
    employee_id bigint,
    document_type integer,
    document_number character varying,
    vehicle_plate_number character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    email character varying,
    company_name character varying,
    visitor_id character varying,
    social_security_number character varying,
    training_completed character varying,
    contact_number character varying,
    company_id bigint
);


ALTER TABLE public.visitors OWNER TO "logistic-api-app";

--
-- TOC entry 264 (class 1259 OID 21197)
-- Name: visitors_id_seq; Type: SEQUENCE; Schema: public; Owner: logistic-api-app
--

CREATE SEQUENCE public.visitors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitors_id_seq OWNER TO "logistic-api-app";

--
-- TOC entry 5283 (class 0 OID 0)
-- Dependencies: 264
-- Name: visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: logistic-api-app
--

ALTER SEQUENCE public.visitors_id_seq OWNED BY public.visitors.id;


--
-- TOC entry 4483 (class 2604 OID 20773)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 4482 (class 2604 OID 20763)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 4536 (class 2604 OID 21292)
-- Name: attendence_systems id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.attendence_systems ALTER COLUMN id SET DEFAULT nextval('public.attendence_systems_id_seq'::regclass);


--
-- TOC entry 4539 (class 2604 OID 21347)
-- Name: audit_employees id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_employees ALTER COLUMN id SET DEFAULT nextval('public.audit_employees_id_seq'::regclass);


--
-- TOC entry 4540 (class 2604 OID 21366)
-- Name: audit_products id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_products ALTER COLUMN id SET DEFAULT nextval('public.audit_products_id_seq'::regclass);


--
-- TOC entry 4537 (class 2604 OID 21333)
-- Name: audits id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audits ALTER COLUMN id SET DEFAULT nextval('public.audits_id_seq'::regclass);


--
-- TOC entry 4468 (class 2604 OID 20651)
-- Name: base_module_functions id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.base_module_functions ALTER COLUMN id SET DEFAULT nextval('public.base_module_functions_id_seq'::regclass);


--
-- TOC entry 4465 (class 2604 OID 20627)
-- Name: base_modules id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.base_modules ALTER COLUMN id SET DEFAULT nextval('public.base_modules_id_seq'::regclass);


--
-- TOC entry 4469 (class 2604 OID 20684)
-- Name: class_lists id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.class_lists ALTER COLUMN id SET DEFAULT nextval('public.class_lists_id_seq'::regclass);


--
-- TOC entry 4435 (class 2604 OID 20510)
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- TOC entry 4588 (class 2604 OID 22015)
-- Name: compartments id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.compartments ALTER COLUMN id SET DEFAULT nextval('public.compartments_id_seq'::regclass);


--
-- TOC entry 4569 (class 2604 OID 21680)
-- Name: complaint_logs id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaint_logs ALTER COLUMN id SET DEFAULT nextval('public.complaint_logs_id_seq'::regclass);


--
-- TOC entry 4567 (class 2604 OID 21640)
-- Name: complaints id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints ALTER COLUMN id SET DEFAULT nextval('public.complaints_id_seq'::regclass);


--
-- TOC entry 4574 (class 2604 OID 21784)
-- Name: courier_helpers id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers ALTER COLUMN id SET DEFAULT nextval('public.courier_helpers_id_seq'::regclass);


--
-- TOC entry 4581 (class 2604 OID 21892)
-- Name: current_drivers id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.current_drivers ALTER COLUMN id SET DEFAULT nextval('public.current_drivers_id_seq'::regclass);


--
-- TOC entry 4563 (class 2604 OID 21579)
-- Name: damage_packages id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages ALTER COLUMN id SET DEFAULT nextval('public.damage_packages_id_seq'::regclass);


--
-- TOC entry 4579 (class 2604 OID 21851)
-- Name: driver_histories id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.driver_histories ALTER COLUMN id SET DEFAULT nextval('public.driver_histories_id_seq'::regclass);


--
-- TOC entry 4583 (class 2604 OID 21960)
-- Name: employee_trainings id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_trainings ALTER COLUMN id SET DEFAULT nextval('public.employee_trainings_id_seq'::regclass);


--
-- TOC entry 4500 (class 2604 OID 20991)
-- Name: employee_user_functions id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_user_functions ALTER COLUMN id SET DEFAULT nextval('public.employee_user_functions_id_seq'::regclass);


--
-- TOC entry 4451 (class 2604 OID 20568)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 4534 (class 2604 OID 21222)
-- Name: gadgets id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gadgets ALTER COLUMN id SET DEFAULT nextval('public.gadgets_id_seq'::regclass);


--
-- TOC entry 4592 (class 2604 OID 22061)
-- Name: gate_access_entries id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gate_access_entries ALTER COLUMN id SET DEFAULT nextval('public.gate_access_entries_id_seq'::regclass);


--
-- TOC entry 4591 (class 2604 OID 22038)
-- Name: grouped_orders id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.grouped_orders ALTER COLUMN id SET DEFAULT nextval('public.grouped_orders_id_seq'::regclass);


--
-- TOC entry 4521 (class 2604 OID 21094)
-- Name: inspection_helpers id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspection_helpers ALTER COLUMN id SET DEFAULT nextval('public.inspection_helpers_id_seq'::regclass);


--
-- TOC entry 4501 (class 2604 OID 21022)
-- Name: inspections id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspections ALTER COLUMN id SET DEFAULT nextval('public.inspections_id_seq'::regclass);


--
-- TOC entry 4552 (class 2604 OID 21432)
-- Name: invoices id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.invoices ALTER COLUMN id SET DEFAULT nextval('public.invoices_id_seq'::regclass);


--
-- TOC entry 4576 (class 2604 OID 21827)
-- Name: license_docs id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.license_docs ALTER COLUMN id SET DEFAULT nextval('public.license_docs_id_seq'::regclass);


--
-- TOC entry 4551 (class 2604 OID 21410)
-- Name: loads id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.loads ALTER COLUMN id SET DEFAULT nextval('public.loads_id_seq'::regclass);


--
-- TOC entry 4511 (class 2604 OID 21063)
-- Name: maintainances id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.maintainances ALTER COLUMN id SET DEFAULT nextval('public.maintainances_id_seq'::regclass);


--
-- TOC entry 4484 (class 2604 OID 20789)
-- Name: measurements id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.measurements ALTER COLUMN id SET DEFAULT nextval('public.measurements_id_seq'::regclass);


--
-- TOC entry 4565 (class 2604 OID 21613)
-- Name: missing_packages id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages ALTER COLUMN id SET DEFAULT nextval('public.missing_packages_id_seq'::regclass);


--
-- TOC entry 4528 (class 2604 OID 21180)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 4571 (class 2604 OID 21707)
-- Name: order_actions id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_actions ALTER COLUMN id SET DEFAULT nextval('public.order_actions_id_seq'::regclass);


--
-- TOC entry 4590 (class 2604 OID 22029)
-- Name: order_groups id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_groups ALTER COLUMN id SET DEFAULT nextval('public.order_groups_id_seq'::regclass);


--
-- TOC entry 4559 (class 2604 OID 21544)
-- Name: order_histories id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_histories ALTER COLUMN id SET DEFAULT nextval('public.order_histories_id_seq'::regclass);


--
-- TOC entry 4560 (class 2604 OID 21553)
-- Name: order_logs id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_logs ALTER COLUMN id SET DEFAULT nextval('public.order_logs_id_seq'::regclass);


--
-- TOC entry 4573 (class 2604 OID 21757)
-- Name: order_passes id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_passes ALTER COLUMN id SET DEFAULT nextval('public.order_passes_id_seq'::regclass);


--
-- TOC entry 4582 (class 2604 OID 21917)
-- Name: order_statuses id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses ALTER COLUMN id SET DEFAULT nextval('public.order_statuses_id_seq'::regclass);


--
-- TOC entry 4558 (class 2604 OID 21511)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4557 (class 2604 OID 21477)
-- Name: other_companies id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.other_companies ALTER COLUMN id SET DEFAULT nextval('public.other_companies_id_seq'::regclass);


--
-- TOC entry 4572 (class 2604 OID 21732)
-- Name: package_actions id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions ALTER COLUMN id SET DEFAULT nextval('public.package_actions_id_seq'::regclass);


--
-- TOC entry 4553 (class 2604 OID 21468)
-- Name: packages id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.packages ALTER COLUMN id SET DEFAULT nextval('public.packages_id_seq'::regclass);


--
-- TOC entry 4487 (class 2604 OID 20808)
-- Name: product_logs id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs ALTER COLUMN id SET DEFAULT nextval('public.product_logs_id_seq'::regclass);


--
-- TOC entry 4472 (class 2604 OID 20699)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4580 (class 2604 OID 21870)
-- Name: remark_vehicles id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.remark_vehicles ALTER COLUMN id SET DEFAULT nextval('public.remark_vehicles_id_seq'::regclass);


--
-- TOC entry 4532 (class 2604 OID 21192)
-- Name: request_accesses id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.request_accesses ALTER COLUMN id SET DEFAULT nextval('public.request_accesses_id_seq'::regclass);


--
-- TOC entry 4497 (class 2604 OID 20867)
-- Name: requested_items id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.requested_items ALTER COLUMN id SET DEFAULT nextval('public.requested_items_id_seq'::regclass);


--
-- TOC entry 4494 (class 2604 OID 20835)
-- Name: resource_requests id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.resource_requests ALTER COLUMN id SET DEFAULT nextval('public.resource_requests_id_seq'::regclass);


--
-- TOC entry 4441 (class 2604 OID 20522)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4459 (class 2604 OID 20595)
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- TOC entry 4525 (class 2604 OID 21152)
-- Name: services id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- TOC entry 4448 (class 2604 OID 20559)
-- Name: trainings id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.trainings ALTER COLUMN id SET DEFAULT nextval('public.trainings_id_seq'::regclass);


--
-- TOC entry 4586 (class 2604 OID 22001)
-- Name: transport_units id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.transport_units ALTER COLUMN id SET DEFAULT nextval('public.transport_units_id_seq'::regclass);


--
-- TOC entry 4509 (class 2604 OID 21040)
-- Name: user_favourite_rooms id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.user_favourite_rooms ALTER COLUMN id SET DEFAULT nextval('public.user_favourite_rooms_id_seq'::regclass);


--
-- TOC entry 4443 (class 2604 OID 20531)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4546 (class 2604 OID 21400)
-- Name: vehicle_types id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicle_types ALTER COLUMN id SET DEFAULT nextval('public.vehicle_types_id_seq'::regclass);


--
-- TOC entry 4541 (class 2604 OID 21385)
-- Name: vehicles id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicles ALTER COLUMN id SET DEFAULT nextval('public.vehicles_id_seq'::regclass);


--
-- TOC entry 4535 (class 2604 OID 21237)
-- Name: visitor_request_accesses id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitor_request_accesses ALTER COLUMN id SET DEFAULT nextval('public.visitor_request_accesses_id_seq'::regclass);


--
-- TOC entry 4533 (class 2604 OID 21201)
-- Name: visitors id; Type: DEFAULT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitors ALTER COLUMN id SET DEFAULT nextval('public.visitors_id_seq'::regclass);


--
-- TOC entry 5125 (class 0 OID 20770)
-- Dependencies: 239
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
3	invoice_file	Invoice	3	5	2023-07-04 21:41:55.879167
4	invoice_file	Invoice	4	6	2023-07-04 21:42:10.947616
6	invoice_file	Invoice	6	9	2023-07-04 21:42:52.851599
\.


--
-- TOC entry 5123 (class 0 OID 20760)
-- Dependencies: 237
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
1	Dz3XTe8Vnn55LvGQL8rD2y1Z	32220235968825000189550010000546251934437262.xml	application/xml	{"identified":true}	7576	McjzHvRiSnu/qMxuetdfmA==	2023-07-04 21:34:38.312731
2	o1jVwjsfFEBnRYLXnhh5ST38	32220235968825000189550010000546251934437262.xml	application/xml	{"identified":true}	7576	McjzHvRiSnu/qMxuetdfmA==	2023-07-04 21:37:54.22783
3	tGejtkcBQhw2ZFC86imQRKRZ	32220235968825000189550010000546251934437262.xml	application/xml	{"identified":true}	7576	McjzHvRiSnu/qMxuetdfmA==	2023-07-04 21:41:18.65879
4	qivSo5d9pJ93CYZxLuyiMQcH	32220235968825000189550010000546251934437262.xml	application/xml	{"identified":true}	7576	McjzHvRiSnu/qMxuetdfmA==	2023-07-04 21:41:42.946364
5	yT7meZoGrNRnCbB7b8x1F5q2	32220235968825000189550010000546231615907925 (1).xml	application/xml	{"identified":true,"analyzed":true}	10449	ouSiXqRkzqlijnpUT+e9Wg==	2023-07-04 21:41:55.840673
6	E6jN5tq7tdpvkufcZnhdQ4sj	32220235968825000189550010000546241550667442.xml	application/xml	{"identified":true,"analyzed":true}	7943	x8sxIr7xA6KmxvJes1Ma4g==	2023-07-04 21:42:10.897957
7	XRJL3uRy8TewzCkyTpts8KHx	32220235968825000189550010000546261514781316.xml	application/xml	{"identified":true}	7577	qbT1DlLp2EHE13IFnOVyMw==	2023-07-04 21:42:25.701334
8	ELjXS1Y5yLcB4RsfJvqYY1ii	32220235968825000189550010000546231615907925 (2).xml	application/xml	{"identified":true}	10449	1Q1wHGSLJn0Y/NCfKLWXrw==	2023-07-04 21:42:39.987554
9	cSDYREHndx4anLAntEfoDcoA	32220235968825000189550010000546171326929450.xml	application/xml	{"identified":true,"analyzed":true}	11345	ZnZLZ0XFYmsIH/tgHKABNg==	2023-07-04 21:42:52.81704
\.


--
-- TOC entry 5101 (class 0 OID 20499)
-- Dependencies: 215
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-06-09 11:43:13.106974	2023-06-09 11:43:13.106974
\.


--
-- TOC entry 5157 (class 0 OID 21289)
-- Dependencies: 271
-- Data for Name: attendence_systems; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.attendence_systems (id, employee_id, entry_type, in_out_time, created_at, updated_at, latitude, longitude, image_url) FROM stdin;
\.


--
-- TOC entry 5161 (class 0 OID 21344)
-- Dependencies: 275
-- Data for Name: audit_employees; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.audit_employees (id, user_id, audit_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5163 (class 0 OID 21363)
-- Dependencies: 277
-- Data for Name: audit_products; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.audit_products (id, audit_id, product_id, created_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5159 (class 0 OID 21330)
-- Dependencies: 273
-- Data for Name: audits; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.audits (id, status, created_by, room_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5117 (class 0 OID 20648)
-- Dependencies: 231
-- Data for Name: base_module_functions; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.base_module_functions (id, function_title, function_description, base_module_id, is_active, is_deleted, created_at, updated_at) FROM stdin;
1	Add Roles	Add Roles	1	t	f	2023-07-04 00:33:22.271512	2023-07-04 00:33:22.271512
2	Add Employee	Add Employee	1	t	f	2023-07-04 00:33:23.30073	2023-07-04 00:33:23.30073
3	Add Rooms	Add Rooms	1	t	f	2023-07-04 00:33:24.421545	2023-07-04 00:33:24.421545
4	Add Class	Add Class	1	t	f	2023-07-04 00:33:25.451046	2023-07-04 00:33:25.451046
5	Add Products	Add Products	1	t	f	2023-07-04 00:33:26.675172	2023-07-04 00:33:26.675172
6	Registero de ponto (Attendance System)	Registero de ponto (Attendance System)	1	t	f	2023-07-04 00:33:27.655368	2023-07-04 00:33:27.655368
7	Add Invoices	Add Invoices	1	t	f	2023-07-04 00:33:28.92866	2023-07-04 00:33:28.92866
8	Add Services	Add Services	1	t	f	2023-07-04 00:33:29.918047	2023-07-04 00:33:29.918047
9	Add Vehicle Management	Add Vehicle Management	1	t	f	2023-07-04 00:33:30.959417	2023-07-04 00:33:30.959417
10	Receive	Receive	2	t	f	2023-07-04 00:33:32.409386	2023-07-04 00:33:32.409386
11	Load the Truck	Load the Truck	2	t	f	2023-07-04 00:33:33.643003	2023-07-04 00:33:33.643003
12	Driver - Helper	Driver - Helper	2	t	f	2023-07-04 00:33:34.52354	2023-07-04 00:33:34.52354
13	Schedular	Schedular	2	t	f	2023-07-04 00:33:35.888564	2023-07-04 00:33:35.888564
14	Superviser	Superviser	2	t	f	2023-07-04 00:33:36.925916	2023-07-04 00:33:36.925916
15	Tracker	Tracker	2	t	f	2023-07-04 00:33:37.937634	2023-07-04 00:33:37.937634
16	Room Incharge (Material)	Room Incharge	3	t	f	2023-07-04 00:33:39.726947	2023-07-04 00:33:39.726947
17	Normal Employee (Material)	Normal Employee	3	t	f	2023-07-04 00:33:40.804978	2023-07-04 00:33:40.804978
18	Room Incharge (Patrimonial)	Room Incharge	6	t	f	2023-07-04 00:33:42.445454	2023-07-04 00:33:42.445454
19	Normal Employee (Patrimonial)	Normal Employee	6	t	f	2023-07-04 00:33:43.46804	2023-07-04 00:33:43.46804
20	Security gate	Security gate	4	t	f	2023-07-04 00:33:44.902559	2023-07-04 00:33:44.902559
21	Normal User	Normal User	4	t	f	2023-07-04 00:33:46.028041	2023-07-04 00:33:46.028041
22	Traineer	Traineer	5	t	f	2023-07-04 00:33:47.770486	2023-07-04 00:33:47.770486
23	Scheduler	Scheduler	5	t	f	2023-07-04 00:33:49.082877	2023-07-04 00:33:49.082877
24	Add Training	Add Training	5	t	f	2023-07-04 00:33:50.293507	2023-07-04 00:33:50.293507
25	Add Training Approve	Add Training Approve	5	t	f	2023-07-04 00:33:51.180865	2023-07-04 00:33:51.180865
26	Check	Check	8	t	f	2023-07-04 00:33:52.58223	2023-07-04 00:33:52.58223
27	Inspection	Inspection	8	t	f	2023-07-04 00:33:53.610539	2023-07-04 00:33:53.610539
28	Maintenance	Maintenance	8	t	f	2023-07-04 00:33:54.731461	2023-07-04 00:33:54.731461
29	Schedule	Schedule	8	t	f	2023-07-04 00:33:55.855331	2023-07-04 00:33:55.855331
\.


--
-- TOC entry 5115 (class 0 OID 20624)
-- Dependencies: 229
-- Data for Name: base_modules; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.base_modules (id, module_title, module_description, is_active, is_deleted, created_at, updated_at) FROM stdin;
1	Admin Management	Admin Management	t	f	2023-07-04 00:33:12.978819	2023-07-04 00:33:12.978819
2	Courier Management	Courier Management	t	f	2023-07-04 00:33:13.887023	2023-07-04 00:33:13.887023
3	Material Management	Material Management	t	f	2023-07-04 00:33:14.794289	2023-07-04 00:33:14.794289
4	Access Control	Access Control	t	f	2023-07-04 00:33:15.618795	2023-07-04 00:33:15.618795
5	Training Management [Industrial Passport]	Training Management [Industrial Passport]	t	f	2023-07-04 00:33:16.447095	2023-07-04 00:33:16.447095
6	Patrimonial Management	Patrimonial Management	t	f	2023-07-04 00:33:17.662085	2023-07-04 00:33:17.662085
7	EPI	EPI	t	f	2023-07-04 00:33:18.788605	2023-07-04 00:33:18.788605
8	Maintenance Management	Maintenance Management	t	f	2023-07-04 00:33:19.707698	2023-07-04 00:33:19.707698
\.


--
-- TOC entry 5119 (class 0 OID 20681)
-- Dependencies: 233
-- Data for Name: class_lists; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.class_lists (id, class_title, description, company_id, questions, is_active, is_deleted, created_at, updated_at, created_by, updated_by) FROM stdin;
\.


--
-- TOC entry 5103 (class 0 OID 20507)
-- Dependencies: 217
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.companies (id, company_name, company_address, email, cnpj_number, contact_number, company_type, plan_expiry_date, pickup_availability_days, pickup_opening_hours, pickup_closing_hours, pickup_interval_time, delivery_availibility_days, delivery_opening_hours, delivery_closing_hours, delivery_interval_type, rtnc_number, pincode, stripe_card, stripe_token, payment_status, is_active, is_deleted, created_at, updated_at, image_url_array, moment_beginning_service, period_moment_end_service, accpeted_quantity_items, average_delivery_time_item, latitude, longtitude, corporate_name_customer, actual_address, period_types_vehicles) FROM stdin;
2	Entregamos	Ahemadabad	superadmin@gmail.com	145451	9574490405	1	\N	[1,1,1,1,1,1,0]	{ 9 : 30 }	{ 9 : 30 }	30 	[1,1,1,1,1,1,0]	{ 9 : 30 }	{ 9 : 30 }	30	444584	2124	\N	\N	f	f	f	2023-07-04 00:34:02.515211	2023-07-04 00:34:02.515211	\N	\N	\N	\N	\N	\N	\N	{}	\N	{}
3	ELETROSOLDA	Rua São Pedro, 1001, São Geraldo, Serra/ES	admin@eletrosolda.com.br	35968825000189	2721215656	3	\N	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N		\N	\N	\N	f	f	f	2023-07-04 02:17:35.68919	2023-07-04 02:17:35.68919	default.png	1688382000000	1688418000000	\N	\N	-20.2222176	-40.2693404	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	Rua São Pedro, 1001, São Geraldo, Serra/ES	{}
\.


--
-- TOC entry 5213 (class 0 OID 22012)
-- Dependencies: 327
-- Data for Name: compartments; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.compartments (id, identifier, length, width, height, distance_of_transport_unit, transport_unit_id, created_at, updated_at) FROM stdin;
1	1	6.50	5.50	7.50	6.99	1	2023-07-04 21:22:42.231188	2023-07-04 21:22:42.231188
2	1	6.50	5.50	7.50	6.99	2	2023-07-04 21:22:43.662174	2023-07-04 21:22:43.662174
3	1	0.00	0.00	0.00	6.99	3	2023-07-04 21:22:45.204169	2023-07-04 21:22:45.204169
4	1	12.00	2.50	3.00	0.00	4	2023-07-04 21:22:45.715014	2023-07-04 21:22:45.715014
5	1	0.00	0.00	0.00	0.00	5	2023-07-04 21:22:47.150486	2023-07-04 21:22:47.150486
6	1	11.00	2.50	3.00	0.00	6	2023-07-04 21:22:47.656101	2023-07-04 21:22:47.656101
7	1	11.00	2.50	3.00	5.50	7	2023-07-04 21:22:48.291753	2023-07-04 21:22:48.291753
\.


--
-- TOC entry 5189 (class 0 OID 21677)
-- Dependencies: 303
-- Data for Name: complaint_logs; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.complaint_logs (id, status, invoice_id, complaint_id, company_id, created_at, updated_at, respond_by_id) FROM stdin;
\.


--
-- TOC entry 5187 (class 0 OID 21637)
-- Dependencies: 301
-- Data for Name: complaints; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.complaints (id, user_id, company_id, status, order_id, requested_at, created_at, updated_at, truck_qr_code, invoice_id, type_missing) FROM stdin;
\.


--
-- TOC entry 5197 (class 0 OID 21781)
-- Dependencies: 311
-- Data for Name: courier_helpers; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.courier_helpers (id, driver_helper_created_by, user_id, company_id, helper_type, created_at, updated_at, vehicle_id, order_pass_id, status) FROM stdin;
\.


--
-- TOC entry 5205 (class 0 OID 21889)
-- Dependencies: 319
-- Data for Name: current_drivers; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.current_drivers (id, status, user_id, vehicle_id, created_at, updated_at, order_pass_id) FROM stdin;
\.


--
-- TOC entry 5183 (class 0 OID 21576)
-- Dependencies: 297
-- Data for Name: damage_packages; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.damage_packages (id, user_id, package_id, company_id, status, created_at, updated_at, invoice_id, complaint_id) FROM stdin;
\.


--
-- TOC entry 5201 (class 0 OID 21848)
-- Dependencies: 315
-- Data for Name: driver_histories; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.driver_histories (id, status, vehicle_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5209 (class 0 OID 21957)
-- Dependencies: 323
-- Data for Name: employee_trainings; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.employee_trainings (id, training_id, employee_id, created_at, updated_at, status, admin_comments, approved_by) FROM stdin;
\.


--
-- TOC entry 5135 (class 0 OID 20988)
-- Dependencies: 249
-- Data for Name: employee_user_functions; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.employee_user_functions (id, user_id, base_module_function_id, created_at, updated_at, base_module_id) FROM stdin;
1	4	16	2023-07-27 00:17:44.569169	2023-07-27 00:17:44.569169	3
2	5	26	2023-07-27 00:23:16.428198	2023-07-27 00:23:16.428198	8
3	5	27	2023-07-27 00:23:16.441851	2023-07-27 00:23:16.441851	8
4	5	28	2023-07-27 00:23:16.493661	2023-07-27 00:23:16.493661	8
5	5	29	2023-07-27 00:23:16.510593	2023-07-27 00:23:16.510593	8
6	5	18	2023-07-27 00:23:16.519187	2023-07-27 00:23:16.519187	6
7	5	19	2023-07-27 00:23:16.595343	2023-07-27 00:23:16.595343	6
8	5	22	2023-07-27 00:23:16.61559	2023-07-27 00:23:16.61559	5
9	5	23	2023-07-27 00:23:16.693427	2023-07-27 00:23:16.693427	5
10	5	24	2023-07-27 00:23:16.701674	2023-07-27 00:23:16.701674	5
11	5	25	2023-07-27 00:23:16.711667	2023-07-27 00:23:16.711667	5
12	5	20	2023-07-27 00:23:16.796373	2023-07-27 00:23:16.796373	4
13	5	21	2023-07-27 00:23:16.885341	2023-07-27 00:23:16.885341	4
14	5	16	2023-07-27 00:23:16.905318	2023-07-27 00:23:16.905318	3
15	5	17	2023-07-27 00:23:16.995588	2023-07-27 00:23:16.995588	3
16	5	10	2023-07-27 00:23:17.085336	2023-07-27 00:23:17.085336	2
17	5	11	2023-07-27 00:23:17.105241	2023-07-27 00:23:17.105241	2
18	5	12	2023-07-27 00:23:17.200274	2023-07-27 00:23:17.200274	2
19	5	13	2023-07-27 00:23:17.285317	2023-07-27 00:23:17.285317	2
20	5	14	2023-07-27 00:23:17.295597	2023-07-27 00:23:17.295597	2
21	5	15	2023-07-27 00:23:17.304817	2023-07-27 00:23:17.304817	2
22	5	1	2023-07-27 00:23:17.314425	2023-07-27 00:23:17.314425	1
23	5	2	2023-07-27 00:23:17.324515	2023-07-27 00:23:17.324515	1
24	5	3	2023-07-27 00:23:17.333912	2023-07-27 00:23:17.333912	1
25	5	4	2023-07-27 00:23:17.342764	2023-07-27 00:23:17.342764	1
26	5	5	2023-07-27 00:23:17.351302	2023-07-27 00:23:17.351302	1
27	5	6	2023-07-27 00:23:17.359542	2023-07-27 00:23:17.359542	1
28	5	7	2023-07-27 00:23:17.368474	2023-07-27 00:23:17.368474	1
29	5	8	2023-07-27 00:23:17.377344	2023-07-27 00:23:17.377344	1
30	5	9	2023-07-27 00:23:17.394758	2023-07-27 00:23:17.394758	1
32	7	26	2023-08-17 14:37:45.533869	2023-08-17 14:37:45.533869	8
33	7	27	2023-08-17 14:37:45.547655	2023-08-17 14:37:45.547655	8
34	7	28	2023-08-17 14:37:45.588042	2023-08-17 14:37:45.588042	8
35	7	29	2023-08-17 14:37:45.597647	2023-08-17 14:37:45.597647	8
36	7	18	2023-08-17 14:37:45.607617	2023-08-17 14:37:45.607617	6
37	7	19	2023-08-17 14:37:45.616004	2023-08-17 14:37:45.616004	6
38	7	22	2023-08-17 14:37:45.685055	2023-08-17 14:37:45.685055	5
39	7	23	2023-08-17 14:37:45.694208	2023-08-17 14:37:45.694208	5
40	7	24	2023-08-17 14:37:45.705134	2023-08-17 14:37:45.705134	5
41	7	25	2023-08-17 14:37:45.712998	2023-08-17 14:37:45.712998	5
42	7	20	2023-08-17 14:37:45.722103	2023-08-17 14:37:45.722103	4
43	7	21	2023-08-17 14:37:45.796253	2023-08-17 14:37:45.796253	4
44	7	16	2023-08-17 14:37:45.80409	2023-08-17 14:37:45.80409	3
45	7	17	2023-08-17 14:37:45.886577	2023-08-17 14:37:45.886577	3
46	7	10	2023-08-17 14:37:45.905116	2023-08-17 14:37:45.905116	2
47	7	11	2023-08-17 14:37:45.988865	2023-08-17 14:37:45.988865	2
48	7	12	2023-08-17 14:37:46.006756	2023-08-17 14:37:46.006756	2
49	7	13	2023-08-17 14:37:46.089113	2023-08-17 14:37:46.089113	2
50	7	15	2023-08-17 14:37:46.099892	2023-08-17 14:37:46.099892	2
51	7	14	2023-08-17 14:37:46.110817	2023-08-17 14:37:46.110817	2
52	7	2	2023-08-17 14:37:46.192853	2023-08-17 14:37:46.192853	1
53	7	1	2023-08-17 14:37:46.20798	2023-08-17 14:37:46.20798	1
54	7	3	2023-08-17 14:37:46.288979	2023-08-17 14:37:46.288979	1
55	7	9	2023-08-17 14:37:46.301554	2023-08-17 14:37:46.301554	1
56	7	8	2023-08-17 14:37:46.386605	2023-08-17 14:37:46.386605	1
57	7	7	2023-08-17 14:37:46.399275	2023-08-17 14:37:46.399275	1
58	7	6	2023-08-17 14:37:46.410246	2023-08-17 14:37:46.410246	1
59	7	5	2023-08-17 14:37:46.439808	2023-08-17 14:37:46.439808	1
60	7	4	2023-08-17 14:37:46.485758	2023-08-17 14:37:46.485758	1
78	9	16	2023-08-31 22:18:22.001034	2023-08-31 22:18:22.001034	3
82	8	16	2023-09-30 13:02:01.618105	2023-09-30 13:02:01.618105	3
\.


--
-- TOC entry 5111 (class 0 OID 20565)
-- Dependencies: 225
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.employees (id, employee_name, employee_id, email, contact_number, training_completed, workdays, company_id, is_outsource_employee, out_source_cnpj_number, is_active, user_id, role_id, created_at, updated_at, qr_code, qrcode_url, country_code, out_source_employeer_name, passcode, is_passcode_available, reset_passcode_token, devise_token, device_type, is_passcode_enable, is_biometric_enable, is_passcode_verified, buffer_time, work_start_time, work_end_time, quick_block_id) FROM stdin;
1	JOSE	2_A1	jrbrittes@gmail.com	27997929767	\N	[1, 1, 1, 1, 1, 1, 1]	2	f	null	t	4	12	2023-07-27 00:17:44.481667	2023-07-27 00:17:44.507479	ENTGRAGAMOUS_E_1	\N	55	null	\N	f	\N	\N	\N	f	f	f	60	2023-07-27 11:00:00	2023-07-27 02:00:00	\N
2	João	2_A2	joao@gmail.com	28283922323	\N	[1, 1, 1, 1, 1, 1, 1]	2	f	null	t	5	12	2023-07-27 00:23:16.371729	2023-07-27 00:23:16.389925	ENTGRAGAMOUS_E_2	\N	55	null	\N	f	\N	\N	\N	f	f	f	60	2023-07-27 11:00:00	2023-07-27 02:00:00	\N
4	VICTOR DANTAS DE CASTRO	2_A4	logistica@eletrosolda.com.br	27992410082	\N	[0, 1, 1, 1, 1, 1, 0]	2	f	null	t	7	12	2023-08-17 14:37:45.5014	2023-08-17 14:37:45.512805	ENTGRAGAMOUS_E_4	\N	55	null	\N	f	\N	\N	\N	f	f	f	15	2023-08-17 11:00:00	2023-08-17 20:48:00	\N
6	ELIEL MONTARROYOS MARIA	2_A6	estoque@eletrosolda.com.br	02721215656	\N	[0, 1, 1, 1, 1, 1, 0]	2	f	null	t	9	14	2023-08-31 14:04:42.223763	2023-08-31 22:18:22.092814	ENTGRAGAMOUS_E_6	\N	+55	null	\N	f	\N	\N	\N	f	f	f	15	1970-01-01 00:00:00	1970-01-01 00:00:00	\N
5	Gabriel M. Barboza	3_A5	gabrielmbarboza@gmail.com	27997763258	\N	[0, 1, 1, 1, 1, 1, 0]	3	f	null	t	8	12	2023-08-20 21:52:27.665578	2023-09-30 12:58:05.796824	ENTGRAGAMOUS_E_5	\N	+55	null	\N	f	\N	\N	\N	f	f	f	120	2023-09-30 12:00:00	2023-09-30 21:00:00	\N
\.


--
-- TOC entry 5153 (class 0 OID 21219)
-- Dependencies: 267
-- Data for Name: gadgets; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.gadgets (id, gadget_type, serial_number, visitor_id, created_at, updated_at, model_number, request_access_id) FROM stdin;
\.


--
-- TOC entry 5219 (class 0 OID 22058)
-- Dependencies: 333
-- Data for Name: gate_access_entries; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.gate_access_entries (id, company_id, employee_id, security_id, access_status, scan_date_time, deny_reason, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5217 (class 0 OID 22035)
-- Dependencies: 331
-- Data for Name: grouped_orders; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.grouped_orders (id, order_group_id, order_id, created_at, updated_at) FROM stdin;
2	2	1	2023-07-05 22:01:30.598047	2023-07-05 22:01:30.598047
\.


--
-- TOC entry 5143 (class 0 OID 21091)
-- Dependencies: 257
-- Data for Name: inspection_helpers; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.inspection_helpers (id, user_id, inspection_id, is_active, is_deleted, created_at, updated_at, maintainance_id, id_type) FROM stdin;
\.


--
-- TOC entry 5137 (class 0 OID 21019)
-- Dependencies: 251
-- Data for Name: inspections; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.inspections (id, product_id, requested_by, added_by_date, added_by, status, is_active, is_deleted, created_at, updated_at, assign_to, schedule_start_dtm, schedule_end_dtm, question_answer, image_url, urgency_rate, inspection_complete_dtm, maintainance_required, comment_schedular, comment_inspector, comment_checker, is_direct_schedule, is_direct_submit, is_product_inspection, inspectable_type, inspectable_id, execution_start_time) FROM stdin;
\.


--
-- TOC entry 5171 (class 0 OID 21429)
-- Dependencies: 285
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.invoices (id, invoice_number, seller_company_cnpj, seller_company_name, seller_company_address, seller_company_nro, "seller_company_xCpl", seller_company_neighborhood, "seller_company_cMun", seller_company_city, seller_company_state, "seller_company_CEP", receiver_company_cnpj, receiver_company_name, receiver_company_address, receiver_company_nro, receiver_company_neighborhood, "receiver_company_cMun", receiver_company_city, receiver_company_state, "receiver_company_CEP", shipping_company_name, shipping_company_cnpj, "shipping_company_xEnder", shipping_company_city, shipping_company_state, package_volume, "package_pesoL", "package_pesoB", "chNFe", outsource_shipping_company_name, outsource_shipping_company_cnpj_number, created_at, updated_at, company_id, is_outsource_shipping_company, tag_type, status, seller_company_present_in_db, receiver_company_present_in_db, shipping_company_present_in_db, seller_company_id, receiver_company_id, shipping_company_id, user_id, order_id, outsource_shipping_company_present_in_db, outsource_shipping_company_id, seller_company_full_address, seller_company_latitude, seller_company_longtitude, shipping_company_full_address, shipping_company_latitude, shipping_company_longtitude, receiver_company_full_address, receiver_company_latitude, receiver_company_longtitude, invoice_data, outsource_shipping_company_full_address) FROM stdin;
6	54617	35968825000189	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	RUA SAO PEDRO	\N	ANDAR 1	CENTRO EMPRESARIAL	3205002	SERRA	ES	29163391	01191207000153	CONMEC INDUSTRIAL LTDA	RUA ARNOBIO PIMENTEL	160	CENTRO EMPRESARIAL	3200607	ARACRUZ	ES	29192505	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	35968825000189	RUA SAO PEDRO N. 1001 ANDAR: 1	SERRA	ES	1	3.400	3.545	32220235968825000189550010000546171326929450	\N	\N	2023-07-04 21:42:52.847876	2023-07-04 21:43:42.920635	3	f	1	4	t	f	t	3	\N	3	3	1	\N	\N	RUA SAO PEDRO ANDAR 1 SAO GERALDO SERRA ES	-20.221857	-40.2692989	RUA SAO PEDRO N. 1001 ANDAR: 1 SERRA ES	-20.1273674	-40.18449529999999	RUA ARNOBIO PIMENTEL CENTRO EMPRESARIAL ARACRUZ ES	-19.841537	-40.2637491	{"nfeProc"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "versao"=>"4.00", "NFe"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "infNFe"=>{"Id"=>"NFe32220235968825000189550010000546171326929450", "versao"=>"4.00", "ide"=>{"cUF"=>"32", "cNF"=>"32692945", "natOp"=>"VENDA DE MERCADORIA AD. REC TE", "mod"=>"55", "serie"=>"1", "nNF"=>"54617", "dhEmi"=>"2022-02-22T08:27:45-03:00", "dhSaiEnt"=>"2022-02-22T08:28:33-03:00", "tpNF"=>"1", "idDest"=>"1", "cMunFG"=>"3205002", "tpImp"=>"1", "tpEmis"=>"1", "cDV"=>"0", "tpAmb"=>"1", "finNFe"=>"1", "indFinal"=>"0", "indPres"=>"0", "procEmi"=>"0", "verProc"=>"4.9b243"}, "emit"=>{"CNPJ"=>"35968825000189", "xNome"=>"ELETROSOLDA LOGISTICA E IMPORTACAO LTDA", "xFant"=>"ELETROSOLDA", "enderEmit"=>{"xLgr"=>"RUA SAO PEDRO", "nro"=>"1001", "xCpl"=>"ANDAR 1", "xBairro"=>"SAO GERALDO", "cMun"=>"3205002", "xMun"=>"SERRA", "UF"=>"ES", "CEP"=>"29163391", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"002721215656"}, "IE"=>"081395434", "CRT"=>"3"}, "dest"=>{"CNPJ"=>"01191207000153", "xNome"=>"CONMEC INDUSTRIAL LTDA", "enderDest"=>{"xLgr"=>"RUA ARNOBIO PIMENTEL", "nro"=>"160", "xBairro"=>"CENTRO EMPRESARIAL", "cMun"=>"3200607", "xMun"=>"ARACRUZ", "UF"=>"ES", "CEP"=>"29192505", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"552732707100"}, "indIEDest"=>"1", "IE"=>"081865198", "email"=>"nfs@conmec.com.br"}, "det"=>[{"nItem"=>"1", "prod"=>{"cProd"=>"9413", "cEAN"=>"SEM GTIN", "xProd"=>"BICO DE CORTE 1502-08 HARRIS 630200011", "NCM"=>"84689010", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"5", "vUnCom"=>"37.09", "vProd"=>"185.45", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"5", "vUnTrib"=>"37.09", "indTot"=>"1", "xPed"=>"1784"}, "imposto"=>{"vTotTrib"=>"19.27", "ICMS"=>{"ICMS20"=>{"orig"=>"2", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"76.37", "pICMS"=>"17.00", "vICMS"=>"12.98"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"172.47", "pPIS"=>"0.6500", "vPIS"=>"1.12"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"172.47", "pCOFINS"=>"3.0000", "vCOFINS"=>"5.17"}}}}, {"nItem"=>"2", "prod"=>{"cProd"=>"4666", "cEAN"=>"SEM GTIN", "xProd"=>"BICO DE CORTE 1502-12 HARRIS 630200073", "NCM"=>"84689010", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"5", "vUnCom"=>"37.09", "vProd"=>"185.45", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"5", "vUnTrib"=>"37.09", "indTot"=>"1", "xPed"=>"1784"}, "imposto"=>{"vTotTrib"=>"19.27", "ICMS"=>{"ICMS20"=>{"orig"=>"2", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"76.37", "pICMS"=>"17.00", "vICMS"=>"12.98"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"172.47", "pPIS"=>"0.6500", "vPIS"=>"1.12"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"172.47", "pCOFINS"=>"3.0000", "vCOFINS"=>"5.17"}}}}, {"nItem"=>"3", "prod"=>{"cProd"=>"10092", "cEAN"=>"7898640601243", "xProd"=>"BOCAL CERAMICO 10N47 N. 07 11MM HYPERWELD", "NCM"=>"85159000", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"30", "vUnCom"=>"2.14", "vProd"=>"64.20", "cEANTrib"=>"7898640601243", "uTrib"=>"PC", "qTrib"=>"30", "vUnTrib"=>"2.14", "indTot"=>"1", "xPed"=>"1784"}, "imposto"=>{"vTotTrib"=>"6.67", "ICMS"=>{"ICMS20"=>{"orig"=>"2", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"26.44", "pICMS"=>"17.00", "vICMS"=>"4.49"}}, "IPI"=>{"cEnq"=>"999", "IPINT"=>{"CST"=>"51"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"59.71", "pPIS"=>"0.6500", "vPIS"=>"0.39"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"59.71", "pCOFINS"=>"3.0000", "vCOFINS"=>"1.79"}}}}, {"nItem"=>"4", "prod"=>{"cProd"=>"9780", "cEAN"=>"7891345372920", "xProd"=>"LIXA FLAP DISCS 115X22 G.80 CLASSIC NORTON", "NCM"=>"68053090", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"20", "vUnCom"=>"5.29", "vProd"=>"105.80", "cEANTrib"=>"7891345372920", "uTrib"=>"PC", "qTrib"=>"20", "vUnTrib"=>"5.29", "indTot"=>"1", "xPed"=>"1784"}, "imposto"=>{"vTotTrib"=>"11.00", "ICMS"=>{"ICMS20"=>{"orig"=>"0", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"43.57", "pICMS"=>"17.00", "vICMS"=>"7.41"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"98.39", "pPIS"=>"0.6500", "vPIS"=>"0.64"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"98.39", "pCOFINS"=>"3.0000", "vCOFINS"=>"2.95"}}}}, {"nItem"=>"5", "prod"=>{"cProd"=>"8990", "cEAN"=>"SEM GTIN", "xProd"=>"PEDRA COM SUPORTE PARA CENTELHADOR TIPO CONCHA", "NCM"=>"84689090", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"25", "vUnCom"=>"0.98", "vProd"=>"24.50", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"25", "vUnTrib"=>"0.98", "indTot"=>"1", "xPed"=>"1784"}, "imposto"=>{"vTotTrib"=>"2.55", "ICMS"=>{"ICMS20"=>{"orig"=>"2", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"10.09", "pICMS"=>"17.00", "vICMS"=>"1.72"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"22.78", "pPIS"=>"0.6500", "vPIS"=>"0.15"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"22.78", "pCOFINS"=>"3.0000", "vCOFINS"=>"0.68"}}}}], "total"=>{"ICMSTot"=>{"vBC"=>"232.84", "vICMS"=>"39.58", "vICMSDeson"=>"0.00", "vFCP"=>"0.00", "vBCST"=>"0.00", "vST"=>"0.00", "vFCPST"=>"0.00", "vFCPSTRet"=>"0.00", "vProd"=>"565.40", "vFrete"=>"0.00", "vSeg"=>"0.00", "vDesc"=>"0.00", "vII"=>"0.00", "vIPI"=>"0.00", "vIPIDevol"=>"0.00", "vPIS"=>"3.42", "vCOFINS"=>"15.76", "vOutro"=>"0.00", "vNF"=>"565.40", "vTotTrib"=>"58.76"}}, "transp"=>{"modFrete"=>"0", "transporta"=>{"CNPJ"=>"35968825000189", "xNome"=>"ELETROSOLDA LOGISTICA E IMPORTACAO LTDA", "IE"=>"081395434", "xEnder"=>"RUA SAO PEDRO N. 1001 ANDAR: 1", "xMun"=>"SERRA", "UF"=>"ES"}, "vol"=>{"qVol"=>"1", "pesoL"=>"3.400", "pesoB"=>"3.545"}}, "cobr"=>{"fat"=>{"nFat"=>"54617", "vOrig"=>"565.40", "vDesc"=>"0.00", "vLiq"=>"565.40"}, "dup"=>{"nDup"=>"001", "dVenc"=>"2022-03-22", "vDup"=>"565.40"}}, "pag"=>{"detPag"=>{"indPag"=>"1", "tPag"=>"15", "vPag"=>"565.40"}}, "infAdic"=>{"infAdFisco"=>"REDUCAO DA BASE DE CALCULO CONF. ARTIGO 534-Z-Z-A DO DECRETO 1090R DE 25/10/02 RICMS/ES", "infCpl"=>"| | End.entrega: RUA ARNOBIO PIMENTEL, 160 - BAIRRO: CENTRO EMPRESARIAL - ARACRUZ/ES CEP: 29192-505 | | Pedido: 1784 | O.Carga: 0 |"}, "compra"=>{"xPed"=>"1784"}, "infRespTec"=>{"CNPJ"=>"26314062000161", "xContato"=>"Fabio Tulio Felippe", "email"=>"marketing@sankhya.com.br", "fone"=>"3432390700"}}, "Signature"=>{"xmlns"=>"http://www.w3.org/2000/09/xmldsig#", "SignedInfo"=>{"CanonicalizationMethod"=>{"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}, "SignatureMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#rsa-sha1"}, "Reference"=>{"URI"=>"#NFe32220235968825000189550010000546171326929450", "Transforms"=>{"Transform"=>[{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#enveloped-signature"}, {"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}]}, "DigestMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#sha1"}, "DigestValue"=>"pdCMsQ5km6sEg2xytkqjFa4IlB4="}}, "SignatureValue"=>"SvbDAziNs2YR5Qh8dJO3Ly0i2ET0lsXLuNTamWlzHUOWTgdSjQW2g+qBoDAfCLX0QzH10gQvIkHwHV+KlnMYtS3Q+AcY10od+VHjHprZ2sOsj0pVZdVtNmXzE1VIK0uKdd1RTwcxgUDTgcVVcLZ1AfJW0ezXhg/6+OtQEwHu7ymBRCuZT0/g79ioSqSJv5wOOghXhUwnqTVq1j5NgrIOV50S9uT3Zmc/SGOY3czc3b8Hlwje+87oEY3SlVAEz1lf7Hi7yB6PSw1BtQpwb9Xk0kNqCP/86rzNRBfRUOcG+vWPM2daafC6aOfLEVbofUqqs311RlVzPW0i1j62Di3tzw==", "KeyInfo"=>{"X509Data"=>{"X509Certificate"=>"MIIHfDCCBWSgAwIBAgIMW2nH2LELzc8DmbvgMA0GCSqGSIb3DQEBCwUAMIGJMQswCQYDVQQGEwJCUjETMBEGA1UECgwKSUNQLUJyYXNpbDE2MDQGA1UECwwtU2VjcmV0YXJpYSBkYSBSZWNlaXRhIEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMS0wKwYDVQQDDCRBdXRvcmlkYWRlIENlcnRpZmljYWRvcmEgU0VSUFJPUkZCdjUwHhcNMjExMTI2MTMxNjIyWhcNMjIxMTI2MTMxNjIyWjCCARMxCzAJBgNVBAYTAkJSMQswCQYDVQQIDAJFUzEOMAwGA1UEBwwFU0VSUkExEzARBgNVBAoMCklDUC1CcmFzaWwxEzARBgNVBAsMCnByZXNlbmNpYWwxFzAVBgNVBAsMDjM0MDI4MzE2MDAwMTAzMTYwNAYDVQQLDC1TZWNyZXRhcmlhIGRhIFJlY2VpdGEgRmVkZXJhbCBkbyBCcmFzaWwgLSBSRkIxEzARBgNVBAsMCkFSQ09SUkVJT1MxFjAUBgNVBAsMDVJGQiBlLUNOUEogQTExPzA9BgNVBAMMNkVMRVRST1NPTERBIExPR0lTVElDQSBFIElNUE9SVEFDQU8gTFREQTozNTk2ODgyNTAwMDE4OTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKT8qpqQG4u/VCcqk1MbpjBaLZ1ysWwBSSZdyOdDIU0mcQqkSZYiZ9+/YoSSZFP1SbFUrllS+vL7jzWgDC+R1NGyd7pKxcwYMVkyAfvM3L2uJ8iIv5XCMVnxy4miOf7oq787jrlUbi6j0t1zy0FARWCH6PXY34k3JmkxDJqtxnSmrHbcw3e/q72f1+PRnNPvKuxYxjHPYerMHSlgtdD5rK4nTxdvc4dJsJBWZL3lw8EpDQUN7MLr5Vu4FxmOWP8zG9XsQvTLrhhWoNP4f6Z8Ni12tPWdvQJNFmkbbyrR3DRVNSpDE1AnLs6JiD10GkJ+jiJsEWUsWIvW1I/1kWhtb2sCAwEAAaOCAlUwggJRMB8GA1UdIwQYMBaAFBSALZ1+mkXA8Vs/GdVAsG8vZeDpMIGIBgNVHR8EgYAwfjA8oDqgOIY2aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvbGNyL2Fjc2VycHJvcmZidjUuY3JsMD6gPKA6hjhodHRwOi8vY2VydGlmaWNhZG9zMi5zZXJwcm8uZ292LmJyL2xjci9hY3NlcnByb3JmYnY1LmNybDBWBggrBgEFBQcBAQRKMEgwRgYIKwYBBQUHMAKGOmh0dHA6Ly9yZXBvc2l0b3Jpby5zZXJwcm8uZ292LmJyL2NhZGVpYXMvYWNzZXJwcm9yZmJ2NS5wN2Iwgb4GA1UdEQSBtjCBs6A4BgVgTAEDBKAvBC0xOTAzMTk2Nzg2MzY0Nzc0NzY4MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDCgKAYFYEwBAwKgHwQdQ0FSTE9TIEpPU0UgRE9NSU5HVUVTIE5PUk9OSEGgGQYFYEwBAwOgEAQOMzU5Njg4MjUwMDAxODmgFwYFYEwBAwegDgQMMDAwMDAwMDAwMDAwgRlmaXNjYWxAZWxldHJvc29sZGEuY29tLmJyMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDBAYIKwYBBQUHAwIwWwYDVR0gBFQwUjBQBgZgTAECAQowRjBEBggrBgEFBQcCARY4aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvZG9jcy9kcGNhY3NlcnByb3JmYi5wZGYwDQYJKoZIhvcNAQELBQADggIBACgourtuidYbF6caBAmVbCq5uA/HdGbkPlHnDKNXBxITbJdDzUScD5BCCiNFTh2bHR94NrxuYWGCsrrsMO+dNCDh2JNdUaOZHyte46GbAKuA9mYknL8KdQO5F2bUWjbJWVPhd/YF3uex4FSQDZbWZnSJS8QkgDaMijj0UiO4ziCLklAYxEa0B4PeVx0Hw6qMhX1LE5awGd8a/rLZj56xSMirGTV24cbbnhPx/Y0JXqa+hJPdKOSB+Sgxzj/5okDVDY5c2YTI1aoyPnQPxis+pVZ4DZVBexyIfsljAliADj2uuIDqqgP9CiqA+1zTuAgzRkZcpZKiAEoAQfz+jFPlnEPFpR/naQZYQ6U8XeNuj5FUkvdkbpZ98bnNAaYGKAULz2NdExf6IuUoKlv049LshEG7B3TNSNqdYAxEffMSOrfqdDbuMhuvlooW8C8dUmcu4uuFB9pAJ9Q4S8rf8cbxCEQmBa9eAAGJOrx1XC3CQuy2KjFPAylv741kzVKhHpBGcF4nkxxJlxZyHFtwZMPEMjircUWxsKUjBGoUksOARnhf1LKhdS2dMCbFPQrAd/1Yy1dxVrtl1kY5zc6KlLYe4CkqYzhyBY7tCWjmfu4XxbJh5UiQhA+gQnx/owMayojxT4IC/BgLQXKyLP8Yc0tcQ9hXHPnbH6hfyBIQqDmEBb4C"}}}}, "protNFe"=>{"versao"=>"4.00", "infProt"=>{"tpAmb"=>"1", "verAplic"=>"SVRS202202101007", "chNFe"=>"32220235968825000189550010000546171326929450", "dhRecbto"=>"2022-02-22T08:27:47-03:00", "nProt"=>"332220013774149", "digVal"=>"pdCMsQ5km6sEg2xytkqjFa4IlB4=", "cStat"=>"100", "xMotivo"=>"Autorizado o uso da NF-e"}}}}	\N
4	54624	35968825000189	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	RUA SAO PEDRO	\N	ANDAR 1	SEDE	3205002	SERRA	ES	29163391	16404287001399	SUZANO S.A.	Rod BR-101 KM 945,4+7KM	S/N	SEDE	2922003	MUCURI	BA	45930000	TRANSPORTES DELLA VOLPE S A COMERCIO E INDUSTRIA	61139432004402	R IDALINO CARVALHO N. 2 ARMZ 2 MODULOS 1. 2 E 3	VIANA	ES	1	0.434	0.436	32220235968825000189550010000546241550667442	\N	\N	2023-07-04 21:42:10.94251	2023-07-04 21:42:10.951271	3	f	1	0	t	f	f	3	\N	\N	3	\N	\N	\N	RUA SAO PEDRO ANDAR 1 SAO GERALDO SERRA ES	-20.221857	-40.2692989	R IDALINO CARVALHO N. 2 ARMZ 2 MODULOS 1. 2 E 3 VIANA ES	-20.3668666	-40.421581	Rod BR-101 KM 945,4+7KM SEDE MUCURI BA	-14.7746373	-39.2882471	{"nfeProc"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "versao"=>"4.00", "NFe"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "infNFe"=>{"Id"=>"NFe32220235968825000189550010000546241550667442", "versao"=>"4.00", "ide"=>{"cUF"=>"32", "cNF"=>"55066744", "natOp"=>"VENDA DE MERCADORIA AD. REC TE", "mod"=>"55", "serie"=>"1", "nNF"=>"54624", "dhEmi"=>"2022-02-22T14:48:17-03:00", "dhSaiEnt"=>"2022-02-22T14:49:04-03:00", "tpNF"=>"1", "idDest"=>"2", "cMunFG"=>"3205002", "tpImp"=>"1", "tpEmis"=>"1", "cDV"=>"2", "tpAmb"=>"1", "finNFe"=>"1", "indFinal"=>"0", "indPres"=>"0", "procEmi"=>"0", "verProc"=>"4.9b243"}, "emit"=>{"CNPJ"=>"35968825000189", "xNome"=>"ELETROSOLDA LOGISTICA E IMPORTACAO LTDA", "xFant"=>"ELETROSOLDA", "enderEmit"=>{"xLgr"=>"RUA SAO PEDRO", "nro"=>"1001", "xCpl"=>"ANDAR 1", "xBairro"=>"SAO GERALDO", "cMun"=>"3205002", "xMun"=>"SERRA", "UF"=>"ES", "CEP"=>"29163391", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"002721215656"}, "IE"=>"081395434", "CRT"=>"3"}, "dest"=>{"CNPJ"=>"16404287001399", "xNome"=>"SUZANO S.A.", "enderDest"=>{"xLgr"=>"Rod BR-101 KM 945,4+7KM", "nro"=>"S/N", "xCpl"=>"A ESQ. DA FABRICA", "xBairro"=>"SEDE", "cMun"=>"2922003", "xMun"=>"MUCURI", "UF"=>"BA", "CEP"=>"45930000", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"551136365797"}, "indIEDest"=>"1", "IE"=>"028274430", "email"=>"nfe@suzano.com.br"}, "det"=>{"nItem"=>"1", "prod"=>{"cProd"=>"11908", "cEAN"=>"7898161066132", "xProd"=>"PORTA ELETRODO 400 AMP A-400 CARBOGRAFITE 010229710", "NCM"=>"85159000", "cBenef"=>nil, "CFOP"=>"6102", "uCom"=>"PC", "qCom"=>"1", "vUnCom"=>"58.8523", "vProd"=>"58.85", "cEANTrib"=>"7898161066132", "uTrib"=>"PC", "qTrib"=>"1", "vUnTrib"=>"58.8523", "indTot"=>"1", "xPed"=>"4501505413", "nItemPed"=>"00001"}, "imposto"=>{"vTotTrib"=>"8.95", "ICMS"=>{"ICMS00"=>{"orig"=>"0", "CST"=>"00", "modBC"=>"3", "vBC"=>"58.85", "pICMS"=>"12.00", "vICMS"=>"7.06"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"51.79", "pPIS"=>"0.6500", "vPIS"=>"0.34"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"51.79", "pCOFINS"=>"3.0000", "vCOFINS"=>"1.55"}}}, "infAdProd"=>"00001 | 335818"}, "total"=>{"ICMSTot"=>{"vBC"=>"58.85", "vICMS"=>"7.06", "vICMSDeson"=>"0.00", "vFCP"=>"0.00", "vBCST"=>"0.00", "vST"=>"0.00", "vFCPST"=>"0.00", "vFCPSTRet"=>"0.00", "vProd"=>"58.85", "vFrete"=>"0.00", "vSeg"=>"0.00", "vDesc"=>"0.00", "vII"=>"0.00", "vIPI"=>"0.00", "vIPIDevol"=>"0.00", "vPIS"=>"0.34", "vCOFINS"=>"1.55", "vOutro"=>"0.00", "vNF"=>"58.85", "vTotTrib"=>"8.95"}}, "transp"=>{"modFrete"=>"1", "transporta"=>{"CNPJ"=>"61139432004402", "xNome"=>"TRANSPORTES DELLA VOLPE S A COMERCIO E INDUSTRIA", "IE"=>"081010664", "xEnder"=>"R IDALINO CARVALHO N. 2 ARMZ 2 MODULOS 1. 2 E 3", "xMun"=>"VIANA", "UF"=>"ES"}, "vol"=>{"qVol"=>"1", "pesoL"=>"0.434", "pesoB"=>"0.436"}}, "cobr"=>{"fat"=>{"nFat"=>"54624", "vOrig"=>"58.85", "vDesc"=>"0.00", "vLiq"=>"58.85"}, "dup"=>{"nDup"=>"001", "dVenc"=>"2022-06-01", "vDup"=>"58.85"}}, "pag"=>{"detPag"=>{"indPag"=>"1", "tPag"=>"99", "xPag"=>"Outros", "vPag"=>"58.85"}}, "infAdic"=>{"infCpl"=>"\\"mercadoria sujeita a redespacho atraves da Transportes Della Volpe S.A Comercio e Industria\\" | | | End.entrega: Rod BR-101 KM 945,4+7KM, S/N A ESQ. DA FABRICA - BAIRRO: VILA SEDENHO - MUCURI/BA CEP: 45930-000 | | Pedido: 4501505413 | O.Carga: 0 |"}, "compra"=>{"xPed"=>"4501505413"}, "infRespTec"=>{"CNPJ"=>"26314062000161", "xContato"=>"Fabio Tulio Felippe", "email"=>"marketing@sankhya.com.br", "fone"=>"3432390700"}}, "Signature"=>{"xmlns"=>"http://www.w3.org/2000/09/xmldsig#", "SignedInfo"=>{"CanonicalizationMethod"=>{"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}, "SignatureMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#rsa-sha1"}, "Reference"=>{"URI"=>"#NFe32220235968825000189550010000546241550667442", "Transforms"=>{"Transform"=>[{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#enveloped-signature"}, {"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}]}, "DigestMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#sha1"}, "DigestValue"=>"6RErDnUsLs15t+pV38cZ0mf6+cg="}}, "SignatureValue"=>"C9lujHI8AZIyqxvG4664xkux7ziVq7DT+m6PeCofFghbR/AWoaYQNiTmeuLwB3RqjsGpuvGAhEJMzyKFYPOUgsJRTbw2AtatsaFLJgHx7cM6MGdyxTFtnEx5KNu0+sxxYJhRRfpK+Vf0AJhJL0b55r90TgJxxmbus3R/wn0G9se3jhoNSKytoksi9uu6e4SSY5ga/6RB/MDxXLw+v2Cfk/i+lFhRhKGqCtleDXvPTaogzIkII8n6zcC38nfzo7qw1KIugvjetCKl04ud82rlmrKLxM54IxkeoZ7+s0GerNSCAVGyRXcOIigLoDjbh/FZGTNoS6AOMkkXJ4o3FG+Bjw==", "KeyInfo"=>{"X509Data"=>{"X509Certificate"=>"MIIHfDCCBWSgAwIBAgIMW2nH2LELzc8DmbvgMA0GCSqGSIb3DQEBCwUAMIGJMQswCQYDVQQGEwJCUjETMBEGA1UECgwKSUNQLUJyYXNpbDE2MDQGA1UECwwtU2VjcmV0YXJpYSBkYSBSZWNlaXRhIEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMS0wKwYDVQQDDCRBdXRvcmlkYWRlIENlcnRpZmljYWRvcmEgU0VSUFJPUkZCdjUwHhcNMjExMTI2MTMxNjIyWhcNMjIxMTI2MTMxNjIyWjCCARMxCzAJBgNVBAYTAkJSMQswCQYDVQQIDAJFUzEOMAwGA1UEBwwFU0VSUkExEzARBgNVBAoMCklDUC1CcmFzaWwxEzARBgNVBAsMCnByZXNlbmNpYWwxFzAVBgNVBAsMDjM0MDI4MzE2MDAwMTAzMTYwNAYDVQQLDC1TZWNyZXRhcmlhIGRhIFJlY2VpdGEgRmVkZXJhbCBkbyBCcmFzaWwgLSBSRkIxEzARBgNVBAsMCkFSQ09SUkVJT1MxFjAUBgNVBAsMDVJGQiBlLUNOUEogQTExPzA9BgNVBAMMNkVMRVRST1NPTERBIExPR0lTVElDQSBFIElNUE9SVEFDQU8gTFREQTozNTk2ODgyNTAwMDE4OTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKT8qpqQG4u/VCcqk1MbpjBaLZ1ysWwBSSZdyOdDIU0mcQqkSZYiZ9+/YoSSZFP1SbFUrllS+vL7jzWgDC+R1NGyd7pKxcwYMVkyAfvM3L2uJ8iIv5XCMVnxy4miOf7oq787jrlUbi6j0t1zy0FARWCH6PXY34k3JmkxDJqtxnSmrHbcw3e/q72f1+PRnNPvKuxYxjHPYerMHSlgtdD5rK4nTxdvc4dJsJBWZL3lw8EpDQUN7MLr5Vu4FxmOWP8zG9XsQvTLrhhWoNP4f6Z8Ni12tPWdvQJNFmkbbyrR3DRVNSpDE1AnLs6JiD10GkJ+jiJsEWUsWIvW1I/1kWhtb2sCAwEAAaOCAlUwggJRMB8GA1UdIwQYMBaAFBSALZ1+mkXA8Vs/GdVAsG8vZeDpMIGIBgNVHR8EgYAwfjA8oDqgOIY2aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvbGNyL2Fjc2VycHJvcmZidjUuY3JsMD6gPKA6hjhodHRwOi8vY2VydGlmaWNhZG9zMi5zZXJwcm8uZ292LmJyL2xjci9hY3NlcnByb3JmYnY1LmNybDBWBggrBgEFBQcBAQRKMEgwRgYIKwYBBQUHMAKGOmh0dHA6Ly9yZXBvc2l0b3Jpby5zZXJwcm8uZ292LmJyL2NhZGVpYXMvYWNzZXJwcm9yZmJ2NS5wN2Iwgb4GA1UdEQSBtjCBs6A4BgVgTAEDBKAvBC0xOTAzMTk2Nzg2MzY0Nzc0NzY4MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDCgKAYFYEwBAwKgHwQdQ0FSTE9TIEpPU0UgRE9NSU5HVUVTIE5PUk9OSEGgGQYFYEwBAwOgEAQOMzU5Njg4MjUwMDAxODmgFwYFYEwBAwegDgQMMDAwMDAwMDAwMDAwgRlmaXNjYWxAZWxldHJvc29sZGEuY29tLmJyMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDBAYIKwYBBQUHAwIwWwYDVR0gBFQwUjBQBgZgTAECAQowRjBEBggrBgEFBQcCARY4aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvZG9jcy9kcGNhY3NlcnByb3JmYi5wZGYwDQYJKoZIhvcNAQELBQADggIBACgourtuidYbF6caBAmVbCq5uA/HdGbkPlHnDKNXBxITbJdDzUScD5BCCiNFTh2bHR94NrxuYWGCsrrsMO+dNCDh2JNdUaOZHyte46GbAKuA9mYknL8KdQO5F2bUWjbJWVPhd/YF3uex4FSQDZbWZnSJS8QkgDaMijj0UiO4ziCLklAYxEa0B4PeVx0Hw6qMhX1LE5awGd8a/rLZj56xSMirGTV24cbbnhPx/Y0JXqa+hJPdKOSB+Sgxzj/5okDVDY5c2YTI1aoyPnQPxis+pVZ4DZVBexyIfsljAliADj2uuIDqqgP9CiqA+1zTuAgzRkZcpZKiAEoAQfz+jFPlnEPFpR/naQZYQ6U8XeNuj5FUkvdkbpZ98bnNAaYGKAULz2NdExf6IuUoKlv049LshEG7B3TNSNqdYAxEffMSOrfqdDbuMhuvlooW8C8dUmcu4uuFB9pAJ9Q4S8rf8cbxCEQmBa9eAAGJOrx1XC3CQuy2KjFPAylv741kzVKhHpBGcF4nkxxJlxZyHFtwZMPEMjircUWxsKUjBGoUksOARnhf1LKhdS2dMCbFPQrAd/1Yy1dxVrtl1kY5zc6KlLYe4CkqYzhyBY7tCWjmfu4XxbJh5UiQhA+gQnx/owMayojxT4IC/BgLQXKyLP8Yc0tcQ9hXHPnbH6hfyBIQqDmEBb4C"}}}}, "protNFe"=>{"versao"=>"4.00", "infProt"=>{"tpAmb"=>"1", "verAplic"=>"SVRS202202101007", "chNFe"=>"32220235968825000189550010000546241550667442", "dhRecbto"=>"2022-02-22T14:48:18-03:00", "nProt"=>"332220013944420", "digVal"=>"6RErDnUsLs15t+pV38cZ0mf6+cg=", "cStat"=>"100", "xMotivo"=>"Autorizado o uso da NF-e"}}}}	\N
3	54623	35968825000189	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	RUA SAO PEDRO	\N	ANDAR 1	PRAIA DO COQUEIRAL	3205002	SERRA	ES	29163391	05962119000169	METALMECANICA BECKER LTDA	RUA PEROBAS	56	PRAIA DO COQUEIRAL	3200607	ARACRUZ	ES	29199117	ELETROSOLDA LOGISTICA E IMPORTACAO LTDA	35968825000189	RUA SAO PEDRO N. 1001 ANDAR: 1	SERRA	ES	2	14.100	14.724	32220235968825000189550010000546231615907935	\N	\N	2023-07-04 21:41:55.873737	2023-07-04 21:45:11.444042	3	f	1	1	t	f	t	3	\N	3	3	\N	\N	\N	RUA SAO PEDRO ANDAR 1 SAO GERALDO SERRA ES	-20.221857	-40.2692989	RUA SAO PEDRO N. 1001 ANDAR: 1 SERRA ES	-20.1273674	-40.18449529999999	RUA PEROBAS PRAIA DO COQUEIRAL ARACRUZ ES	-19.9337749	-40.148512	{"nfeProc"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "versao"=>"4.00", "NFe"=>{"xmlns"=>"http://www.portalfiscal.inf.br/nfe", "infNFe"=>{"Id"=>"NFe32220235968825000189550010000546231615908025", "versao"=>"4.00", "ide"=>{"cUF"=>"32", "cNF"=>"61590793", "natOp"=>"VENDA DE MERCADORIA AD. REC TE", "mod"=>"55", "serie"=>"1", "nNF"=>"54623", "dhEmi"=>"2022-02-22T14:41:49-03:00", "dhSaiEnt"=>"2022-02-22T14:42:37-03:00", "tpNF"=>"1", "idDest"=>"1", "cMunFG"=>"3205002", "tpImp"=>"1", "tpEmis"=>"1", "cDV"=>"5", "tpAmb"=>"1", "finNFe"=>"1", "indFinal"=>"0", "indPres"=>"0", "procEmi"=>"0", "verProc"=>"4.9b243"}, "emit"=>{"CNPJ"=>"35968825000189", "xNome"=>"ELETROSOLDA LOGISTICA E IMPORTACAO LTDA", "xFant"=>"ELETROSOLDA", "enderEmit"=>{"xLgr"=>"RUA SAO PEDRO", "nro"=>"1001", "xCpl"=>"ANDAR 1", "xBairro"=>"SAO GERALDO", "cMun"=>"3205002", "xMun"=>"SERRA", "UF"=>"ES", "CEP"=>"29163391", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"002721215656"}, "IE"=>"081395434", "CRT"=>"3"}, "dest"=>{"CNPJ"=>"05962119000169", "xNome"=>"METALMECANICA BECKER LTDA", "enderDest"=>{"xLgr"=>"RUA PEROBAS", "nro"=>"56", "xBairro"=>"PRAIA DO COQUEIRAL", "cMun"=>"3200607", "xMun"=>"ARACRUZ", "UF"=>"ES", "CEP"=>"29199117", "cPais"=>"1058", "xPais"=>"Brasil", "fone"=>"552732561381"}, "indIEDest"=>"1", "IE"=>"082243956", "email"=>"fiscal@becker.ind.br"}, "det"=>[{"nItem"=>"1", "prod"=>{"cProd"=>"9961", "cEAN"=>"7898640602554", "xProd"=>"LENTE P/MASCARA RETANGULAR INCOLOR 51X108X2MM HYPERWELD", "NCM"=>"90014000", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"200", "vUnCom"=>"0.37", "vProd"=>"74.00", "cEANTrib"=>"7898640602554", "uTrib"=>"PC", "qTrib"=>"200", "vUnTrib"=>"0.37", "indTot"=>"1", "xPed"=>"273"}, "imposto"=>{"vTotTrib"=>"7.69", "ICMS"=>{"ICMS20"=>{"orig"=>"2", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"30.47", "pICMS"=>"17.00", "vICMS"=>"5.18"}}, "IPI"=>{"cEnq"=>"999", "IPINT"=>{"CST"=>"51"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"68.82", "pPIS"=>"0.6500", "vPIS"=>"0.45"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"68.82", "pCOFINS"=>"3.0000", "vCOFINS"=>"2.06"}}}}, {"nItem"=>"2", "prod"=>{"cProd"=>"4481", "cEAN"=>"SEM GTIN", "xProd"=>"MARCADOR INDUSTRIAL AMARELO ECOLOGICO 3MM 60ML TRACOFORTE", "NCM"=>"32159000", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"12", "vUnCom"=>"6.75", "vProd"=>"81.00", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"12", "vUnTrib"=>"6.75", "indTot"=>"1", "xPed"=>"273"}, "imposto"=>{"vTotTrib"=>"8.42", "ICMS"=>{"ICMS20"=>{"orig"=>"0", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"33.36", "pICMS"=>"17.00", "vICMS"=>"5.67"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"75.33", "pPIS"=>"0.6500", "vPIS"=>"0.49"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"75.33", "pCOFINS"=>"3.0000", "vCOFINS"=>"2.26"}}}}, {"nItem"=>"3", "prod"=>{"cProd"=>"3514", "cEAN"=>"SEM GTIN", "xProd"=>"PONTA MONTADA A-01", "NCM"=>"68042290", "CEST"=>"0800300", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"50", "vUnCom"=>"1.55", "vProd"=>"77.50", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"50", "vUnTrib"=>"1.55", "indTot"=>"1", "xPed"=>"273"}, "imposto"=>{"vTotTrib"=>"8.05", "ICMS"=>{"ICMS20"=>{"orig"=>"0", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"31.91", "pICMS"=>"17.00", "vICMS"=>"5.42"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"72.08", "pPIS"=>"0.6500", "vPIS"=>"0.47"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"72.08", "pCOFINS"=>"3.0000", "vCOFINS"=>"2.16"}}}}, {"nItem"=>"4", "prod"=>{"cProd"=>"3516", "cEAN"=>"SEM GTIN", "xProd"=>"PONTA MONTADA A-03", "NCM"=>"68042290", "CEST"=>"0800300", "cBenef"=>nil, "CFOP"=>"5102", "uCom"=>"PC", "qCom"=>"50", "vUnCom"=>"2.72", "vProd"=>"136.00", "cEANTrib"=>"SEM GTIN", "uTrib"=>"PC", "qTrib"=>"50", "vUnTrib"=>"2.72", "indTot"=>"1", "xPed"=>"273"}, "imposto"=>{"vTotTrib"=>"14.13", "ICMS"=>{"ICMS20"=>{"orig"=>"0", "CST"=>"20", "modBC"=>"3", "pRedBC"=>"58.8200", "vBC"=>"56.00", "pICMS"=>"17.00", "vICMS"=>"9.52"}}, "IPI"=>{"cEnq"=>"999", "IPITrib"=>{"CST"=>"99", "vBC"=>"0.00", "pIPI"=>"0.00", "vIPI"=>"0.00"}}, "PIS"=>{"PISAliq"=>{"CST"=>"01", "vBC"=>"126.48", "pPIS"=>"0.6500", "vPIS"=>"0.82"}}, "COFINS"=>{"COFINSAliq"=>{"CST"=>"01", "vBC"=>"126.48", "pCOFINS"=>"3.0000", "vCOFINS"=>"3.79"}}}}], "total"=>{"ICMSTot"=>{"vBC"=>"151.74", "vICMS"=>"25.79", "vICMSDeson"=>"0.00", "vFCP"=>"0.00", "vBCST"=>"0.00", "vST"=>"0.00", "vFCPST"=>"0.00", "vFCPSTRet"=>"0.00", "vProd"=>"368.50", "vFrete"=>"0.00", "vSeg"=>"0.00", "vDesc"=>"0.00", "vII"=>"0.00", "vIPI"=>"0.00", "vIPIDevol"=>"0.00", "vPIS"=>"2.23", "vCOFINS"=>"10.27", "vOutro"=>"0.00", "vNF"=>"368.50", "vTotTrib"=>"38.29"}}, "transp"=>{"modFrete"=>"0", "transporta"=>{"CNPJ"=>"35968825000189", "xNome"=>"ELETROSOLDA LOGISTICA E IMPORTACAO LTDA", "IE"=>"081395434", "xEnder"=>"RUA SAO PEDRO N. 1001 ANDAR: 1", "xMun"=>"SERRA", "UF"=>"ES"}, "vol"=>{"qVol"=>"2", "pesoL"=>"14.100", "pesoB"=>"14.724"}}, "cobr"=>{"fat"=>{"nFat"=>"54623", "vOrig"=>"368.50", "vDesc"=>"0.00", "vLiq"=>"368.50"}, "dup"=>{"nDup"=>"001", "dVenc"=>"2022-03-22", "vDup"=>"368.50"}}, "pag"=>{"detPag"=>{"indPag"=>"1", "tPag"=>"15", "vPag"=>"368.50"}}, "infAdic"=>{"infAdFisco"=>"REDUCAO DA BASE DE CALCULO CONF. ARTIGO 534-Z-Z-A DO DECRETO 1090R DE 25/10/02 RICMS/ES", "infCpl"=>"| | End.entrega: RUA PEROBAS, 56 - BAIRRO: PRAIA DO COQUEIRAL - ARACRUZ/ES CEP: 29199-117 | | Pedido: 273 | O.Carga: 0 |"}, "compra"=>{"xPed"=>"273"}, "infRespTec"=>{"CNPJ"=>"26314062000161", "xContato"=>"Fabio Tulio Felippe", "email"=>"marketing@sankhya.com.br", "fone"=>"3432390700"}}, "Signature"=>{"xmlns"=>"http://www.w3.org/2000/09/xmldsig#", "SignedInfo"=>{"CanonicalizationMethod"=>{"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}, "SignatureMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#rsa-sha1"}, "Reference"=>{"URI"=>"#NFe32220235968825000189550010000546231615907935", "Transforms"=>{"Transform"=>[{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#enveloped-signature"}, {"Algorithm"=>"http://www.w3.org/TR/2001/REC-xml-c14n-20010315"}]}, "DigestMethod"=>{"Algorithm"=>"http://www.w3.org/2000/09/xmldsig#sha1"}, "DigestValue"=>"3Rfdwiy5XRMp426KNYaHUUERFeU="}}, "SignatureValue"=>"lRaPra+fuNeb11Y2TTWjf0RonVUXpOqIZzlymcD/RCPTqiJ7f9nFNE/U6zt2hmGbwu86B9nCkDKO8huA62FoBxL46aobC1vHvLAPdl1IZ4gtYfFgZr0cZxaIw75asv+RPYeAE04l79ERmc4IJIg4eew1FPzKoSCu9OVORq/7kmu5IrurPJfUCH96S0+mBpivUUcudXah1cx9dbpsj9mKs0KIVfiDW5j1/AGZZJXOnl+zH83+yFwy0Od6LZ5vh6QAO+4hzpqEUB4UWQUPvksWKxGDj0juq64px+f25MLr1iSlLUToH47oIZ83mPU2wiTKmeK3AEATxJDieNg7lZzaaA==", "KeyInfo"=>{"X509Data"=>{"X509Certificate"=>"MIIHfDCCBWSgAwIBAgIMW2nH2LELzc8DmbvgMA0GCSqGSIb3DQEBCwUAMIGJMQswCQYDVQQGEwJCUjETMBEGA1UECgwKSUNQLUJyYXNpbDE2MDQGA1UECwwtU2VjcmV0YXJpYSBkYSBSZWNlaXRhIEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMS0wKwYDVQQDDCRBdXRvcmlkYWRlIENlcnRpZmljYWRvcmEgU0VSUFJPUkZCdjUwHhcNMjExMTI2MTMxNjIyWhcNMjIxMTI2MTMxNjIyWjCCARMxCzAJBgNVBAYTAkJSMQswCQYDVQQIDAJFUzEOMAwGA1UEBwwFU0VSUkExEzARBgNVBAoMCklDUC1CcmFzaWwxEzARBgNVBAsMCnByZXNlbmNpYWwxFzAVBgNVBAsMDjM0MDI4MzE2MDAwMTAzMTYwNAYDVQQLDC1TZWNyZXRhcmlhIGRhIFJlY2VpdGEgRmVkZXJhbCBkbyBCcmFzaWwgLSBSRkIxEzARBgNVBAsMCkFSQ09SUkVJT1MxFjAUBgNVBAsMDVJGQiBlLUNOUEogQTExPzA9BgNVBAMMNkVMRVRST1NPTERBIExPR0lTVElDQSBFIElNUE9SVEFDQU8gTFREQTozNTk2ODgyNTAwMDE4OTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKT8qpqQG4u/VCcqk1MbpjBaLZ1ysWwBSSZdyOdDIU0mcQqkSZYiZ9+/YoSSZFP1SbFUrllS+vL7jzWgDC+R1NGyd7pKxcwYMVkyAfvM3L2uJ8iIv5XCMVnxy4miOf7oq787jrlUbi6j0t1zy0FARWCH6PXY34k3JmkxDJqtxnSmrHbcw3e/q72f1+PRnNPvKuxYxjHPYerMHSlgtdD5rK4nTxdvc4dJsJBWZL3lw8EpDQUN7MLr5Vu4FxmOWP8zG9XsQvTLrhhWoNP4f6Z8Ni12tPWdvQJNFmkbbyrR3DRVNSpDE1AnLs6JiD10GkJ+jiJsEWUsWIvW1I/1kWhtb2sCAwEAAaOCAlUwggJRMB8GA1UdIwQYMBaAFBSALZ1+mkXA8Vs/GdVAsG8vZeDpMIGIBgNVHR8EgYAwfjA8oDqgOIY2aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvbGNyL2Fjc2VycHJvcmZidjUuY3JsMD6gPKA6hjhodHRwOi8vY2VydGlmaWNhZG9zMi5zZXJwcm8uZ292LmJyL2xjci9hY3NlcnByb3JmYnY1LmNybDBWBggrBgEFBQcBAQRKMEgwRgYIKwYBBQUHMAKGOmh0dHA6Ly9yZXBvc2l0b3Jpby5zZXJwcm8uZ292LmJyL2NhZGVpYXMvYWNzZXJwcm9yZmJ2NS5wN2Iwgb4GA1UdEQSBtjCBs6A4BgVgTAEDBKAvBC0xOTAzMTk2Nzg2MzY0Nzc0NzY4MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDCgKAYFYEwBAwKgHwQdQ0FSTE9TIEpPU0UgRE9NSU5HVUVTIE5PUk9OSEGgGQYFYEwBAwOgEAQOMzU5Njg4MjUwMDAxODmgFwYFYEwBAwegDgQMMDAwMDAwMDAwMDAwgRlmaXNjYWxAZWxldHJvc29sZGEuY29tLmJyMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDBAYIKwYBBQUHAwIwWwYDVR0gBFQwUjBQBgZgTAECAQowRjBEBggrBgEFBQcCARY4aHR0cDovL3JlcG9zaXRvcmlvLnNlcnByby5nb3YuYnIvZG9jcy9kcGNhY3NlcnByb3JmYi5wZGYwDQYJKoZIhvcNAQELBQADggIBACgourtuidYbF6caBAmVbCq5uA/HdGbkPlHnDKNXBxITbJdDzUScD5BCCiNFTh2bHR94NrxuYWGCsrrsMO+dNCDh2JNdUaOZHyte46GbAKuA9mYknL8KdQO5F2bUWjbJWVPhd/YF3uex4FSQDZbWZnSJS8QkgDaMijj0UiO4ziCLklAYxEa0B4PeVx0Hw6qMhX1LE5awGd8a/rLZj56xSMirGTV24cbbnhPx/Y0JXqa+hJPdKOSB+Sgxzj/5okDVDY5c2YTI1aoyPnQPxis+pVZ4DZVBexyIfsljAliADj2uuIDqqgP9CiqA+1zTuAgzRkZcpZKiAEoAQfz+jFPlnEPFpR/naQZYQ6U8XeNuj5FUkvdkbpZ98bnNAaYGKAULz2NdExf6IuUoKlv049LshEG7B3TNSNqdYAxEffMSOrfqdDbuMhuvlooW8C8dUmcu4uuFB9pAJ9Q4S8rf8cbxCEQmBa9eAAGJOrx1XC3CQuy2KjFPAylv741kzVKhHpBGcF4nkxxJlxZyHFtwZMPEMjircUWxsKUjBGoUksOARnhf1LKhdS2dMCbFPQrAd/1Yy1dxVrtl1kY5zc6KlLYe4CkqYzhyBY7tCWjmfu4XxbJh5UiQhA+gQnx/owMayojxT4IC/BgLQXKyLP8Yc0tcQ9hXHPnbH6hfyBIQqDmEBb4C"}}}}, "protNFe"=>{"versao"=>"4.00", "infProt"=>{"tpAmb"=>"1", "verAplic"=>"SVRS202202101007", "chNFe"=>"32220235968825000189550010000546231615907935", "dhRecbto"=>"2022-02-22T14:41:51-03:00", "nProt"=>"332220013941443", "digVal"=>"3Rfdwiy5XRMp426KNYaHUUERFeU=", "cStat"=>"100", "xMotivo"=>"Autorizado o uso da NF-e"}}}}	\N
\.


--
-- TOC entry 5199 (class 0 OID 21824)
-- Dependencies: 313
-- Data for Name: license_docs; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.license_docs (id, user_id, company_id, status, expiry_date, approved_by, license_type, admin_comment, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5169 (class 0 OID 21407)
-- Dependencies: 283
-- Data for Name: loads; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.loads (id, length, width, height, weight, is_3d, is_2d, can_not, company_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5141 (class 0 OID 21060)
-- Dependencies: 255
-- Data for Name: maintainances; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.maintainances (id, inspection_id, requested_dtm, scheduled_dtm, completed_dtm, deleted_dtm, maintainance_start_dtm, maintainance_end_dtm, created_by, scheduled_by, assigned_to, status, created_at, updated_at, product_id, is_active, is_deleted, comment_schedular, remark, is_direct_schedule, image_url, is_direct_submit, urgency_rate, maintainable_type, maintainable_id, execution_start_time) FROM stdin;
\.


--
-- TOC entry 5127 (class 0 OID 20786)
-- Dependencies: 241
-- Data for Name: measurements; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.measurements (id, title, description, is_active, is_deleted, created_at, updated_at) FROM stdin;
1	Kg	For now Lorem Ipsum Kg	f	f	2023-07-04 00:33:57.407233	2023-07-04 00:33:57.407233
2	Litre	For now Lorem Ipsum Litter	f	f	2023-07-04 00:33:58.791408	2023-07-04 00:33:58.791408
3	Unit	For now Lorem Ipsum Unit	f	f	2023-07-04 00:33:59.542942	2023-07-04 00:33:59.542942
4	Quintal	For now Lorem Ipsum kwintle	f	f	2023-07-04 00:34:00.670202	2023-07-04 00:34:00.670202
\.


--
-- TOC entry 5185 (class 0 OID 21610)
-- Dependencies: 299
-- Data for Name: missing_packages; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.missing_packages (id, user_id, package_id, company_id, status, created_at, updated_at, invoice_id, complaint_id, type_missing) FROM stdin;
\.


--
-- TOC entry 5147 (class 0 OID 21177)
-- Dependencies: 261
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.notifications (id, title, description, notification_type, is_read, sender_id, receiver_id, read_at, is_active, is_deleted, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5191 (class 0 OID 21704)
-- Dependencies: 305
-- Data for Name: order_actions; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_actions (id, company_id, order_id, vehicle_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5215 (class 0 OID 22026)
-- Dependencies: 329
-- Data for Name: order_groups; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_groups (id, identifier, status, created_at, updated_at) FROM stdin;
2	0da3ebca787ba45104a0	1	2023-07-05 22:01:30.58602	2023-07-05 22:01:30.58602
\.


--
-- TOC entry 5179 (class 0 OID 21541)
-- Dependencies: 293
-- Data for Name: order_histories; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_histories (id, order_path, order_ids, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5181 (class 0 OID 21550)
-- Dependencies: 295
-- Data for Name: order_logs; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_logs (id, invoice_id, vehicle_id, created_at, updated_at, status, user_id, is_loaded, order_log_status) FROM stdin;
\.


--
-- TOC entry 5195 (class 0 OID 21754)
-- Dependencies: 309
-- Data for Name: order_passes; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_passes (id, order_pass_code, status, vehicle_id, created_at, updated_at, user_id, order_type, company_id) FROM stdin;
\.


--
-- TOC entry 5207 (class 0 OID 21914)
-- Dependencies: 321
-- Data for Name: order_statuses; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.order_statuses (id, order_id, vehicle_id, company_id, user_id, sequence_delivery, client_name, reciver_company_id, max_deliver_date, priority, weight, volume, vehicles_accepted, client_service_time, estimated_arrival_time, status, created_at, updated_at, confirm_datetime) FROM stdin;
2	1	2	3	3	1	CONMEC INDUSTRIAL LTDA	1	2023-07-21 00:00:00 UTC	No priority	1.0	1.0	Truck,Bi-Truck,Trail,Heavy Truck	11am to 21pm	0.018	4	2023-07-05 22:01:33.667323	2023-07-05 22:01:33.667323	2023-07-05 22:01:51.944757
\.


--
-- TOC entry 5177 (class 0 OID 21508)
-- Dependencies: 291
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.orders (id, company_id, order_number, delivery_status, is_sending_courier_company_office, user_id, delivery_type, delivery_mode, priority, created_at, updated_at, shipping_company_id, max_date, scheduled_by_id, accpeted_quantity_items, average_delivery_time_item, exe_output, vehicle_ids, start_movement_shift, vehicle_id, reciever_company_unique_code, seller_company_unique_code, shipping_company_unique_code, display_max_date) FROM stdin;
1	3	1ELETROSOLDA6	7	\N	3	2	1	1	2023-07-04 21:46:59.485447	2023-07-05 22:01:51.940508	\N	2023-07-21 00:00:00	3	1	10	\N	4,3,2,1	\N	\N	1	\N	\N	2023-7-21
\.


--
-- TOC entry 5175 (class 0 OID 21474)
-- Dependencies: 289
-- Data for Name: other_companies; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.other_companies (id, company_name, cnpj_number, pickup_availability_days, pickup_opening_hours, pickup_closing_hours, pickup_interval_time, delivery_availibility_days, delivery_opening_hours, delivery_closing_hours, delivery_interval_type, latitude, longtitude, actual_address, company_type, invoice_id, created_at, updated_at, moment_beginning_service, period_moment_end_service) FROM stdin;
1	CONMEC INDUSTRIAL LTDA	01191207000153	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	\N	\N	RUA ARNOBIO PIMENTEL CENTRO EMPRESARIAL ARACRUZ ES	2	6	2023-07-04 21:43:42.906243	2023-07-04 21:43:42.906243	1688468400000	1688504400000
2	TRANSPORTES DELLA VOLPE S A COMERCIO E INDUSTRIA	61139432004402	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	\N	\N	Rod BR-101 KM 945,4+7KM SEDE MUCURI BA	3	4	2023-07-04 21:44:28.492915	2023-07-04 21:44:28.492915	1688468400000	1688504400000
3	METALMECANICA BECKER LTDA	05962119000169	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	[0,1,1,1,1,1,0]	{"hour":8,"minute":0,"second":0}	{"hour":18,"minute":0,"second":0}	\N	\N	\N	RUA PEROBAS PRAIA DO COQUEIRAL ARACRUZ ES	2	3	2023-07-04 21:45:11.432007	2023-07-04 21:45:11.432007	1688468400000	1688504400000
\.


--
-- TOC entry 5193 (class 0 OID 21729)
-- Dependencies: 307
-- Data for Name: package_actions; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.package_actions (id, user_id, order_action_id, package_id, created_at, updated_at, company_id, order_pass_id) FROM stdin;
\.


--
-- TOC entry 5173 (class 0 OID 21465)
-- Dependencies: 287
-- Data for Name: packages; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.packages (id, package_number, tag, receiver_company_name, uploaded_at, uploaded_by, length, width, height, weight, is_3d, is_2d, can_not, created_at, updated_at, invoice_id, volume) FROM stdin;
3	1	54623001/002	METALMECANICA BECKER LTDA	2023-07-04 21:41:55.947714	3	\N	\N	\N	\N	f	f	f	2023-07-04 21:41:55.949073	2023-07-04 21:41:55.952048	3	\N
4	2	54623002/002	METALMECANICA BECKER LTDA	2023-07-04 21:41:55.955805	3	\N	\N	\N	\N	f	f	f	2023-07-04 21:41:55.956516	2023-07-04 21:41:55.958954	3	\N
5	1	54624001/001	SUZANO S.A.	2023-07-04 21:42:10.978025	3	\N	\N	\N	\N	f	f	f	2023-07-04 21:42:10.979444	2023-07-04 21:42:10.982156	4	\N
7	1	54617001/001	CONMEC INDUSTRIAL LTDA	2023-07-04 21:42:52.917005	3	1	1	1	1	t	t	t	2023-07-04 21:42:52.918051	2023-07-04 21:46:59.518395	6	1
\.


--
-- TOC entry 5129 (class 0 OID 20805)
-- Dependencies: 243
-- Data for Name: product_logs; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.product_logs (id, product_id, room_id, is_patrimonial, is_material_control, quantity, operation, current_stock, is_active, is_deleted, created_at, updated_at, giver_id, receiver_id, pickup_date, expected_return_date, is_return_complete, return_date, company_id, operation_type, ref_table_type, ref_table_id, consumed_quantity, is_epi) FROM stdin;
1	1	1	t	t	1	1	1	t	f	2023-07-27 00:28:58.731099	2023-07-27 00:28:58.731099	\N	5	\N	\N	f	\N	2	1	\N	\N	\N	t
2	2	2	t	f	1	1	1	t	f	2023-08-17 14:41:29.821109	2023-08-17 14:41:29.821109	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
3	3	2	t	f	1	1	1	t	f	2023-08-17 15:54:25.897486	2023-08-17 15:54:25.897486	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
4	4	2	t	f	1	1	1	t	f	2023-08-17 15:56:56.107133	2023-08-17 15:56:56.107133	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
5	5	2	t	f	1	1	1	t	f	2023-08-24 12:38:24.997914	2023-08-24 12:38:24.997914	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
6	6	2	t	f	1	1	1	t	f	2023-08-24 13:11:54.805426	2023-08-24 13:11:54.805426	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
7	7	2	t	f	1	1	1	t	f	2023-08-29 13:18:14.296279	2023-08-29 13:18:14.296279	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
8	8	2	t	f	1	1	1	t	f	2023-08-29 13:34:28.113858	2023-08-29 13:34:28.113858	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
9	9	2	t	f	1	1	1	t	f	2023-08-29 13:35:25.132545	2023-08-29 13:35:25.132545	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
10	10	3	f	t	1205	1	1205	t	f	2023-08-29 13:58:27.510958	2023-08-29 13:58:27.510958	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
11	11	2	t	f	1	1	1	t	f	2023-08-30 14:10:57.845852	2023-08-30 14:10:57.845852	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
12	12	2	t	f	1	1	1	t	f	2023-08-30 14:11:54.483093	2023-08-30 14:11:54.483093	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
13	13	1	t	f	1	1	1	t	f	2023-08-30 14:12:44.98078	2023-08-30 14:12:44.98078	\N	5	\N	\N	f	\N	2	1	\N	\N	\N	f
14	14	2	t	f	1	1	1	t	f	2023-08-31 17:03:18.376637	2023-08-31 17:03:18.376637	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
15	15	2	t	f	1	1	1	t	f	2023-08-31 17:04:08.379571	2023-08-31 17:04:08.379571	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
16	16	2	t	f	1	1	1	t	f	2023-08-31 17:07:06.125911	2023-08-31 17:07:06.125911	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
17	17	2	t	f	1	1	1	t	f	2023-08-31 17:07:52.888321	2023-08-31 17:07:52.888321	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
18	18	2	t	f	1	1	1	t	f	2023-08-31 17:09:09.688473	2023-08-31 17:09:09.688473	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
19	17	2	t	f	1	1	1	t	f	2023-08-31 22:12:48.583972	2023-08-31 22:12:48.583972	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
20	15	2	t	f	1	1	1	t	f	2023-08-31 22:17:15.794321	2023-08-31 22:17:15.794321	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
21	18	2	t	f	1	1	1	t	f	2023-09-01 13:28:54.760322	2023-09-01 13:28:54.760322	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
22	18	2	t	f	1	1	1	t	f	2023-09-01 13:29:22.925923	2023-09-01 13:29:22.925923	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
23	18	2	t	f	1	1	1	t	f	2023-09-01 13:32:48.187168	2023-09-01 13:32:48.187168	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
24	19	2	t	f	1	1	1	t	f	2023-09-06 12:20:11.318187	2023-09-06 12:20:11.318187	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
25	19	2	t	f	1	1	1	t	f	2023-09-06 12:20:41.288017	2023-09-06 12:20:41.288017	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
26	20	2	t	f	1	1	1	t	f	2023-09-06 12:21:21.0111	2023-09-06 12:21:21.0111	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
27	21	2	t	f	1	1	1	t	f	2023-09-12 16:22:19.417835	2023-09-12 16:22:19.417835	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
28	22	2	t	f	1	1	1	t	f	2023-09-12 16:23:57.650622	2023-09-12 16:23:57.650622	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
29	23	2	t	f	1	1	1	t	f	2023-09-12 16:24:57.390571	2023-09-12 16:24:57.390571	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
30	24	2	t	f	1	1	1	t	f	2023-09-12 16:26:05.562456	2023-09-12 16:26:05.562456	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
31	25	2	t	f	1	1	1	t	f	2023-09-12 16:45:20.90762	2023-09-12 16:45:20.90762	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
32	26	2	t	f	1	1	1	t	f	2023-09-12 16:46:09.340719	2023-09-12 16:46:09.340719	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
33	26	2	t	f	1	1	1	t	f	2023-09-12 16:46:27.186892	2023-09-12 16:46:27.186892	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
34	27	2	t	f	1	1	1	t	f	2023-09-12 16:48:48.103567	2023-09-12 16:48:48.103567	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
35	28	2	t	f	1	1	1	t	f	2023-10-03 12:01:56.948126	2023-10-03 12:01:56.948126	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
36	28	2	t	f	1	1	1	t	f	2023-10-03 12:02:31.688751	2023-10-03 12:02:31.688751	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
37	28	2	t	f	1	1	1	t	f	2023-10-20 12:07:37.566244	2023-10-20 12:07:37.566244	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
38	28	2	t	f	1	1	1	t	f	2023-10-30 18:36:08.162649	2023-10-30 18:36:08.162649	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
39	28	2	t	f	1	1	1	t	f	2023-11-01 22:06:00.57059	2023-11-01 22:06:00.57059	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
40	28	2	t	f	1	1	1	t	f	2023-11-03 12:10:23.382923	2023-11-03 12:10:23.382923	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
41	29	2	t	f	1	1	1	t	f	2023-11-03 12:11:05.891414	2023-11-03 12:11:05.891414	\N	7	\N	\N	f	\N	2	1	\N	\N	\N	f
\.


--
-- TOC entry 5121 (class 0 OID 20696)
-- Dependencies: 235
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.products (id, product_title, manufacturer, product_model, room_id, universal_barcode, price, is_patrimonial, serial_number, is_material_control, patrimonial_qr_code, is_require_maintanance, is_discard, class_list_id, company_id, is_active, is_deleted, created_at, updated_at, measurement_id, image_url_array, product_type, discarded_date_time, discarded_user_id, is_compliance, is_epi, epi_expiry_date, epi_ca_number) FROM stdin;
1	Mesa 	Eletrosolda	13434	1	91057116272933368023371282452675	0	t	12312	t	10000000021	f	f	\N	2	t	f	2023-07-27 00:28:58.68952	2023-07-27 00:28:58.834174	\N	\N	1	\N	0	1	t	1970-01-01 00:00:00	23
2	MONITOR	LG	22LU50FR	2	56185769570832764337471676506506	0	t	003AZCQ9F219	f	1	f	f	\N	2	t	f	2023-08-17 14:41:29.811146	2023-08-17 14:41:29.903288	\N	["product/product_12_1692283289.jpg"]	2	\N	0	1	f	\N	
3	NOTEBOOK	DELL	CORE I3	2	7898931331156	0	t	2552690486	f	2	f	f	\N	2	t	f	2023-08-17 15:54:25.892538	2023-08-17 15:54:25.892538	\N	["product/product_33_1692287665.jpg"]	2	\N	0	1	f	\N	
4	TELEFONE	GRANDSTREAM	GXP1400	2	65476386803448018543705567867143	0	t	20EYX47B102E0723	f	3	f	f	\N	2	t	f	2023-08-17 15:56:56.092456	2023-08-17 15:56:56.192367	\N	["product/product_46_1692287815.jpg"]	2	\N	0	1	f	\N	
5	CADEIRA 	FLEXFORM	UNI ALL BLACK	2	92096874808383001640721116375258	0	t	170110001725/01	f	4	f	f	\N	2	t	f	2023-08-24 12:38:24.993249	2023-08-24 12:38:25.089643	\N	["product/product_10_1692880703.jpg"]	2	\N	0	1	f	\N	
6	MESA PRETA	INDETERMINADO	PRETA COM CINZA	2	29754735826517971435485567637517	0	t	**	f	5	f	f	\N	2	t	f	2023-08-24 13:11:54.801713	2023-08-24 13:11:54.82287	\N	\N	1	\N	0	1	f	\N	
7	MESA DE GRANITO	INDETERMINADO	ROSÉ	2	99708618641812955769801199087198	0	t	**	f	6	f	f	\N	2	t	f	2023-08-29 13:18:14.29076	2023-08-29 13:18:14.310167	\N	\N	2	\N	0	1	f	\N	
8	CADEIRA	INDETERMINADO	MADEIRA	2	06834110936300369723042395844771	0	t	**	f	7	f	f	\N	2	t	f	2023-08-29 13:34:28.109823	2023-08-29 13:34:28.130726	\N	\N	2	\N	0	1	f	\N	
9	CADEIRA	INDETERMINADO	MADEIRA	2	29539771816272063303063131786871	0	t	**	f	8	f	f	\N	2	t	f	2023-08-29 13:35:25.129683	2023-08-29 13:35:25.148391	\N	\N	2	\N	0	1	f	\N	
10	DISCO CORTE AC/AI AR 302 (CLASSIC) 4.1/2" 115 X 3,0 X 22,23 NORTON	NORTON	AC/AI AR 302	3	7891345140864	0	f		t	\N	f	f	\N	2	t	f	2023-08-29 13:58:27.50705	2023-08-29 13:58:27.521865	3	["product/product_46_1693317506.jpg"]	1	\N	0	1	f	\N	
11	MESA GRANITO - MEL	INDETERMINADO	ROSÉ	2	68284135725694067776658192979734	0	t	**	f	13	f	f	\N	2	t	f	2023-08-30 14:10:57.838924	2023-08-30 14:10:57.862324	\N	\N	2	\N	0	1	f	\N	
12	MESA GRANITO - MEL	INDETERMINADO	ROSÉ	2	64008407255918436288163617852407	0	t	**	f	14	f	f	\N	2	t	f	2023-08-30 14:11:54.463916	2023-08-30 14:11:54.506644	\N	\N	2	\N	0	1	f	\N	
13	CADEIRA - MEL	INDETERMINADO	MADEIRA	1	86627828279260460458209655131020	0	t	**	f	15	f	f	\N	2	t	f	2023-08-30 14:12:44.976193	2023-08-30 14:12:44.992134	\N	\N	2	\N	0	1	f	\N	
14	MONITOR - MEL	DELL	E178FPC	2	52965264148298132022850971926574	0	t	BR-OG334H-07591-88L-471C	f	9	f	f	\N	2	t	f	2023-08-31 17:03:18.372535	2023-08-31 17:03:18.391875	\N	\N	2	\N	0	1	f	\N	
25	CADEIRA - ELIEL	FLEXFORM	UNI ALL BLACK	2	08267790240754804206717418001572	0	t	170110001736	f	23	f	f	\N	2	t	f	2023-09-12 16:45:20.904809	2023-09-12 16:45:20.920138	\N	["product/product_10_1694537120.jpg"]	2	\N	0	1	f	\N	
16	TELEFONE - MEL	GRANDSTREAM	GXP1400	2	26191560465527635009518386174642	0	t	20EYX47B102E071C	f	11	f	f	\N	2	t	f	2023-08-31 17:07:06.122934	2023-08-31 17:07:06.185121	\N	\N	2	\N	0	1	f	\N	
15	NOTEBOOK- MEL	DELL	CORE I3	2	74160560237814042864885075738638	0	t	29284413878	f	10	f	f	\N	2	t	f	2023-08-31 17:04:08.376749	2023-08-31 22:17:15.758607	\N	\N	2	\N	0	1	f	\N	
18	APOIO DE PÉ - MEL	RELIZA	PRETO /PLASTICO	2	33613629099499157205242922609591	0	t	**	f	16	f	f	\N	2	t	f	2023-08-31 17:09:09.685115	2023-08-31 17:09:09.701053	\N	\N	2	\N	0	1	f	\N	
17	CADEIRA-MEL	FLEXFORM	UNI ALL BLACK	2	72899249208802712686378887965985	0	t	170410001733	f	12	f	f	\N	2	t	f	2023-08-31 17:07:52.885848	2023-08-31 22:12:48.565171	\N	\N	2	\N	0	1	f	\N	
19	MESA GRANITO - ELTON	INDETERMINADO	ROSÉ	2	61038112412316585221351850035794	0	t	**	f	21	f	f	\N	2	t	f	2023-09-06 12:20:11.312111	2023-09-06 12:20:41.208361	\N	["product/product_64_1694002810.jpg"]	2	\N	0	1	f	\N	
20	MESA GRANITO - ELTON	INDETERMINADO	ROSÉ	2	76180744585382905054706423032854	0	t	**	f	22	f	f	\N	2	t	f	2023-09-06 12:21:21.007826	2023-09-06 12:21:21.028348	\N	["product/product_45_1694002879.jpg"]	2	\N	0	1	f	\N	
21	CADEIRA - ELTON	FLEXFORM	UNI ALL BLACK	2	91883887632186543941403568382698	0	t	170717005680	f	17	f	f	\N	2	t	f	2023-09-12 16:22:19.399096	2023-09-12 16:22:19.452182	\N	["product/product_0_1694535738.jpg"]	2	\N	0	1	f	\N	
22	MONITOR - ELTON	SAMSUNG	S19A300B	2	50397382988303838389927915271927	0	t	0214HQAC104973D	f	18	f	f	\N	2	t	f	2023-09-12 16:23:57.646861	2023-09-12 16:23:57.676203	\N	["product/product_91_1694535837.jpg"]	2	\N	0	1	f	\N	
23	NOTEBOOK - ELTON	DELL	CORE I5	2	07947684893153425226572213180132	0	t	36439269158	f	19	f	f	\N	2	t	f	2023-09-12 16:24:57.386078	2023-09-12 16:24:57.413834	\N	["product/product_65_1694535897.jpg"]	2	\N	0	1	f	\N	
24	TELEFONE - ELTON	GRANDSTREAM	GXP1400	2	49789855904716413145676691620025	0	t	20EYX47B102E708	f	20	f	f	\N	2	t	f	2023-09-12 16:26:05.557855	2023-09-12 16:26:05.579166	\N	["product/product_38_1694535965.jpg"]	2	\N	0	1	f	\N	
26	MONITOR - ELIEL	LG	W2353S	2	26748237757029094706627631773933	0	t	912SPLC74688	f	24	f	f	\N	2	t	f	2023-09-12 16:46:09.336947	2023-09-12 16:46:27.093655	\N	["product/product_49_1694537169.jpg"]	2	\N	0	1	f	\N	
27	NOTEBOOK - ELIEL	DELL	CORE I3	2	04064287833257450433475895250341	0	t	2553996854	f	25	f	f	\N	2	t	f	2023-09-12 16:48:48.099418	2023-09-12 16:48:48.120832	\N	["product/product_40_1694537327.jpg"]	2	\N	0	1	f	\N	
28	MESA PRETA - ELIEL	INDETERMINADO	PRETO/MADEIRA	2	19738965047343713674657237148749	0	t	**	f	26	f	f	\N	2	t	f	2023-10-03 12:01:56.933149	2023-10-03 12:01:56.998702	\N	\N	2	\N	0	1	f	\N	
29	teste	teste	teste	2	45624544322309466364782850775148	0	t	te	f	te	f	f	\N	2	t	f	2023-11-03 12:11:05.884183	2023-11-03 12:11:05.927247	\N	["product/product_54_1699013464.jpg"]	2	\N	0	1	f	\N	
\.


--
-- TOC entry 5203 (class 0 OID 21867)
-- Dependencies: 317
-- Data for Name: remark_vehicles; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.remark_vehicles (id, remark, user_id, vehicle_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5149 (class 0 OID 21189)
-- Dependencies: 263
-- Data for Name: request_accesses; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.request_accesses (id, reason_to_visit, visit_start_date, visit_end_date, request_sender_id, request_receiver_id, status, created_at, updated_at, training_required, access_control_incharge_status, access_control_incharge_id, request_type, employee_request_approve_date_time, incharge_request_approve_date_time, company_id) FROM stdin;
\.


--
-- TOC entry 5133 (class 0 OID 20864)
-- Dependencies: 247
-- Data for Name: requested_items; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.requested_items (id, product_id, quantity, created_at, updated_at, is_active, is_deleted, resource_request_id, proposed_date_time, reserved_quantity, reserve_till_date) FROM stdin;
\.


--
-- TOC entry 5131 (class 0 OID 20832)
-- Dependencies: 245
-- Data for Name: resource_requests; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.resource_requests (id, room_id, requested_by_id, base_module_id, created_at, updated_at, is_active, is_deleted, request_type) FROM stdin;
\.


--
-- TOC entry 5105 (class 0 OID 20519)
-- Dependencies: 219
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.roles (id, role_title, description, role_type, is_active, created_at, updated_at, training_required, company_id) FROM stdin;
1	Super Admin	For now Lorem Ipsum	6	t	2023-07-04 00:32:55.345732	2023-07-04 00:32:55.345732	\N	3
2	Company Owner	For now Lorem Ipsum	0	t	2023-07-04 00:32:56.362375	2023-07-04 00:32:56.362375	\N	3
3	Schedular	For now Lorem Ipsum	0	t	2023-07-04 00:32:57.284158	2023-07-04 00:32:57.284158	\N	3
4	Room Incharge Material	For now Lorem Ipsum	2	t	2023-07-04 00:32:58.273285	2023-07-04 00:32:58.273285	\N	3
5	Room Incharge Patrimonial	For now Lorem Ipsum	1	t	2023-07-04 00:32:59.058658	2023-07-04 00:32:59.058658	\N	3
6	Trainer	For now Lorem Ipsum	3	t	2023-07-04 00:32:59.919229	2023-07-04 00:32:59.919229	\N	3
7	Driver	For now Lorem Ipsum	4	t	2023-07-04 00:33:00.841981	2023-07-04 00:33:00.841981	\N	3
8	Helper-Driver	For now Lorem Ipsum	4	t	2023-07-04 00:33:01.618511	2023-07-04 00:33:01.618511	\N	3
9	Receiver	For now Lorem Ipsum	4	t	2023-07-04 00:33:02.507404	2023-07-04 00:33:02.507404	\N	3
10	Receiver Supervisor	For now Lorem Ipsum	4	t	2023-07-04 00:33:03.291234	2023-07-04 00:33:03.291234	\N	3
11	Maintanancer	For now Lorem Ipsum	5	t	2023-07-04 00:33:04.363657	2023-07-04 00:33:04.363657	\N	3
12	Supervisor		6	t	2023-07-27 00:15:51.923924	2023-07-27 00:15:51.923924	[]	3
14	Auxiliar de Estoque		\N	t	2023-08-31 13:18:51.298299	2023-08-31 13:18:51.298299	[{"id":6,"itemName":"Covid19"}]	2
15	Supervisor de Logistica		\N	t	2023-09-06 16:46:32.853631	2023-09-06 16:46:32.853631	[]	2
\.


--
-- TOC entry 5113 (class 0 OID 20592)
-- Dependencies: 227
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.rooms (id, room_name, room_qr_code, company_id, is_patrominial, is_material_control, is_active, is_deleted, created_at, updated_at, user_id, room_qr_url, is_epi) FROM stdin;
1	Entregamos Work	ENTGRAGAMOUS_R_1	2	t	t	t	f	2023-07-27 00:23:44.097181	2023-07-27 00:23:44.11829	5	\N	t
2	LOGISTICA	ENTGRAGAMOUS_R_2	2	t	f	t	f	2023-08-17 14:38:02.889224	2023-08-17 14:38:02.912406	7	\N	f
3	GALPÃO	ENTGRAGAMOUS_R_3	2	f	t	t	f	2023-08-29 13:45:43.599098	2023-08-29 13:45:43.608437	7	\N	f
\.


--
-- TOC entry 5100 (class 0 OID 20492)
-- Dependencies: 214
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.schema_migrations (version) FROM stdin;
20191105090826
20191105091302
20191105125740
20191105130104
20191107124528
20191108062402
20191108063854
20191108113453
20191111093304
20191112060152
20191112123244
20191112123335
20191113051453
20191113052315
20191113091950
20191114051949
20191114053023
20191114095440
20191114104341
20191115100532
20191118092701
20191118130142
20191119123032
20191120075017
20191121085757
20191121103045
20191122045355
20191122090748
20191122093253
20191125052849
20191125095023
20191125110024
20191125111208
20191125111354
20191125114554
20191125115225
20191126072621
20191126085053
20191127132617
20191128065317
20191128094336
20191128102650
20191129114156
20191129114349
20191129115014
20191202102036
20191202120525
20191202133746
20191203103102
20191203130152
20191203131434
20191205063019
20191205074018
20191206074246
20191206074523
20191206095128
20191209060122
20191209071341
20191209075554
20191213103525
20191214123627
20191214133530
20191214133857
20191218105714
20191219120716
20191220095413
20191220100241
20191223103927
20191224071249
20191225054132
20191226071852
20191230042238
20191231092301
20200103061254
20200109042749
20200109044447
20200109113814
20200113052143
20200113105708
20200113113257
20200116063739
20200117052638
20200117052934
20200117053404
20200117063752
20200121060543
20200123124112
20200127061321
20200128061737
20200128065542
20200203132938
20200206065422
20200207090359
20200207094548
20200211060243
20200211132305
20200213060601
20200214111111
20200217044333
20200217124114
20200218044814
20200218071307
20200218092908
20200218124657
20200218130132
20200219133315
20200221040935
20200221090256
20200225055402
20200724053249
20200727040016
20200729095347
20200729095539
20200814121358
20200814121708
20200814131015
20200817042124
20200817100906
20200818073437
20200818081101
20200818084046
20200818102049
20200818130203
20200819034528
20200819134134
20200821054345
20200821115405
20200825091121
20200831063544
20200901034746
20200901044731
20200901094030
20200901115359
20200902150502
20200903052700
20200904101745
20200908051906
20200910092027
20200915064041
20200915092017
20200915092320
20200921081914
20200921082723
20200921090727
20200921110919
20200925084332
20200925111458
20200925120712
20200928061309
20200928062048
20200929110858
20201009111434
20201012064236
20201012081628
20201013104035
20201014094037
20201014094104
20201014125641
20201015131948
20201015132313
20201019053538
20201020072547
20201020104146
20201022091507
20201022120517
20201102133744
20201103074649
20201105090259
20201105100233
20201111114053
20201112050153
20201113111348
20201118062120
20201118062445
20201119050433
20201123100822
20201123101749
20201124112613
20201125070545
20201126072733
20201130063312
20201203052033
20201203081513
20201204050156
20201204050621
20201204124338
20201204125718
20201211113206
20201215062647
20201215062859
20201216065956
20201216091418
20201223053632
20201223114427
20201223115322
20201228113434
20201230051853
20210105091739
20210106074159
20210109051737
20210111094459
20210111135216
20210112060834
20210112134711
20210113061122
20210113082412
20210119035735
20210121123802
20210123060938
20210123134940
20210125122927
20210125125552
20210127082927
20210127101931
20210128105937
20210202070851
20210209125408
20210216134914
20210217131635
20210920051334
20211005055332
20211021125309
20211025094104
20211026115805
20220313013141
20220313033836
20220314001642
20220316123536
20220622011855
20220622013425
20220706090510
20220810052112
20221015020018
20221016001316
20221019061025
20221031112136
\.


--
-- TOC entry 5145 (class 0 OID 21149)
-- Dependencies: 259
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.services (id, title, description, company_id, is_active, is_deleted, created_by, updated_by, created_at, updated_at, qr_code, class_list_id) FROM stdin;
\.


--
-- TOC entry 5109 (class 0 OID 20556)
-- Dependencies: 223
-- Data for Name: trainings; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.trainings (id, training_title, description, is_active, is_deleted, created_at, updated_at, user_id, company_id) FROM stdin;
1	Title 1	Title 1	t	f	2023-07-04 00:33:05.978833	2023-07-04 00:33:05.978833	\N	\N
2	Title 2	Title 2	t	f	2023-07-04 00:33:06.915253	2023-07-04 00:33:06.915253	\N	\N
3	Title 3	Title 3	t	f	2023-07-04 00:33:07.735913	2023-07-04 00:33:07.735913	\N	\N
4	Title 4	Title 4	t	f	2023-07-04 00:33:08.547961	2023-07-04 00:33:08.547961	\N	\N
5	Title 5	Title 5	t	f	2023-07-04 00:33:09.36733	2023-07-04 00:33:09.36733	\N	\N
6	Covid19	null	t	f	2023-07-26 21:30:29.177884	2023-07-26 21:30:29.177884	2	2
\.


--
-- TOC entry 5211 (class 0 OID 21998)
-- Dependencies: 325
-- Data for Name: transport_units; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.transport_units (id, identifier, weight_limit_front_axel, tare_front_axel, distance_between_supports, weight_limit_rear_axel, tare_rear_axel, distance_of_fifth_wheel, vehicle_type_id, created_at, updated_at) FROM stdin;
1	0	6000.00	3270.00	4.18	10000.00	2920.00	0.00	1	2023-07-04 21:22:41.924133	2023-07-04 21:22:41.924133
2	0	12000.00	3500.00	3.80	10000.00	2920.00	0.00	2	2023-07-04 21:22:43.463512	2023-07-04 21:22:43.463512
3	0	6000.00	2500.00	3.80	17000.00	2920.00	3.00	3	2023-07-04 21:22:45.005758	2023-07-04 21:22:45.005758
4	1	0.00	2000.00	11.00	25500.00	2000.00	0.00	3	2023-07-04 21:22:45.506382	2023-07-04 21:22:45.506382
5	0	6000.00	2500.00	3.80	17000.00	2920.00	3.00	4	2023-07-04 21:22:46.881175	2023-07-04 21:22:46.881175
6	1	0.00	2000.00	10.00	17000.00	2000.00	12.00	4	2023-07-04 21:22:47.451039	2023-07-04 21:22:47.451039
7	2	0.00	2000.00	10.00	17000.00	2000.00	0.00	4	2023-07-04 21:22:47.862442	2023-07-04 21:22:47.862442
\.


--
-- TOC entry 5139 (class 0 OID 21037)
-- Dependencies: 253
-- Data for Name: user_favourite_rooms; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.user_favourite_rooms (id, user_id, room_id, is_fav, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5107 (class 0 OID 20528)
-- Dependencies: 221
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.users (id, email, encrypted_password, jti, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, fullname, latitude, longitude, isd_code, mobile_number, mobile_verification, profile_image, passcode, qr_code, ejabbered_id, is_active, is_deleted, role_id, company_id, access_type) FROM stdin;
4	jrbrittes@gmail.com	$2a$11$YrojcWFVEG3ozD5vhQDlJeetElmQc..CCxSBoJ0YtWklaZev927nW	05629422-e644-408e-82b8-ca20eea3800a	\N	\N	\N	2023-07-27 00:17:44.433414	2023-07-27 00:17:44.433414	JOSE	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	12	2	3
5	joao@gmail.com	$2a$11$k6xzFh8ill6W4QVZ6qcQ7OTDNNK/COBMNFqxTDJJ627pexn/ubSqu	0e2ca70e-af1e-44b1-8b00-4229924c457a	\N	\N	\N	2023-07-27 00:23:16.343582	2023-07-27 00:23:16.343582	João	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	12	2	3
7	logistica@eletrosolda.com.br	$2a$11$XnXDcn6JlaL8tDYfTlzblukorRW2U9N9dtzEjimrvTrhHNXqcwAai	d6801602-4681-4919-b6b0-e3bfdcc0f710	\N	\N	\N	2023-08-17 14:37:45.44862	2023-08-17 14:37:45.44862	VICTOR DANTAS DE CASTRO	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	12	2	3
8	gabrielmbarboza@gmail.com	$2a$11$qdlUAvc7hGrGqX7lTUnn2.LnJxFuSL9E4fN3GEcJSXWWYrR7nXLUq	095b418d-765f-41bb-ade3-ddbc8b0349ba	\N	\N	\N	2023-08-20 21:52:27.646734	2023-08-31 21:48:49.354035	Gabriel M. Barboza	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	12	3	3
9	estoque@eletrosolda.com.br	$2a$11$RGzHHga.d4aJJ6AnxvRWuOFT831CPpP3ecYd6PDdUEcIy/QuuDPMq	62ec792c-5755-41a8-b0e1-cfab7aceac52	\N	\N	\N	2023-08-31 14:04:42.178038	2023-08-31 22:18:22.024661	ELIEL MONTARROYOS MARIA	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	14	2	3
3	admin@eletrosolda.com.br	$2a$11$XNJq/jJ.D0379ci..7tumeeZiqs9RNilx7NHhNcBpedCa7nc/aAe6	f874b04e-6b73-4177-8c07-17b81ef52568	\N	\N	\N	2023-07-04 02:17:35.705797	2023-10-25 13:38:23.047936	ELETROSOLDA	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	1	3	2
2	superadmin@gmail.com	$2a$11$mswg9/9fx5mCJE1T9m0EH.mcC2N1wuieLkSU9TClvFlZ50Pd/24Ze	57bd7e90-4f10-41c9-8ae1-1cca8868a63a	\N	\N	\N	2023-07-04 00:33:11.517053	2023-11-03 12:09:17.598032	Super Admin	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	1	2	1
\.


--
-- TOC entry 5167 (class 0 OID 21397)
-- Dependencies: 281
-- Data for Name: vehicle_types; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.vehicle_types (id, label, payload_capacity, average_speed, created_at, updated_at, company_id, type_code, number_of_transport_units, number_of_compartments) FROM stdin;
1	Truck	116.50	43.40	2023-07-04 21:22:41.716526	2023-07-04 21:22:41.716526	3	0	0	1
2	Bi-Truck	121.50	43.40	2023-07-04 21:22:43.252296	2023-07-04 21:22:43.252296	3	1	0	1
3	Trail	127.50	52.70	2023-07-04 21:22:44.788918	2023-07-04 21:22:44.788918	3	2	1	1
4	Heavy Truck	172.00	48.60	2023-07-04 21:22:46.711143	2023-07-04 21:22:46.711143	3	4	2	1
\.


--
-- TOC entry 5165 (class 0 OID 21382)
-- Dependencies: 279
-- Data for Name: vehicles; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.vehicles (id, fixed_vehicle_cost, cost_km_driven, vehicle_service_time_per_day, license_plate, created_at, updated_at, vehicle_type_id, company_id, qr_code, vehicle_available, license_type, is_loaded, is_assigned, is_started, longtitude, latitude) FROM stdin;
1	10.72	95.82	6.24213922311713	dhxauoq	2023-07-04 21:22:52.061524	2023-07-04 21:22:52.571995	1	3	dhxauoq1	f	2	t	t	f	-122.05158496106972	24.08957575763749
2	81.48	32.63	4.415283685606032	cyabrso	2023-07-04 21:22:54.110094	2023-07-04 21:22:54.514586	2	3	cyabrso2	f	4	f	f	t	111.63943044395018	-62.95242901097251
3	29.95	80.14	4.760777047514075	wunbeus	2023-07-04 21:22:56.20508	2023-07-04 21:22:56.667322	3	3	wunbeus3	f	4	f	f	f	-54.347625523734294	-67.22761393855706
4	18.84	88.55	6.794537523650974	cevpfka	2023-07-04 21:22:58.101144	2023-07-04 21:22:58.622971	4	3	cevpfka4	f	4	t	f	f	44.364802071938726	-15.784658942508486
\.


--
-- TOC entry 5155 (class 0 OID 21234)
-- Dependencies: 269
-- Data for Name: visitor_request_accesses; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.visitor_request_accesses (id, visitor_id, request_access_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 5151 (class 0 OID 21198)
-- Dependencies: 265
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: logistic-api-app
--

COPY public.visitors (id, employee_id, document_type, document_number, vehicle_plate_number, created_at, updated_at, name, email, company_name, visitor_id, social_security_number, training_completed, contact_number, company_id) FROM stdin;
\.


--
-- TOC entry 5284 (class 0 OID 0)
-- Dependencies: 238
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 6, true);


--
-- TOC entry 5285 (class 0 OID 0)
-- Dependencies: 236
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 9, true);


--
-- TOC entry 5286 (class 0 OID 0)
-- Dependencies: 270
-- Name: attendence_systems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.attendence_systems_id_seq', 1, false);


--
-- TOC entry 5287 (class 0 OID 0)
-- Dependencies: 274
-- Name: audit_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.audit_employees_id_seq', 1, false);


--
-- TOC entry 5288 (class 0 OID 0)
-- Dependencies: 276
-- Name: audit_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.audit_products_id_seq', 1, false);


--
-- TOC entry 5289 (class 0 OID 0)
-- Dependencies: 272
-- Name: audits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.audits_id_seq', 1, false);


--
-- TOC entry 5290 (class 0 OID 0)
-- Dependencies: 230
-- Name: base_module_functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.base_module_functions_id_seq', 29, true);


--
-- TOC entry 5291 (class 0 OID 0)
-- Dependencies: 228
-- Name: base_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.base_modules_id_seq', 8, true);


--
-- TOC entry 5292 (class 0 OID 0)
-- Dependencies: 232
-- Name: class_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.class_lists_id_seq', 1, false);


--
-- TOC entry 5293 (class 0 OID 0)
-- Dependencies: 216
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.companies_id_seq', 3, true);


--
-- TOC entry 5294 (class 0 OID 0)
-- Dependencies: 326
-- Name: compartments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.compartments_id_seq', 7, true);


--
-- TOC entry 5295 (class 0 OID 0)
-- Dependencies: 302
-- Name: complaint_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.complaint_logs_id_seq', 1, false);


--
-- TOC entry 5296 (class 0 OID 0)
-- Dependencies: 300
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.complaints_id_seq', 1, false);


--
-- TOC entry 5297 (class 0 OID 0)
-- Dependencies: 310
-- Name: courier_helpers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.courier_helpers_id_seq', 1, false);


--
-- TOC entry 5298 (class 0 OID 0)
-- Dependencies: 318
-- Name: current_drivers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.current_drivers_id_seq', 1, false);


--
-- TOC entry 5299 (class 0 OID 0)
-- Dependencies: 296
-- Name: damage_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.damage_packages_id_seq', 1, false);


--
-- TOC entry 5300 (class 0 OID 0)
-- Dependencies: 314
-- Name: driver_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.driver_histories_id_seq', 1, false);


--
-- TOC entry 5301 (class 0 OID 0)
-- Dependencies: 322
-- Name: employee_trainings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.employee_trainings_id_seq', 1, false);


--
-- TOC entry 5302 (class 0 OID 0)
-- Dependencies: 248
-- Name: employee_user_functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.employee_user_functions_id_seq', 82, true);


--
-- TOC entry 5303 (class 0 OID 0)
-- Dependencies: 224
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.employees_id_seq', 6, true);


--
-- TOC entry 5304 (class 0 OID 0)
-- Dependencies: 266
-- Name: gadgets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.gadgets_id_seq', 1, false);


--
-- TOC entry 5305 (class 0 OID 0)
-- Dependencies: 332
-- Name: gate_access_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.gate_access_entries_id_seq', 1, false);


--
-- TOC entry 5306 (class 0 OID 0)
-- Dependencies: 330
-- Name: grouped_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.grouped_orders_id_seq', 4, true);


--
-- TOC entry 5307 (class 0 OID 0)
-- Dependencies: 256
-- Name: inspection_helpers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.inspection_helpers_id_seq', 1, false);


--
-- TOC entry 5308 (class 0 OID 0)
-- Dependencies: 250
-- Name: inspections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.inspections_id_seq', 1, false);


--
-- TOC entry 5309 (class 0 OID 0)
-- Dependencies: 284
-- Name: invoices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.invoices_id_seq', 6, true);


--
-- TOC entry 5310 (class 0 OID 0)
-- Dependencies: 312
-- Name: license_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.license_docs_id_seq', 1, false);


--
-- TOC entry 5311 (class 0 OID 0)
-- Dependencies: 282
-- Name: loads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.loads_id_seq', 1, false);


--
-- TOC entry 5312 (class 0 OID 0)
-- Dependencies: 254
-- Name: maintainances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.maintainances_id_seq', 1, false);


--
-- TOC entry 5313 (class 0 OID 0)
-- Dependencies: 240
-- Name: measurements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.measurements_id_seq', 4, true);


--
-- TOC entry 5314 (class 0 OID 0)
-- Dependencies: 298
-- Name: missing_packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.missing_packages_id_seq', 1, false);


--
-- TOC entry 5315 (class 0 OID 0)
-- Dependencies: 260
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- TOC entry 5316 (class 0 OID 0)
-- Dependencies: 304
-- Name: order_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_actions_id_seq', 1, false);


--
-- TOC entry 5317 (class 0 OID 0)
-- Dependencies: 328
-- Name: order_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_groups_id_seq', 3, true);


--
-- TOC entry 5318 (class 0 OID 0)
-- Dependencies: 292
-- Name: order_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_histories_id_seq', 1, false);


--
-- TOC entry 5319 (class 0 OID 0)
-- Dependencies: 294
-- Name: order_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_logs_id_seq', 1, false);


--
-- TOC entry 5320 (class 0 OID 0)
-- Dependencies: 308
-- Name: order_passes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_passes_id_seq', 1, false);


--
-- TOC entry 5321 (class 0 OID 0)
-- Dependencies: 320
-- Name: order_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.order_statuses_id_seq', 2, true);


--
-- TOC entry 5322 (class 0 OID 0)
-- Dependencies: 290
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, true);


--
-- TOC entry 5323 (class 0 OID 0)
-- Dependencies: 288
-- Name: other_companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.other_companies_id_seq', 3, true);


--
-- TOC entry 5324 (class 0 OID 0)
-- Dependencies: 306
-- Name: package_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.package_actions_id_seq', 1, false);


--
-- TOC entry 5325 (class 0 OID 0)
-- Dependencies: 286
-- Name: packages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.packages_id_seq', 7, true);


--
-- TOC entry 5326 (class 0 OID 0)
-- Dependencies: 242
-- Name: product_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.product_logs_id_seq', 41, true);


--
-- TOC entry 5327 (class 0 OID 0)
-- Dependencies: 234
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.products_id_seq', 29, true);


--
-- TOC entry 5328 (class 0 OID 0)
-- Dependencies: 316
-- Name: remark_vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.remark_vehicles_id_seq', 1, false);


--
-- TOC entry 5329 (class 0 OID 0)
-- Dependencies: 262
-- Name: request_accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.request_accesses_id_seq', 1, false);


--
-- TOC entry 5330 (class 0 OID 0)
-- Dependencies: 246
-- Name: requested_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.requested_items_id_seq', 1, false);


--
-- TOC entry 5331 (class 0 OID 0)
-- Dependencies: 244
-- Name: resource_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.resource_requests_id_seq', 1, false);


--
-- TOC entry 5332 (class 0 OID 0)
-- Dependencies: 218
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.roles_id_seq', 15, true);


--
-- TOC entry 5333 (class 0 OID 0)
-- Dependencies: 226
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.rooms_id_seq', 3, true);


--
-- TOC entry 5334 (class 0 OID 0)
-- Dependencies: 258
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- TOC entry 5335 (class 0 OID 0)
-- Dependencies: 222
-- Name: trainings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.trainings_id_seq', 6, true);


--
-- TOC entry 5336 (class 0 OID 0)
-- Dependencies: 324
-- Name: transport_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.transport_units_id_seq', 7, true);


--
-- TOC entry 5337 (class 0 OID 0)
-- Dependencies: 252
-- Name: user_favourite_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.user_favourite_rooms_id_seq', 1, false);


--
-- TOC entry 5338 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.users_id_seq', 9, true);


--
-- TOC entry 5339 (class 0 OID 0)
-- Dependencies: 280
-- Name: vehicle_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.vehicle_types_id_seq', 4, true);


--
-- TOC entry 5340 (class 0 OID 0)
-- Dependencies: 278
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.vehicles_id_seq', 4, true);


--
-- TOC entry 5341 (class 0 OID 0)
-- Dependencies: 268
-- Name: visitor_request_accesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.visitor_request_accesses_id_seq', 1, false);


--
-- TOC entry 5342 (class 0 OID 0)
-- Dependencies: 264
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: logistic-api-app
--

SELECT pg_catalog.setval('public.visitors_id_seq', 1, false);


--
-- TOC entry 4641 (class 2606 OID 20777)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 4638 (class 2606 OID 20767)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 4596 (class 2606 OID 20505)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 4708 (class 2606 OID 21294)
-- Name: attendence_systems attendence_systems_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.attendence_systems
    ADD CONSTRAINT attendence_systems_pkey PRIMARY KEY (id);


--
-- TOC entry 4714 (class 2606 OID 21349)
-- Name: audit_employees audit_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT audit_employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4718 (class 2606 OID 21368)
-- Name: audit_products audit_products_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT audit_products_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 21336)
-- Name: audits audits_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT audits_pkey PRIMARY KEY (id);


--
-- TOC entry 4625 (class 2606 OID 20655)
-- Name: base_module_functions base_module_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.base_module_functions
    ADD CONSTRAINT base_module_functions_pkey PRIMARY KEY (id);


--
-- TOC entry 4623 (class 2606 OID 20631)
-- Name: base_modules base_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.base_modules
    ADD CONSTRAINT base_modules_pkey PRIMARY KEY (id);


--
-- TOC entry 4628 (class 2606 OID 20688)
-- Name: class_lists class_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.class_lists
    ADD CONSTRAINT class_lists_pkey PRIMARY KEY (id);


--
-- TOC entry 4598 (class 2606 OID 20517)
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- TOC entry 4831 (class 2606 OID 22018)
-- Name: compartments compartments_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.compartments
    ADD CONSTRAINT compartments_pkey PRIMARY KEY (id);


--
-- TOC entry 4774 (class 2606 OID 21683)
-- Name: complaint_logs complaint_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT complaint_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4768 (class 2606 OID 21643)
-- Name: complaints complaints_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_pkey PRIMARY KEY (id);


--
-- TOC entry 4797 (class 2606 OID 21786)
-- Name: courier_helpers courier_helpers_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT courier_helpers_pkey PRIMARY KEY (id);


--
-- TOC entry 4815 (class 2606 OID 21894)
-- Name: current_drivers current_drivers_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT current_drivers_pkey PRIMARY KEY (id);


--
-- TOC entry 4756 (class 2606 OID 21581)
-- Name: damage_packages damage_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT damage_packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4807 (class 2606 OID 21853)
-- Name: driver_histories driver_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT driver_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 21962)
-- Name: employee_trainings employee_trainings_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_trainings
    ADD CONSTRAINT employee_trainings_pkey PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 20993)
-- Name: employee_user_functions employee_user_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT employee_user_functions_pkey PRIMARY KEY (id);


--
-- TOC entry 4614 (class 2606 OID 20572)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4700 (class 2606 OID 21224)
-- Name: gadgets gadgets_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT gadgets_pkey PRIMARY KEY (id);


--
-- TOC entry 4841 (class 2606 OID 22065)
-- Name: gate_access_entries gate_access_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gate_access_entries
    ADD CONSTRAINT gate_access_entries_pkey PRIMARY KEY (id);


--
-- TOC entry 4836 (class 2606 OID 22040)
-- Name: grouped_orders grouped_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT grouped_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 21098)
-- Name: inspection_helpers inspection_helpers_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT inspection_helpers_pkey PRIMARY KEY (id);


--
-- TOC entry 4671 (class 2606 OID 21027)
-- Name: inspections inspections_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspections
    ADD CONSTRAINT inspections_pkey PRIMARY KEY (id);


--
-- TOC entry 4736 (class 2606 OID 21436)
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- TOC entry 4805 (class 2606 OID 21833)
-- Name: license_docs license_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT license_docs_pkey PRIMARY KEY (id);


--
-- TOC entry 4731 (class 2606 OID 21412)
-- Name: loads loads_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.loads
    ADD CONSTRAINT loads_pkey PRIMARY KEY (id);


--
-- TOC entry 4680 (class 2606 OID 21069)
-- Name: maintainances maintainances_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT maintainances_pkey PRIMARY KEY (id);


--
-- TOC entry 4645 (class 2606 OID 20795)
-- Name: measurements measurements_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.measurements
    ADD CONSTRAINT measurements_pkey PRIMARY KEY (id);


--
-- TOC entry 4766 (class 2606 OID 21615)
-- Name: missing_packages missing_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT missing_packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4691 (class 2606 OID 21187)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4783 (class 2606 OID 21709)
-- Name: order_actions order_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT order_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 4834 (class 2606 OID 22033)
-- Name: order_groups order_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_groups
    ADD CONSTRAINT order_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4749 (class 2606 OID 21548)
-- Name: order_histories order_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_histories
    ADD CONSTRAINT order_histories_pkey PRIMARY KEY (id);


--
-- TOC entry 4754 (class 2606 OID 21555)
-- Name: order_logs order_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT order_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4795 (class 2606 OID 21761)
-- Name: order_passes order_passes_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT order_passes_pkey PRIMARY KEY (id);


--
-- TOC entry 4824 (class 2606 OID 21921)
-- Name: order_statuses order_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT order_statuses_pkey PRIMARY KEY (id);


--
-- TOC entry 4747 (class 2606 OID 21515)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4742 (class 2606 OID 21481)
-- Name: other_companies other_companies_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.other_companies
    ADD CONSTRAINT other_companies_pkey PRIMARY KEY (id);


--
-- TOC entry 4790 (class 2606 OID 21734)
-- Name: package_actions package_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT package_actions_pkey PRIMARY KEY (id);


--
-- TOC entry 4739 (class 2606 OID 21472)
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- TOC entry 4653 (class 2606 OID 20812)
-- Name: product_logs product_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT product_logs_pkey PRIMARY KEY (id);


--
-- TOC entry 4636 (class 2606 OID 20703)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4813 (class 2606 OID 21874)
-- Name: remark_vehicles remark_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT remark_vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 4694 (class 2606 OID 21196)
-- Name: request_accesses request_accesses_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.request_accesses
    ADD CONSTRAINT request_accesses_pkey PRIMARY KEY (id);


--
-- TOC entry 4662 (class 2606 OID 20869)
-- Name: requested_items requested_items_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT requested_items_pkey PRIMARY KEY (id);


--
-- TOC entry 4658 (class 2606 OID 20837)
-- Name: resource_requests resource_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT resource_requests_pkey PRIMARY KEY (id);


--
-- TOC entry 4601 (class 2606 OID 20526)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4621 (class 2606 OID 20599)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4594 (class 2606 OID 20498)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 4689 (class 2606 OID 21158)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- TOC entry 4612 (class 2606 OID 20563)
-- Name: trainings trainings_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT trainings_pkey PRIMARY KEY (id);


--
-- TOC entry 4829 (class 2606 OID 22004)
-- Name: transport_units transport_units_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.transport_units
    ADD CONSTRAINT transport_units_pkey PRIMARY KEY (id);


--
-- TOC entry 4675 (class 2606 OID 21043)
-- Name: user_favourite_rooms user_favourite_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT user_favourite_rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 4608 (class 2606 OID 20537)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4728 (class 2606 OID 21405)
-- Name: vehicle_types vehicle_types_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicle_types
    ADD CONSTRAINT vehicle_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4724 (class 2606 OID 21389)
-- Name: vehicles vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (id);


--
-- TOC entry 4706 (class 2606 OID 21239)
-- Name: visitor_request_accesses visitor_request_accesses_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT visitor_request_accesses_pkey PRIMARY KEY (id);


--
-- TOC entry 4698 (class 2606 OID 21205)
-- Name: visitors visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (id);


--
-- TOC entry 4642 (class 1259 OID 20783)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 4643 (class 1259 OID 20784)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 4639 (class 1259 OID 20768)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 4709 (class 1259 OID 21300)
-- Name: index_attendence_systems_on_employee_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_attendence_systems_on_employee_id ON public.attendence_systems USING btree (employee_id);


--
-- TOC entry 4715 (class 1259 OID 21361)
-- Name: index_audit_employees_on_audit_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_audit_employees_on_audit_id ON public.audit_employees USING btree (audit_id);


--
-- TOC entry 4716 (class 1259 OID 21360)
-- Name: index_audit_employees_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_audit_employees_on_user_id ON public.audit_employees USING btree (user_id);


--
-- TOC entry 4719 (class 1259 OID 21379)
-- Name: index_audit_products_on_audit_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_audit_products_on_audit_id ON public.audit_products USING btree (audit_id);


--
-- TOC entry 4720 (class 1259 OID 21380)
-- Name: index_audit_products_on_product_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_audit_products_on_product_id ON public.audit_products USING btree (product_id);


--
-- TOC entry 4712 (class 1259 OID 21342)
-- Name: index_audits_on_room_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_audits_on_room_id ON public.audits USING btree (room_id);


--
-- TOC entry 4626 (class 1259 OID 20661)
-- Name: index_base_module_functions_on_base_module_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_base_module_functions_on_base_module_id ON public.base_module_functions USING btree (base_module_id);


--
-- TOC entry 4629 (class 1259 OID 20694)
-- Name: index_class_lists_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_class_lists_on_company_id ON public.class_lists USING btree (company_id);


--
-- TOC entry 4832 (class 1259 OID 22024)
-- Name: index_compartments_on_transport_unit_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_compartments_on_transport_unit_id ON public.compartments USING btree (transport_unit_id);


--
-- TOC entry 4775 (class 1259 OID 21701)
-- Name: index_complaint_logs_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaint_logs_on_company_id ON public.complaint_logs USING btree (company_id);


--
-- TOC entry 4776 (class 1259 OID 21700)
-- Name: index_complaint_logs_on_complaint_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaint_logs_on_complaint_id ON public.complaint_logs USING btree (complaint_id);


--
-- TOC entry 4777 (class 1259 OID 21699)
-- Name: index_complaint_logs_on_invoice_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaint_logs_on_invoice_id ON public.complaint_logs USING btree (invoice_id);


--
-- TOC entry 4778 (class 1259 OID 22054)
-- Name: index_complaint_logs_on_respond_by_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaint_logs_on_respond_by_id ON public.complaint_logs USING btree (respond_by_id);


--
-- TOC entry 4769 (class 1259 OID 21660)
-- Name: index_complaints_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaints_on_company_id ON public.complaints USING btree (company_id);


--
-- TOC entry 4770 (class 1259 OID 21774)
-- Name: index_complaints_on_invoice_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaints_on_invoice_id ON public.complaints USING btree (invoice_id);


--
-- TOC entry 4771 (class 1259 OID 21661)
-- Name: index_complaints_on_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaints_on_order_id ON public.complaints USING btree (order_id);


--
-- TOC entry 4772 (class 1259 OID 21659)
-- Name: index_complaints_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_complaints_on_user_id ON public.complaints USING btree (user_id);


--
-- TOC entry 4798 (class 1259 OID 21798)
-- Name: index_courier_helpers_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_courier_helpers_on_company_id ON public.courier_helpers USING btree (company_id);


--
-- TOC entry 4799 (class 1259 OID 21805)
-- Name: index_courier_helpers_on_order_pass_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_courier_helpers_on_order_pass_id ON public.courier_helpers USING btree (order_pass_id);


--
-- TOC entry 4800 (class 1259 OID 21797)
-- Name: index_courier_helpers_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_courier_helpers_on_user_id ON public.courier_helpers USING btree (user_id);


--
-- TOC entry 4801 (class 1259 OID 21799)
-- Name: index_courier_helpers_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_courier_helpers_on_vehicle_id ON public.courier_helpers USING btree (vehicle_id);


--
-- TOC entry 4816 (class 1259 OID 21950)
-- Name: index_current_drivers_on_order_pass_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_current_drivers_on_order_pass_id ON public.current_drivers USING btree (order_pass_id);


--
-- TOC entry 4817 (class 1259 OID 21905)
-- Name: index_current_drivers_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_current_drivers_on_user_id ON public.current_drivers USING btree (user_id);


--
-- TOC entry 4818 (class 1259 OID 21906)
-- Name: index_current_drivers_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_current_drivers_on_vehicle_id ON public.current_drivers USING btree (vehicle_id);


--
-- TOC entry 4757 (class 1259 OID 21599)
-- Name: index_damage_packages_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_damage_packages_on_company_id ON public.damage_packages USING btree (company_id);


--
-- TOC entry 4758 (class 1259 OID 21662)
-- Name: index_damage_packages_on_complaint_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_damage_packages_on_complaint_id ON public.damage_packages USING btree (complaint_id);


--
-- TOC entry 4759 (class 1259 OID 21598)
-- Name: index_damage_packages_on_package_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_damage_packages_on_package_id ON public.damage_packages USING btree (package_id);


--
-- TOC entry 4760 (class 1259 OID 21597)
-- Name: index_damage_packages_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_damage_packages_on_user_id ON public.damage_packages USING btree (user_id);


--
-- TOC entry 4808 (class 1259 OID 21865)
-- Name: index_driver_histories_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_driver_histories_on_user_id ON public.driver_histories USING btree (user_id);


--
-- TOC entry 4809 (class 1259 OID 21864)
-- Name: index_driver_histories_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_driver_histories_on_vehicle_id ON public.driver_histories USING btree (vehicle_id);


--
-- TOC entry 4665 (class 1259 OID 21005)
-- Name: index_employee_user_functions_on_base_module_function_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employee_user_functions_on_base_module_function_id ON public.employee_user_functions USING btree (base_module_function_id);


--
-- TOC entry 4666 (class 1259 OID 21111)
-- Name: index_employee_user_functions_on_base_module_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employee_user_functions_on_base_module_id ON public.employee_user_functions USING btree (base_module_id);


--
-- TOC entry 4667 (class 1259 OID 21004)
-- Name: index_employee_user_functions_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employee_user_functions_on_user_id ON public.employee_user_functions USING btree (user_id);


--
-- TOC entry 4615 (class 1259 OID 20588)
-- Name: index_employees_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employees_on_company_id ON public.employees USING btree (company_id);


--
-- TOC entry 4616 (class 1259 OID 20590)
-- Name: index_employees_on_role_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employees_on_role_id ON public.employees USING btree (role_id);


--
-- TOC entry 4617 (class 1259 OID 20589)
-- Name: index_employees_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_employees_on_user_id ON public.employees USING btree (user_id);


--
-- TOC entry 4701 (class 1259 OID 21323)
-- Name: index_gadgets_on_request_access_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_gadgets_on_request_access_id ON public.gadgets USING btree (request_access_id);


--
-- TOC entry 4702 (class 1259 OID 21230)
-- Name: index_gadgets_on_visitor_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_gadgets_on_visitor_id ON public.gadgets USING btree (visitor_id);


--
-- TOC entry 4842 (class 1259 OID 22071)
-- Name: index_gate_access_entries_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_gate_access_entries_on_company_id ON public.gate_access_entries USING btree (company_id);


--
-- TOC entry 4837 (class 1259 OID 22051)
-- Name: index_grouped_orders_on_order_group_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_grouped_orders_on_order_group_id ON public.grouped_orders USING btree (order_group_id);


--
-- TOC entry 4838 (class 1259 OID 22053)
-- Name: index_grouped_orders_on_order_group_id_and_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_grouped_orders_on_order_group_id_and_order_id ON public.grouped_orders USING btree (order_group_id, order_id);


--
-- TOC entry 4839 (class 1259 OID 22052)
-- Name: index_grouped_orders_on_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_grouped_orders_on_order_id ON public.grouped_orders USING btree (order_id);


--
-- TOC entry 4681 (class 1259 OID 21110)
-- Name: index_inspection_helpers_on_inspection_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_inspection_helpers_on_inspection_id ON public.inspection_helpers USING btree (inspection_id);


--
-- TOC entry 4682 (class 1259 OID 21120)
-- Name: index_inspection_helpers_on_maintainance_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_inspection_helpers_on_maintainance_id ON public.inspection_helpers USING btree (maintainance_id);


--
-- TOC entry 4683 (class 1259 OID 21109)
-- Name: index_inspection_helpers_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_inspection_helpers_on_user_id ON public.inspection_helpers USING btree (user_id);


--
-- TOC entry 4668 (class 1259 OID 21172)
-- Name: index_inspections_on_inspectable_type_and_inspectable_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_inspections_on_inspectable_type_and_inspectable_id ON public.inspections USING btree (inspectable_type, inspectable_id);


--
-- TOC entry 4669 (class 1259 OID 21033)
-- Name: index_inspections_on_product_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_inspections_on_product_id ON public.inspections USING btree (product_id);


--
-- TOC entry 4732 (class 1259 OID 21437)
-- Name: index_invoices_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_invoices_on_company_id ON public.invoices USING btree (company_id);


--
-- TOC entry 4733 (class 1259 OID 21528)
-- Name: index_invoices_on_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_invoices_on_order_id ON public.invoices USING btree (order_id);


--
-- TOC entry 4734 (class 1259 OID 21488)
-- Name: index_invoices_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_invoices_on_user_id ON public.invoices USING btree (user_id);


--
-- TOC entry 4802 (class 1259 OID 21845)
-- Name: index_license_docs_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_license_docs_on_company_id ON public.license_docs USING btree (company_id);


--
-- TOC entry 4803 (class 1259 OID 21844)
-- Name: index_license_docs_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_license_docs_on_user_id ON public.license_docs USING btree (user_id);


--
-- TOC entry 4729 (class 1259 OID 21418)
-- Name: index_loads_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_loads_on_company_id ON public.loads USING btree (company_id);


--
-- TOC entry 4676 (class 1259 OID 21075)
-- Name: index_maintainances_on_inspection_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_maintainances_on_inspection_id ON public.maintainances USING btree (inspection_id);


--
-- TOC entry 4677 (class 1259 OID 21173)
-- Name: index_maintainances_on_maintainable_type_and_maintainable_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_maintainances_on_maintainable_type_and_maintainable_id ON public.maintainances USING btree (maintainable_type, maintainable_id);


--
-- TOC entry 4678 (class 1259 OID 21082)
-- Name: index_maintainances_on_product_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_maintainances_on_product_id ON public.maintainances USING btree (product_id);


--
-- TOC entry 4761 (class 1259 OID 21633)
-- Name: index_missing_packages_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_missing_packages_on_company_id ON public.missing_packages USING btree (company_id);


--
-- TOC entry 4762 (class 1259 OID 21668)
-- Name: index_missing_packages_on_complaint_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_missing_packages_on_complaint_id ON public.missing_packages USING btree (complaint_id);


--
-- TOC entry 4763 (class 1259 OID 21632)
-- Name: index_missing_packages_on_package_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_missing_packages_on_package_id ON public.missing_packages USING btree (package_id);


--
-- TOC entry 4764 (class 1259 OID 21631)
-- Name: index_missing_packages_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_missing_packages_on_user_id ON public.missing_packages USING btree (user_id);


--
-- TOC entry 4779 (class 1259 OID 21725)
-- Name: index_order_actions_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_actions_on_company_id ON public.order_actions USING btree (company_id);


--
-- TOC entry 4780 (class 1259 OID 21726)
-- Name: index_order_actions_on_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_actions_on_order_id ON public.order_actions USING btree (order_id);


--
-- TOC entry 4781 (class 1259 OID 21727)
-- Name: index_order_actions_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_actions_on_vehicle_id ON public.order_actions USING btree (vehicle_id);


--
-- TOC entry 4750 (class 1259 OID 21566)
-- Name: index_order_logs_on_invoice_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_logs_on_invoice_id ON public.order_logs USING btree (invoice_id);


--
-- TOC entry 4751 (class 1259 OID 21569)
-- Name: index_order_logs_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_logs_on_user_id ON public.order_logs USING btree (user_id);


--
-- TOC entry 4752 (class 1259 OID 21567)
-- Name: index_order_logs_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_logs_on_vehicle_id ON public.order_logs USING btree (vehicle_id);


--
-- TOC entry 4791 (class 1259 OID 21907)
-- Name: index_order_passes_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_passes_on_company_id ON public.order_passes USING btree (company_id);


--
-- TOC entry 4792 (class 1259 OID 21817)
-- Name: index_order_passes_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_passes_on_user_id ON public.order_passes USING btree (user_id);


--
-- TOC entry 4793 (class 1259 OID 21767)
-- Name: index_order_passes_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_passes_on_vehicle_id ON public.order_passes USING btree (vehicle_id);


--
-- TOC entry 4819 (class 1259 OID 21944)
-- Name: index_order_statuses_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_statuses_on_company_id ON public.order_statuses USING btree (company_id);


--
-- TOC entry 4820 (class 1259 OID 21942)
-- Name: index_order_statuses_on_order_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_statuses_on_order_id ON public.order_statuses USING btree (order_id);


--
-- TOC entry 4821 (class 1259 OID 21945)
-- Name: index_order_statuses_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_statuses_on_user_id ON public.order_statuses USING btree (user_id);


--
-- TOC entry 4822 (class 1259 OID 21943)
-- Name: index_order_statuses_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_order_statuses_on_vehicle_id ON public.order_statuses USING btree (vehicle_id);


--
-- TOC entry 4743 (class 1259 OID 21526)
-- Name: index_orders_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_orders_on_company_id ON public.orders USING btree (company_id);


--
-- TOC entry 4744 (class 1259 OID 21527)
-- Name: index_orders_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_orders_on_user_id ON public.orders USING btree (user_id);


--
-- TOC entry 4745 (class 1259 OID 21600)
-- Name: index_orders_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_orders_on_vehicle_id ON public.orders USING btree (vehicle_id);


--
-- TOC entry 4740 (class 1259 OID 21487)
-- Name: index_other_companies_on_invoice_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_other_companies_on_invoice_id ON public.other_companies USING btree (invoice_id);


--
-- TOC entry 4784 (class 1259 OID 21768)
-- Name: index_package_actions_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_package_actions_on_company_id ON public.package_actions USING btree (company_id);


--
-- TOC entry 4785 (class 1259 OID 21751)
-- Name: index_package_actions_on_order_action_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_package_actions_on_order_action_id ON public.package_actions USING btree (order_action_id);


--
-- TOC entry 4786 (class 1259 OID 21811)
-- Name: index_package_actions_on_order_pass_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_package_actions_on_order_pass_id ON public.package_actions USING btree (order_pass_id);


--
-- TOC entry 4787 (class 1259 OID 21752)
-- Name: index_package_actions_on_package_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_package_actions_on_package_id ON public.package_actions USING btree (package_id);


--
-- TOC entry 4788 (class 1259 OID 21750)
-- Name: index_package_actions_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_package_actions_on_user_id ON public.package_actions USING btree (user_id);


--
-- TOC entry 4737 (class 1259 OID 21494)
-- Name: index_packages_on_invoice_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_packages_on_invoice_id ON public.packages USING btree (invoice_id);


--
-- TOC entry 4646 (class 1259 OID 20935)
-- Name: index_product_logs_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_company_id ON public.product_logs USING btree (company_id);


--
-- TOC entry 4647 (class 1259 OID 20923)
-- Name: index_product_logs_on_giver_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_giver_id ON public.product_logs USING btree (giver_id);


--
-- TOC entry 4648 (class 1259 OID 20828)
-- Name: index_product_logs_on_product_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_product_id ON public.product_logs USING btree (product_id);


--
-- TOC entry 4649 (class 1259 OID 20929)
-- Name: index_product_logs_on_receiver_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_receiver_id ON public.product_logs USING btree (receiver_id);


--
-- TOC entry 4650 (class 1259 OID 21016)
-- Name: index_product_logs_on_ref_table_type_and_ref_table_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_ref_table_type_and_ref_table_id ON public.product_logs USING btree (ref_table_type, ref_table_id);


--
-- TOC entry 4651 (class 1259 OID 20829)
-- Name: index_product_logs_on_room_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_product_logs_on_room_id ON public.product_logs USING btree (room_id);


--
-- TOC entry 4630 (class 1259 OID 20720)
-- Name: index_products_on_class_list_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_products_on_class_list_id ON public.products USING btree (class_list_id);


--
-- TOC entry 4631 (class 1259 OID 20721)
-- Name: index_products_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_products_on_company_id ON public.products USING btree (company_id);


--
-- TOC entry 4632 (class 1259 OID 20796)
-- Name: index_products_on_measurement_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_products_on_measurement_id ON public.products USING btree (measurement_id);


--
-- TOC entry 4633 (class 1259 OID 21077)
-- Name: index_products_on_patrimonial_qr_code; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_products_on_patrimonial_qr_code ON public.products USING btree (patrimonial_qr_code);


--
-- TOC entry 4634 (class 1259 OID 20719)
-- Name: index_products_on_room_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_products_on_room_id ON public.products USING btree (room_id);


--
-- TOC entry 4810 (class 1259 OID 21885)
-- Name: index_remark_vehicles_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_remark_vehicles_on_user_id ON public.remark_vehicles USING btree (user_id);


--
-- TOC entry 4811 (class 1259 OID 21886)
-- Name: index_remark_vehicles_on_vehicle_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_remark_vehicles_on_vehicle_id ON public.remark_vehicles USING btree (vehicle_id);


--
-- TOC entry 4692 (class 1259 OID 21266)
-- Name: index_request_accesses_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_request_accesses_on_company_id ON public.request_accesses USING btree (company_id);


--
-- TOC entry 4659 (class 1259 OID 20881)
-- Name: index_requested_items_on_product_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_requested_items_on_product_id ON public.requested_items USING btree (product_id);


--
-- TOC entry 4660 (class 1259 OID 20884)
-- Name: index_requested_items_on_resource_request_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_requested_items_on_resource_request_id ON public.requested_items USING btree (resource_request_id);


--
-- TOC entry 4654 (class 1259 OID 20862)
-- Name: index_resource_requests_on_base_module_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_resource_requests_on_base_module_id ON public.resource_requests USING btree (base_module_id);


--
-- TOC entry 4655 (class 1259 OID 20861)
-- Name: index_resource_requests_on_requested_by_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_resource_requests_on_requested_by_id ON public.resource_requests USING btree (requested_by_id);


--
-- TOC entry 4656 (class 1259 OID 20859)
-- Name: index_resource_requests_on_room_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_resource_requests_on_room_id ON public.resource_requests USING btree (room_id);


--
-- TOC entry 4599 (class 1259 OID 20606)
-- Name: index_roles_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_roles_on_company_id ON public.roles USING btree (company_id);


--
-- TOC entry 4618 (class 1259 OID 20605)
-- Name: index_rooms_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_rooms_on_company_id ON public.rooms USING btree (company_id);


--
-- TOC entry 4619 (class 1259 OID 20674)
-- Name: index_rooms_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_rooms_on_user_id ON public.rooms USING btree (user_id);


--
-- TOC entry 4686 (class 1259 OID 21166)
-- Name: index_services_on_class_list_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_services_on_class_list_id ON public.services USING btree (class_list_id);


--
-- TOC entry 4687 (class 1259 OID 21164)
-- Name: index_services_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_services_on_company_id ON public.services USING btree (company_id);


--
-- TOC entry 4609 (class 1259 OID 21973)
-- Name: index_trainings_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_trainings_on_company_id ON public.trainings USING btree (company_id);


--
-- TOC entry 4610 (class 1259 OID 21967)
-- Name: index_trainings_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_trainings_on_user_id ON public.trainings USING btree (user_id);


--
-- TOC entry 4827 (class 1259 OID 22010)
-- Name: index_transport_units_on_vehicle_type_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_transport_units_on_vehicle_type_id ON public.transport_units USING btree (vehicle_type_id);


--
-- TOC entry 4672 (class 1259 OID 21055)
-- Name: index_user_favourite_rooms_on_room_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_user_favourite_rooms_on_room_id ON public.user_favourite_rooms USING btree (room_id);


--
-- TOC entry 4673 (class 1259 OID 21054)
-- Name: index_user_favourite_rooms_on_user_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_user_favourite_rooms_on_user_id ON public.user_favourite_rooms USING btree (user_id);


--
-- TOC entry 4602 (class 1259 OID 20549)
-- Name: index_users_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_users_on_company_id ON public.users USING btree (company_id);


--
-- TOC entry 4603 (class 1259 OID 20539)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- TOC entry 4604 (class 1259 OID 20538)
-- Name: index_users_on_jti; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_users_on_jti ON public.users USING btree (jti);


--
-- TOC entry 4605 (class 1259 OID 20540)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- TOC entry 4606 (class 1259 OID 20543)
-- Name: index_users_on_role_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_users_on_role_id ON public.users USING btree (role_id);


--
-- TOC entry 4725 (class 1259 OID 21534)
-- Name: index_vehicle_types_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_vehicle_types_on_company_id ON public.vehicle_types USING btree (company_id);


--
-- TOC entry 4726 (class 1259 OID 21996)
-- Name: index_vehicle_types_on_label; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE UNIQUE INDEX index_vehicle_types_on_label ON public.vehicle_types USING btree (label);


--
-- TOC entry 4721 (class 1259 OID 21458)
-- Name: index_vehicles_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_vehicles_on_company_id ON public.vehicles USING btree (company_id);


--
-- TOC entry 4722 (class 1259 OID 21438)
-- Name: index_vehicles_on_vehicle_type_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_vehicles_on_vehicle_type_id ON public.vehicles USING btree (vehicle_type_id);


--
-- TOC entry 4703 (class 1259 OID 21251)
-- Name: index_visitor_request_accesses_on_request_access_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_visitor_request_accesses_on_request_access_id ON public.visitor_request_accesses USING btree (request_access_id);


--
-- TOC entry 4704 (class 1259 OID 21250)
-- Name: index_visitor_request_accesses_on_visitor_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_visitor_request_accesses_on_visitor_id ON public.visitor_request_accesses USING btree (visitor_id);


--
-- TOC entry 4695 (class 1259 OID 21303)
-- Name: index_visitors_on_company_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_visitors_on_company_id ON public.visitors USING btree (company_id);


--
-- TOC entry 4696 (class 1259 OID 21216)
-- Name: index_visitors_on_employee_id; Type: INDEX; Schema: public; Owner: logistic-api-app
--

CREATE INDEX index_visitors_on_employee_id ON public.visitors USING btree (employee_id);


--
-- TOC entry 4865 (class 2606 OID 20848)
-- Name: resource_requests fk_rails_0174b3eb81; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_0174b3eb81 FOREIGN KEY (requested_by_id) REFERENCES public.users(id);


--
-- TOC entry 4886 (class 2606 OID 21225)
-- Name: gadgets fk_rails_030db80932; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT fk_rails_030db80932 FOREIGN KEY (visitor_id) REFERENCES public.visitors(id);


--
-- TOC entry 4843 (class 2606 OID 20607)
-- Name: roles fk_rails_04d85086a1; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_rails_04d85086a1 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4933 (class 2606 OID 21818)
-- Name: order_passes fk_rails_07c07f0e31; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_07c07f0e31 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4870 (class 2606 OID 21112)
-- Name: employee_user_functions fk_rails_08559623ef; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_08559623ef FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4940 (class 2606 OID 21839)
-- Name: license_docs fk_rails_0ce15a2b0c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT fk_rails_0ce15a2b0c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4851 (class 2606 OID 20600)
-- Name: rooms fk_rails_0dd0298df2; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rails_0dd0298df2 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4946 (class 2606 OID 21900)
-- Name: current_drivers fk_rails_0ec35f4b50; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_0ec35f4b50 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4907 (class 2606 OID 21556)
-- Name: order_logs fk_rails_0faa4ef22b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_0faa4ef22b FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4890 (class 2606 OID 21295)
-- Name: attendence_systems fk_rails_0fe8a320e2; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.attendence_systems
    ADD CONSTRAINT fk_rails_0fe8a320e2 FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 4922 (class 2606 OID 21694)
-- Name: complaint_logs fk_rails_10237ad050; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_10237ad050 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4910 (class 2606 OID 21592)
-- Name: damage_packages fk_rails_1096b326e9; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_1096b326e9 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4911 (class 2606 OID 21587)
-- Name: damage_packages fk_rails_145ae70824; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_145ae70824 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4914 (class 2606 OID 21621)
-- Name: missing_packages fk_rails_15096ccca6; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_15096ccca6 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4949 (class 2606 OID 21922)
-- Name: order_statuses fk_rails_159fd1d59f; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_159fd1d59f FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4848 (class 2606 OID 20573)
-- Name: employees fk_rails_15ca1438d5; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_15ca1438d5 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4860 (class 2606 OID 20818)
-- Name: product_logs fk_rails_1c5b17e141; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_1c5b17e141 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4878 (class 2606 OID 21121)
-- Name: inspection_helpers fk_rails_2016746fdd; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_2016746fdd FOREIGN KEY (maintainance_id) REFERENCES public.maintainances(id);


--
-- TOC entry 4887 (class 2606 OID 21324)
-- Name: gadgets fk_rails_20bb647ae1; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gadgets
    ADD CONSTRAINT fk_rails_20bb647ae1 FOREIGN KEY (request_access_id) REFERENCES public.request_accesses(id);


--
-- TOC entry 4846 (class 2606 OID 21974)
-- Name: trainings fk_rails_2131102492; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT fk_rails_2131102492 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4944 (class 2606 OID 21875)
-- Name: remark_vehicles fk_rails_216eddd9ba; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT fk_rails_216eddd9ba FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4861 (class 2606 OID 20813)
-- Name: product_logs fk_rails_224843983b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_224843983b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4934 (class 2606 OID 21762)
-- Name: order_passes fk_rails_24556aaa3f; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_24556aaa3f FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4849 (class 2606 OID 20583)
-- Name: employees fk_rails_24bc67ae55; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_24bc67ae55 FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 4896 (class 2606 OID 21439)
-- Name: vehicles fk_rails_269c894ad2; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT fk_rails_269c894ad2 FOREIGN KEY (vehicle_type_id) REFERENCES public.vehicle_types(id);


--
-- TOC entry 4881 (class 2606 OID 21167)
-- Name: services fk_rails_2a3f363019; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_rails_2a3f363019 FOREIGN KEY (class_list_id) REFERENCES public.class_lists(id);


--
-- TOC entry 4897 (class 2606 OID 21459)
-- Name: vehicles fk_rails_314b522c0a; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT fk_rails_314b522c0a FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4898 (class 2606 OID 21535)
-- Name: vehicle_types fk_rails_32d04846ae; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.vehicle_types
    ADD CONSTRAINT fk_rails_32d04846ae FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4874 (class 2606 OID 21044)
-- Name: user_favourite_rooms fk_rails_32f1ac2c9e; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT fk_rails_32f1ac2c9e FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4928 (class 2606 OID 21745)
-- Name: package_actions fk_rails_3620c48ab1; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_3620c48ab1 FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- TOC entry 4923 (class 2606 OID 21684)
-- Name: complaint_logs fk_rails_37bb7ae934; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_37bb7ae934 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4918 (class 2606 OID 21654)
-- Name: complaints fk_rails_39362cba92; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_39362cba92 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4900 (class 2606 OID 21489)
-- Name: invoices fk_rails_3d1522a0d8; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_rails_3d1522a0d8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4873 (class 2606 OID 21028)
-- Name: inspections fk_rails_3d42a5dd2b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspections
    ADD CONSTRAINT fk_rails_3d42a5dd2b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4919 (class 2606 OID 21644)
-- Name: complaints fk_rails_3d83173382; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_3d83173382 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4915 (class 2606 OID 21669)
-- Name: missing_packages fk_rails_3eb4e55da5; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_3eb4e55da5 FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4876 (class 2606 OID 21083)
-- Name: maintainances fk_rails_41db695b06; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT fk_rails_41db695b06 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4862 (class 2606 OID 20924)
-- Name: product_logs fk_rails_4242793324; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_4242793324 FOREIGN KEY (giver_id) REFERENCES public.users(id);


--
-- TOC entry 4855 (class 2606 OID 20714)
-- Name: products fk_rails_438d5b34ce; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_438d5b34ce FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4899 (class 2606 OID 21413)
-- Name: loads fk_rails_48ece3b526; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.loads
    ADD CONSTRAINT fk_rails_48ece3b526 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4888 (class 2606 OID 21245)
-- Name: visitor_request_accesses fk_rails_48fb8e4c9b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT fk_rails_48fb8e4c9b FOREIGN KEY (request_access_id) REFERENCES public.request_accesses(id);


--
-- TOC entry 4908 (class 2606 OID 21570)
-- Name: order_logs fk_rails_4db295fe30; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_4db295fe30 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4901 (class 2606 OID 21529)
-- Name: invoices fk_rails_4fa42a6dca; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT fk_rails_4fa42a6dca FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4902 (class 2606 OID 21495)
-- Name: packages fk_rails_5298977550; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT fk_rails_5298977550 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4947 (class 2606 OID 21895)
-- Name: current_drivers fk_rails_536571919b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_536571919b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4912 (class 2606 OID 21582)
-- Name: damage_packages fk_rails_53ea562ca4; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_53ea562ca4 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4866 (class 2606 OID 20838)
-- Name: resource_requests fk_rails_562966692c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_562966692c FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4955 (class 2606 OID 22041)
-- Name: grouped_orders fk_rails_581f1459b3; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT fk_rails_581f1459b3 FOREIGN KEY (order_group_id) REFERENCES public.order_groups(id);


--
-- TOC entry 4925 (class 2606 OID 21715)
-- Name: order_actions fk_rails_5891e08ac7; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_5891e08ac7 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4868 (class 2606 OID 20875)
-- Name: requested_items fk_rails_5a83bcf601; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT fk_rails_5a83bcf601 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4936 (class 2606 OID 21800)
-- Name: courier_helpers fk_rails_5b97dbe003; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_5b97dbe003 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4844 (class 2606 OID 20544)
-- Name: users fk_rails_642f17018b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_642f17018b FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 4856 (class 2606 OID 20709)
-- Name: products fk_rails_6767bffcce; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_6767bffcce FOREIGN KEY (class_list_id) REFERENCES public.class_lists(id);


--
-- TOC entry 4935 (class 2606 OID 21908)
-- Name: order_passes fk_rails_6798b10d44; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_passes
    ADD CONSTRAINT fk_rails_6798b10d44 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4882 (class 2606 OID 21159)
-- Name: services fk_rails_6c869ccd3c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_rails_6c869ccd3c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4877 (class 2606 OID 21070)
-- Name: maintainances fk_rails_6d4f9e7b55; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.maintainances
    ADD CONSTRAINT fk_rails_6d4f9e7b55 FOREIGN KEY (inspection_id) REFERENCES public.inspections(id);


--
-- TOC entry 4869 (class 2606 OID 20885)
-- Name: requested_items fk_rails_7025f6b88e; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.requested_items
    ADD CONSTRAINT fk_rails_7025f6b88e FOREIGN KEY (resource_request_id) REFERENCES public.resource_requests(id);


--
-- TOC entry 4857 (class 2606 OID 20704)
-- Name: products fk_rails_71119d0f74; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_71119d0f74 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4879 (class 2606 OID 21099)
-- Name: inspection_helpers fk_rails_719c539625; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_719c539625 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4929 (class 2606 OID 21769)
-- Name: package_actions fk_rails_7298907e8c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_7298907e8c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4913 (class 2606 OID 21663)
-- Name: damage_packages fk_rails_7557c2d75e; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.damage_packages
    ADD CONSTRAINT fk_rails_7557c2d75e FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4845 (class 2606 OID 20550)
-- Name: users fk_rails_7682a3bdfe; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_7682a3bdfe FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4892 (class 2606 OID 21350)
-- Name: audit_employees fk_rails_7ae052f480; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT fk_rails_7ae052f480 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4950 (class 2606 OID 21927)
-- Name: order_statuses fk_rails_7d004fc2ba; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_7d004fc2ba FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4953 (class 2606 OID 22005)
-- Name: transport_units fk_rails_808a335247; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.transport_units
    ADD CONSTRAINT fk_rails_808a335247 FOREIGN KEY (vehicle_type_id) REFERENCES public.vehicle_types(id);


--
-- TOC entry 4880 (class 2606 OID 21104)
-- Name: inspection_helpers fk_rails_81b4ad5d8a; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.inspection_helpers
    ADD CONSTRAINT fk_rails_81b4ad5d8a FOREIGN KEY (inspection_id) REFERENCES public.inspections(id);


--
-- TOC entry 4954 (class 2606 OID 22019)
-- Name: compartments fk_rails_8302a58bf5; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.compartments
    ADD CONSTRAINT fk_rails_8302a58bf5 FOREIGN KEY (transport_unit_id) REFERENCES public.transport_units(id);


--
-- TOC entry 4875 (class 2606 OID 21049)
-- Name: user_favourite_rooms fk_rails_834b87db05; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.user_favourite_rooms
    ADD CONSTRAINT fk_rails_834b87db05 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4889 (class 2606 OID 21240)
-- Name: visitor_request_accesses fk_rails_89c92dbc49; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitor_request_accesses
    ADD CONSTRAINT fk_rails_89c92dbc49 FOREIGN KEY (visitor_id) REFERENCES public.visitors(id);


--
-- TOC entry 4853 (class 2606 OID 20656)
-- Name: base_module_functions fk_rails_8a14c30a03; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.base_module_functions
    ADD CONSTRAINT fk_rails_8a14c30a03 FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4941 (class 2606 OID 21834)
-- Name: license_docs fk_rails_8acb3c28e7; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.license_docs
    ADD CONSTRAINT fk_rails_8acb3c28e7 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4863 (class 2606 OID 20930)
-- Name: product_logs fk_rails_8b2b6850f2; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_8b2b6850f2 FOREIGN KEY (receiver_id) REFERENCES public.users(id);


--
-- TOC entry 4909 (class 2606 OID 21561)
-- Name: order_logs fk_rails_8d6acd8a13; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_logs
    ADD CONSTRAINT fk_rails_8d6acd8a13 FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4858 (class 2606 OID 20797)
-- Name: products fk_rails_8de2cea656; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_8de2cea656 FOREIGN KEY (measurement_id) REFERENCES public.measurements(id);


--
-- TOC entry 4930 (class 2606 OID 21812)
-- Name: package_actions fk_rails_90c472030a; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_90c472030a FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4937 (class 2606 OID 21787)
-- Name: courier_helpers fk_rails_958ef00b38; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_958ef00b38 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4884 (class 2606 OID 21304)
-- Name: visitors fk_rails_95acc76597; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT fk_rails_95acc76597 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4926 (class 2606 OID 21720)
-- Name: order_actions fk_rails_97286c373a; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_97286c373a FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4920 (class 2606 OID 21775)
-- Name: complaints fk_rails_9b01d4cc82; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_9b01d4cc82 FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4871 (class 2606 OID 20994)
-- Name: employee_user_functions fk_rails_9b0a80c0dc; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_9b0a80c0dc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4945 (class 2606 OID 21880)
-- Name: remark_vehicles fk_rails_9d20bdd0cd; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.remark_vehicles
    ADD CONSTRAINT fk_rails_9d20bdd0cd FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4864 (class 2606 OID 20936)
-- Name: product_logs fk_rails_a033b42ae9; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.product_logs
    ADD CONSTRAINT fk_rails_a033b42ae9 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4894 (class 2606 OID 21374)
-- Name: audit_products fk_rails_a0acab3f98; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT fk_rails_a0acab3f98 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 4931 (class 2606 OID 21740)
-- Name: package_actions fk_rails_a469c0da0d; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_a469c0da0d FOREIGN KEY (order_action_id) REFERENCES public.order_actions(id);


--
-- TOC entry 4893 (class 2606 OID 21355)
-- Name: audit_employees fk_rails_a57d6b09c7; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_employees
    ADD CONSTRAINT fk_rails_a57d6b09c7 FOREIGN KEY (audit_id) REFERENCES public.audits(id);


--
-- TOC entry 4852 (class 2606 OID 20675)
-- Name: rooms fk_rails_a63cab0c67; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT fk_rails_a63cab0c67 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4895 (class 2606 OID 21369)
-- Name: audit_products fk_rails_a8c645ae30; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audit_products
    ADD CONSTRAINT fk_rails_a8c645ae30 FOREIGN KEY (audit_id) REFERENCES public.audits(id);


--
-- TOC entry 4956 (class 2606 OID 22046)
-- Name: grouped_orders fk_rails_ab6cf2c44b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.grouped_orders
    ADD CONSTRAINT fk_rails_ab6cf2c44b FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 4867 (class 2606 OID 20853)
-- Name: resource_requests fk_rails_aba7bea058; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.resource_requests
    ADD CONSTRAINT fk_rails_aba7bea058 FOREIGN KEY (base_module_id) REFERENCES public.base_modules(id);


--
-- TOC entry 4883 (class 2606 OID 21267)
-- Name: request_accesses fk_rails_ad3fe8d70d; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.request_accesses
    ADD CONSTRAINT fk_rails_ad3fe8d70d FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4854 (class 2606 OID 20689)
-- Name: class_lists fk_rails_ae02d031e1; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.class_lists
    ADD CONSTRAINT fk_rails_ae02d031e1 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4948 (class 2606 OID 21951)
-- Name: current_drivers fk_rails_ae19f43d73; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.current_drivers
    ADD CONSTRAINT fk_rails_ae19f43d73 FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4904 (class 2606 OID 21601)
-- Name: orders fk_rails_aee0f20b8c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_aee0f20b8c FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4942 (class 2606 OID 21854)
-- Name: driver_histories fk_rails_b27e44e76e; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT fk_rails_b27e44e76e FOREIGN KEY (vehicle_id) REFERENCES public.vehicles(id);


--
-- TOC entry 4938 (class 2606 OID 21806)
-- Name: courier_helpers fk_rails_b601ef0bb1; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_b601ef0bb1 FOREIGN KEY (order_pass_id) REFERENCES public.order_passes(id);


--
-- TOC entry 4932 (class 2606 OID 21735)
-- Name: package_actions fk_rails_b8a7f1a3e9; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.package_actions
    ADD CONSTRAINT fk_rails_b8a7f1a3e9 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4916 (class 2606 OID 21616)
-- Name: missing_packages fk_rails_ba2ace96b4; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_ba2ace96b4 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4903 (class 2606 OID 21482)
-- Name: other_companies fk_rails_bdff589dcd; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.other_companies
    ADD CONSTRAINT fk_rails_bdff589dcd FOREIGN KEY (invoice_id) REFERENCES public.invoices(id);


--
-- TOC entry 4891 (class 2606 OID 21337)
-- Name: audits fk_rails_be9f1a8563; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.audits
    ADD CONSTRAINT fk_rails_be9f1a8563 FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- TOC entry 4859 (class 2606 OID 20778)
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 4927 (class 2606 OID 21710)
-- Name: order_actions fk_rails_c522fdb0fc; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_actions
    ADD CONSTRAINT fk_rails_c522fdb0fc FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4921 (class 2606 OID 21649)
-- Name: complaints fk_rails_cdbaa5c57c; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT fk_rails_cdbaa5c57c FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4951 (class 2606 OID 21932)
-- Name: order_statuses fk_rails_d9a4d9e722; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_d9a4d9e722 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4847 (class 2606 OID 21968)
-- Name: trainings fk_rails_db3101896b; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.trainings
    ADD CONSTRAINT fk_rails_db3101896b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4850 (class 2606 OID 20578)
-- Name: employees fk_rails_dcfd3d4fc3; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_dcfd3d4fc3 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4952 (class 2606 OID 21937)
-- Name: order_statuses fk_rails_df1ff66651; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.order_statuses
    ADD CONSTRAINT fk_rails_df1ff66651 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4905 (class 2606 OID 21516)
-- Name: orders fk_rails_dfd2d6dcf6; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_dfd2d6dcf6 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4885 (class 2606 OID 21206)
-- Name: visitors fk_rails_e17864dc65; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.visitors
    ADD CONSTRAINT fk_rails_e17864dc65 FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 4872 (class 2606 OID 20999)
-- Name: employee_user_functions fk_rails_e6fbe29e40; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.employee_user_functions
    ADD CONSTRAINT fk_rails_e6fbe29e40 FOREIGN KEY (base_module_function_id) REFERENCES public.base_module_functions(id);


--
-- TOC entry 4943 (class 2606 OID 21859)
-- Name: driver_histories fk_rails_f0012de9d9; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.driver_histories
    ADD CONSTRAINT fk_rails_f0012de9d9 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4906 (class 2606 OID 21521)
-- Name: orders fk_rails_f868b47f6a; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f868b47f6a FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4939 (class 2606 OID 21792)
-- Name: courier_helpers fk_rails_f8e5c08ffa; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.courier_helpers
    ADD CONSTRAINT fk_rails_f8e5c08ffa FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4924 (class 2606 OID 21689)
-- Name: complaint_logs fk_rails_fa45f7d9d8; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.complaint_logs
    ADD CONSTRAINT fk_rails_fa45f7d9d8 FOREIGN KEY (complaint_id) REFERENCES public.complaints(id);


--
-- TOC entry 4917 (class 2606 OID 21626)
-- Name: missing_packages fk_rails_fc8a187b44; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.missing_packages
    ADD CONSTRAINT fk_rails_fc8a187b44 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 4957 (class 2606 OID 22066)
-- Name: gate_access_entries fk_rails_fe4bb5d473; Type: FK CONSTRAINT; Schema: public; Owner: logistic-api-app
--

ALTER TABLE ONLY public.gate_access_entries
    ADD CONSTRAINT fk_rails_fe4bb5d473 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- TOC entry 2333 (class 826 OID 20491)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO gabriel;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO "mario.fernandes";
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO giovanitest;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO "logistic-api-app";


-- Completed on 2023-11-03 14:42:28 -03

--
-- PostgreSQL database dump complete
--

