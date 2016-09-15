CREATE TABLE pessoa (
    matricula             NUMBER,
    nome                  VARCHAR(30) NOT NULL,
    dataNascimento        DATE NOT NULL,
    CONSTRAINT pessoa_pk  PRIMARY KEY (matricula)
);

CREATE TABLE professor (
    matricula             NUMBER,
    titulo                VARCHAR(10) NOT NULL,
    departamentoCod       NUMBER,
    CONSTRAINT professor_pk PRIMARY KEY (matricula),
    CONSTRAINT professor_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula),
    CONSTRAINT titulacao CHECK (UPPER(titulo) IN ('MESTRADO', 'DOUTORADO', 'POS-DOCTOR'))
);

CREATE TABLE aluno (
    matricula             NUMBER,
    cod_projeto               NUMBER NOT NULL,
    cod_area                 NUMBER,
    cod_subarea              NUMBER,
    CONSTRAINT aluno_pk PRIMARY KEY (matricula),
    CONSTRAINT aluno_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula)    
);

CREATE TABLE departamento (
    codigo                NUMBER NOT NULL,
    nome                  VARCHAR(30) NOT NULL,
    endereco              VARCHAR(70) NOT NULL,
    coordenador           NUMBER,
    CONSTRAINT departamento_pk PRIMARY KEY (codigo)
);

CREATE TABLE telefone_dep (
    coddep                NUMBER,
    telefone              VARCHAR(15) NOT NULL,
    CONSTRAINT telefone_dep_pk PRIMARY KEY (coddep,telefone)
    
);

CREATE TABLE publicacao (
    codigo                NUMBER,
    titulo                VARCHAR(30) NOT NULL,
    ano                   NUMBER,
    veiculo               VARCHAR(20) NOT NULL,
    projeto               NUMBER,
    CONSTRAINT publicacao_pk PRIMARY KEY (codigo)
);

CREATE TABLE autoria (
    cod_publicacao        NUMBER,
    matricula             NUMBER,
    CONSTRAINT autoria_pk PRIMARY KEY (cod_publicacao,matricula),
    CONSTRAINT pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula),
    CONSTRAINT publicacao_fk FOREIGN KEY (cod_publicacao) REFERENCES publicacao (codigo)
);

CREATE TABLE aluno_pos (
    matricula             NUMBER,
    titulacao             VARCHAR(10) NOT NULL,
    orientador            NUMBER,
    CONSTRAINT aluno_pos_pk PRIMARY KEY (matricula),
    CONSTRAINT titulacao_aluno_pos CHECK (UPPER(titulacao) IN ('MESTRADO', 'DOUTORADO', 'POS-DOCTOR')),
    CONSTRAINT aluno_pos_aluno_fk FOREIGN KEY (matricula) REFERENCES aluno (matricula),
    CONSTRAINT orientador_fk FOREIGN KEY (orientador) REFERENCES professor (matricula)
);

CREATE TABLE aluno_graduacao (
    matricula             NUMBER,
    supervisor            NUMBER,
    CONSTRAINT aluno_graduacao_pk PRIMARY KEY (matricula),
    CONSTRAINT aluno_graduacao_fk FOREIGN KEY (matricula) REFERENCES aluno (matricula),
    CONSTRAINT supervisor_fk FOREIGN KEY (supervisor) REFERENCES aluno_pos (matricula)
);

CREATE TABLE projeto (
    codigo                NUMBER,
    titulo                VARCHAR(30),
    descricao             CLOB,
    orcamento             NUMBER,
    inicio                DATE,
    fim                   DATE,
    coordenador           NUMBER,
    CONSTRAINT projeto_pk PRIMARY KEY (codigo)
);

CREATE TABLE professor_projeto (
    matricula            NUMBER,
    codigo               NUMBER,
    CONSTRAINT professor_projeto_pk PRIMARY KEY (codigo, matricula),
    CONSTRAINT professor_alocado_fk FOREIGN KEY (matricula) REFERENCES professor (matricula),
    CONSTRAINT projeto_alocado_fk FOREIGN KEY (codigo) REFERENCES projeto (codigo)
    
);

CREATE TABLE patente (
    codigo               NUMBER,
    num_registro         NUMBER,
    descricao            CLOB,
    projeto              NUMBER,
    CONSTRAINT patente_pk PRIMARY KEY (codigo),
    CONSTRAINT projeto_patente_fk FOREIGN KEY (projeto) REFERENCES projeto (codigo)
);

CREATE TABLE agente_financiador (
    codigo               NUMBER,
    nome                 VARCHAR(30),
    email                VARCHAR(30),
    endereco             VARCHAR(70),
    CONSTRAINT agente_financiador_pk PRIMARY KEY (codigo)
);

