CREATE TABLE IF NOT EXISTS users (
    id bigint DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL PRIMARY KEY ,
    name character varying(255),
    email character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
