CREATE TABLE pessoa (
    matricula             INT,
    nome                  VARCHAR(30) NOT NULL,
    dataNascimento        DATE NOT NULL,
    CONSTRAINT pessoa_pk  PRIMARY KEY (matricula)
)

CREATE TABLE professor (
    matricula             INT,
    titulo                VARCHAR(10) NOT NULL,
    departamentoCod       INT,
    CONSTRAINT professor_pk PRIMARY KEY (matricula),
    CONSTRAINT professor_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula),
    CONSTRAINT titulacao CHECK (UPPER(titulo) IN ('MESTRADO', 'DOUTORADO', 'POS-DOCTOR'))
)

CREATE TABLE aluno (
    matricula             INT,
    CONSTRAINT aluno_pk PRIMARY KEY (matricula),
    CONSTRAINT aluno_pessoa_fk FOREIGN KEY (matricula) REFERENCES pessoa (matricula)    
)