CREATE TABLE telefone_agente (
    codigo               NUMBER,
    telefone             NUMBER,
    CONSTRAINT telefone_agente_pk PRIMARY KEY (codigo,telefone),
    CONSTRAINT telefone_agente_fk FOREIGN KEY (codigo) REFERENCES agente_financiador (codigo)
);

CREATE TABLE projeto_agente (
    cod_agente               NUMBER,
    cod_projeto              NUMBER,
    CONSTRAINT projeto_agente_pk PRIMARY KEY (cod_agente,cod_projeto),
    CONSTRAINT agente_no_projeto_fk FOREIGN KEY (cod_agente) REFERENCES agente_financiador (codigo),
    CONSTRAINT projeto_do_agente_fk FOREIGN KEY (cod_projeto) REFERENCES projeto (codigo)
);

CREATE TABLE linha_pesquisa (
    cod_area            NUMBER,
    cod_subarea         NUMBER,
    nome_area           VARCHAR(30),
    nome_subarea        VARCHAR(30),
    CONSTRAINT linha_pesquisa_pk PRIMARY KEY (cod_area,cod_subarea)
);

CREATE TABLE projeto_linha (
    cod_area                 NUMBER,
    cod_subarea              NUMBER,
    cod_projeto              NUMBER,
    CONSTRAINT projeto_linha_pk PRIMARY KEY (cod_area,cod_subarea,cod_projeto),
    CONSTRAINT linha_do_projeto_fk FOREIGN KEY (cod_area,cod_subarea) REFERENCES linha_pesquisa (cod_area,cod_subarea),
    CONSTRAINT projeto_da_linha_fk FOREIGN KEY (cod_projeto) REFERENCES projeto (codigo)
);

CREATE TABLE professor_linha (
    cod_area                 NUMBER,
    cod_subarea              NUMBER,
    cod_professor            NUMBER,
    CONSTRAINT professor_linha_pk PRIMARY KEY (cod_area,cod_subarea,cod_professor),
    CONSTRAINT linha_do_professor_fk FOREIGN KEY (cod_area,cod_subarea) REFERENCES linha_pesquisa (cod_area,cod_subarea),
    CONSTRAINT professor_da_linha_fk FOREIGN KEY (cod_professor) REFERENCES professor (matricula)
);

CREATE TABLE laboratorio (
    codigo              NUMBER,
    nome                VARCHAR(30),
    localizacao         VARCHAR(70),
    CONSTRAINT laboratorio_pk PRIMARY KEY (codigo)
);

CREATE TABLE recurso (
    codigo              NUMBER,
    nome                VARCHAR(30),
    tipo                VARCHAR(30),
    descricao           CLOB,
    laboratorio         NUMBER,
    CONSTRAINT recurso_pk PRIMARY KEY (codigo),
    CONSTRAINT recurso_do_lab_fk FOREIGN KEY (laboratorio) REFERENCES laboratorio (codigo)
);

CREATE TABLE laboratorio_projeto (
    cod_laboratorio          NUMBER,
    cod_projeto              NUMBER,
    CONSTRAINT laboratorio_projeto PRIMARY KEY (cod_laboratorio,cod_projeto),
    CONSTRAINT projeto_do_laboratorio_fk FOREIGN KEY (cod_projeto) REFERENCES projeto (codigo),
    CONSTRAINT laboratorio_do_projeto_fk FOREIGN KEY (cod_laboratorio) REFERENCES laboratorio (codigo)
);


ALTER TABLE professor ADD CONSTRAINT professor_fk FOREIGN KEY (departamentoCod) REFERENCES departamento (codigo) deferrable;
ALTER TABLE telefone_dep ADD CONSTRAINT telefone_fk FOREIGN KEY (coddep) REFERENCES departamento (codigo) deferrable;
ALTER TABLE departamento ADD CONSTRAINT coordenador_departamento_fk FOREIGN KEY (coordenador) REFERENCES professor (matricula) deferrable;
ALTER TABLE projeto ADD CONSTRAINT coordenador_projeto_fk FOREIGN KEY (coordenador) REFERENCES professor (matricula) deferrable;
ALTER TABLE publicacao ADD CONSTRAINT projeto_dono_fk FOREIGN KEY (projeto) REFERENCES projeto (codigo) deferrable;
ALTER TABLE aluno ADD CONSTRAINT projeto_participa_fk FOREIGN KEY (cod_projeto) REFERENCES projeto (codigo) deferrable;
ALTER TABLE aluno ADD CONSTRAINT linha_do_aluno_fk FOREIGN KEY (cod_area,cod_subarea) REFERENCES linha_pesquisa (cod_area,cod_subarea) deferrable;
