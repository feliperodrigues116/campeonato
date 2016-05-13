-- Create a database on Postgresql
-- Schema: campeonato

-- DROP SCHEMA campeonato;

CREATE SCHEMA campeonato
  AUTHORIZATION postgres;

COMMENT ON SCHEMA campeonato
  IS 'Banco de dados do campeonato.';

-- Table: campeonato.atleta

-- DROP TABLE campeonato.atleta;

CREATE TABLE campeonato.atleta
(
  seq_atleta integer NOT NULL,
  nome character varying(50) NOT NULL,
  CONSTRAINT atleta_pkey PRIMARY KEY (seq_atleta)
)
-- Sequence: campeonato."SQ_ATLETA"

-- DROP SEQUENCE campeonato."SQ_ATLETA";

CREATE SEQUENCE campeonato."SQ_ATLETA"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE campeonato."SQ_ATLETA"
  OWNER TO postgres;
COMMENT ON SEQUENCE campeonato."SQ_ATLETA"
  IS 'SEQUENCE DA TABELA ATLETA.';
WITH (
  OIDS=FALSE
);
ALTER TABLE campeonato.atleta
  OWNER TO postgres;


