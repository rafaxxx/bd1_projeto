CREATE TABLE pessoa(
     matr     INT,
     nome     VARCHAR(100) NOT NULL,
     datanasc DATE NOT NULL,
     PRIMARY KEY (matr)
  );
CREATE TABLE aluno(
     matr       INT,
     codarea    INT NOT NULL,
     codsubarea INT ,
     projeto    INT,
     PRIMARY KEY(matr)
  );
CREATE TABLE professor(
     matr         INT,
     titulo       VARCHAR(30) NOT NULL,
     departamento INT,
     PRIMARY KEY(matr)
  );
CREATE TABLE graduacao(
     aluno      INT,
     supervisor INT NOT NULL,
     PRIMARY KEY(aluno)
  );
CREATE TABLE pos(
     aluno     INT,
     titulo VARCHAR(30) NOT NULL,
	 orientador INT,
     PRIMARY KEY(aluno)
  );

CREATE TABLE publicacao(
     cod     INT,
     titulo  VARCHAR(50) NOT NULL,
     ano     INT NOT NULL,
     veiculo VARCHAR(50) NOT NULL,
     projeto INT NOT NULL,
     PRIMARY KEY(cod)
  );
CREATE TABLE publicacao_pessoa(
     publicacao INT,
     pessoa     INT,
     PRIMARY KEY (publicacao, pessoa)
  );
CREATE TABLE patente(
     cod       INT,
     projeto   INT NOT NULL,
     numreg    INT NOT NULL,
     descricao VARCHAR (300),
     PRIMARY KEY(cod)
  );
CREATE TABLE linhaPesquisa(
     codarea     INT,
     codsubarea  INT,
     nomearea    VARCHAR (40) NOT NULL,
     nomesubarea VARCHAR (40) NOT NULL,
     PRIMARY KEY (codarea, codsubarea)
  );
CREATE TABLE professor_linhaPesquisa(
     professor  INT,
     codarea    INT,
     codsubarea INT,
     PRIMARY KEY(professor, codarea, codsubarea)
  );
CREATE TABLE professor_projeto(
     professor INT,
     projeto   INT,
     PRIMARY KEY(professor, projeto)
  );
CREATE TABLE departamento(
     cod         INT,
     nome        VARCHAR(100) NOT NULL,
     endereco    VARCHAR(100) ,
     coordenador INT NOT NULL,
     PRIMARY KEY(cod)
  );
CREATE TABLE agenteFinanciador(
     cod      INT,
     nome     VARCHAR(100) NOT NULL,
     email    VARCHAR(50) ,
     endereco VARCHAR(100),
     PRIMARY KEY(cod)
  );
CREATE TABLE projeto_agente(
     projeto INT,
     agente  INT,
     PRIMARY KEY(projeto, agente)
  );
CREATE TABLE recurso(
     cod         INT,
     nome        VARCHAR(100) NOT NULL,
     descricao   VARCHAR(300),
     tipo        VARCHAR(100),
     laboratorio INT NOT NULL,
     PRIMARY KEY(cod)
  );
CREATE TABLE laboratorio(
     cod         INT,
     nome        VARCHAR(100) NOT NULL,
     localizacao VARCHAR(100) NOT NULL,
     PRIMARY KEY(cod)
  );
CREATE TABLE projeto_laboratorio(
     projeto     INT,
     laboratorio INT,
     PRIMARY KEY(projeto, laboratorio)
  );
CREATE TABLE projeto(
     cod         INT,
     titulo      VARCHAR(50) NOT NULL,
     descricao   VARCHAR(300),
     orcamento   INT,
     inicio      DATE,
     fim         DATE,
     coordenador INT NOT NULL,
     PRIMARY KEY(cod)
  );
CREATE TABLE projeto_linhaPesquisa(
     cod        INT,
     codarea    INT,
     codsubarea INT,
     PRIMARY KEY(cod, codarea, codsubarea)
  );
CREATE TABLE departamento_telefone(
     departamento INT,
     telefone     VARCHAR(30),
     PRIMARY KEY (departamento, telefone)
  );
CREATE TABLE agente_telefone(
     agente   INT,
     telefone VARCHAR(30),
     PRIMARY KEY (agente, telefone)
  );

ALTER TABLE departamento_telefone ADD (
  FOREIGN KEY (departamento) REFERENCES departamento(cod));
ALTER TABLE agente_telefone ADD (
  FOREIGN KEY (agente) REFERENCES agenteFinanciador(cod));
ALTER TABLE aluno ADD (
  FOREIGN KEY (matr) REFERENCES pessoa(matr),
  FOREIGN KEY (codarea, codsubarea) REFERENCES linhaPesquisa(codarea, codsubarea),
  FOREIGN KEY (projeto) REFERENCES projeto(cod)
  ON DELETE CASCADE);
ALTER TABLE professor ADD (
  FOREIGN KEY (matr) REFERENCES pessoa(matr),
  FOREIGN KEY (departamento) REFERENCES departamento(cod) 
  ON DELETE CASCADE);
ALTER TABLE graduacao ADD (
  FOREIGN KEY (aluno) REFERENCES aluno(matr),
  FOREIGN KEY (supervisor) REFERENCES pos(aluno));
ALTER TABLE pos ADD (
  FOREIGN KEY (aluno) REFERENCES aluno(matr) 
  ON DELETE CASCADE);
ALTER TABLE pos ADD (
  FOREIGN KEY (orientador) REFERENCES professor(matr) 
  ON DELETE CASCADE);
ALTER TABLE publicacao ADD (
  FOREIGN KEY (projeto) REFERENCES projeto(cod) 
  ON DELETE CASCADE);
ALTER TABLE publicacao_pessoa ADD (
  FOREIGN KEY(publicacao) REFERENCES publicacao(cod),
  FOREIGN KEY (pessoa) REFERENCES pessoa(matr));
ALTER TABLE patente ADD (
  FOREIGN KEY(projeto) REFERENCES projeto(cod));
ALTER TABLE professor_linhaPesquisa ADD (
  FOREIGN KEY(professor) REFERENCES professor(matr),
  FOREIGN KEY(codarea, codsubarea) REFERENCES linhaPesquisa(codarea, codsubarea));
ALTER TABLE professor_projeto ADD (
  FOREIGN KEY(professor) REFERENCES professor(matr),
  FOREIGN KEY(projeto) REFERENCES projeto(cod));
ALTER TABLE departamento ADD (
  FOREIGN KEY(coordenador) REFERENCES professor(matr)
  ON DELETE CASCADE);
ALTER TABLE projeto_agente ADD (
  FOREIGN KEY(projeto) REFERENCES projeto(cod),
  FOREIGN KEY(agente) REFERENCES agenteFinanciador(cod));
ALTER TABLE recurso ADD(
  FOREIGN KEY(laboratorio) REFERENCES laboratorio(cod));
ALTER TABLE projeto_laboratorio ADD (
  FOREIGN KEY(projeto) REFERENCES projeto(cod),
  FOREIGN KEY(laboratorio) REFERENCES laboratorio(cod));
ALTER TABLE projeto ADD (
  FOREIGN KEY(coordenador) REFERENCES professor(matr)
  ON DELETE CASCADE);
ALTER TABLE projeto_linhaPesquisa ADD (
  FOREIGN KEY (cod) REFERENCES projeto(cod),
  FOREIGN KEY (codarea, codsubarea) REFERENCES linhaPesquisa(codarea, codsubarea));
