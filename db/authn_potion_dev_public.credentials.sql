CREATE TABLE credentials (
    id bigint DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL PRIMARY KEY ,
    "credentialId" text,
    "credentialPublicKey" text,
    counter integer,
    aaguid character varying(255),
    registered timestamp(0) without time zone,
    user_verifying boolean DEFAULT false NOT NULL,
    "authenticatorAttachment" character varying(255),
    transports character varying(255)[],
    browser character varying(255),
    os character varying(255),
    platform character varying(255),
    last_used timestamp(0) without time zone,
    "credentialDeviceType" character varying(255),
    "credentialBackedUp" boolean DEFAULT false NOT NULL,
    "clientExtensionResults" jsonb,
    "userId" bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
CREATE INDEX "credentials_userId_index" ON public.credentials USING btree ("userId");
ALTER TABLE ONLY public.credentials
    ADD CONSTRAINT "credentials_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);

