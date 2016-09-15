CREATE TABLE pessoa (
    matricula             INT,
    nome                  VARCHAR(30) NOT NULL,
    dataNascimento        DATE NOT NULL,
    CONSTRAINT pessoa_pk  PRIMARY KEY (matricula)
);

CREATE TABLE professor (
    matricula             INT,
    titulo                VARCHAR(10) NOT NULL,
    departamentoCod       INT,
    CONSTRAINT professor_pk PRIMARY KEY (matricula),
    CONSTRAINT professor_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula),
    CONSTRAINT titulacao CHECK (UPPER(titulo) IN ('MESTRADO', 'DOUTORADO', 'POS-DOCTOR'))
);

CREATE TABLE aluno (
    matricula             INT,
    CONSTRAINT aluno_pk PRIMARY KEY (matricula),
    CONSTRAINT aluno_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula)    
);

CREATE TABLE departamento (
    codigo                INT NOT NULL,
    nome                  VARCHAR(30) NOT NULL,
    endereco              VARCHAR(70) NOT NULL,
    coordenador           INT, 
    telefones             INT,
    CONSTRAINT departamento_pk PRIMARY KEY (codigo),
    CONSTRAINT telefones_dpto_fk FOREIGN KEY (telefones) REFERENCES telefones (id)
);

CREATE TABLE telefones (
    id                    INT NOT NULL AUTO_INCREMENT,
    telefone              VARCHAR(15) NOT NULL,
    CONSTRAINT telefones_pk PRIMARY KEY (id)
    
);

CREATE TABLE publicacao (
    codigo                INT NOT NULL,
    titulo                VARCHAR(30) NOT NULL,
    ano                   INT,
    veiculo               VARCHAR(20) NOT NULL,
    autor                 INT,
    CONSTRAINT publicacao_pk PRIMARY KEY (codigo)
);

CREATE TABLE alunoPos (
    matricula             INT,
    titulacao             VARCHAR(10) NOT NULL,
    CONSTRAINT aluno_pos_pk PRIMARY KEY (matricula),
    CONSTRAINT titulacao_aluno_pos CHECK (UPPER(titulacao) IN ('MESTRADO', 'DOUTORADO', 'POS-DOCTOR'))   
);


ALTER TABLE professor ADD CONSTRAINT professor_fk FOREIGN KEY (departamentoCod) REFERENCES departamento (codigo) deferrable;
ALTER TABLE departamento ADD CONSTRAINT departamento_fk FOREIGN KEY (coordenador) REFERENCES professor (matricula) deferrable;
ALTER TABLE pessoa ADD CONSTRAINT pessoa_fk FOREIGN KEY (publicacao) REFERENCES publicacao (codigo) deferrable;
ALTER TABLE publicacao ADD CONSTRAINT publicacao_fk FOREIGN KEY (autor) REFERENCES pessoa (matricula) deferrable;
