-- Inserir pessoa

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054738', 'João Carlos', TO_DATE('04121980','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054740', 'Cláudio Baptista', TO_DATE('14081960','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054742', 'Camilla Alves', TO_DATE('12021989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054744', 'Raquel Queiroz', TO_DATE('02051991','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054746', 'Jose Andrade', TO_DATE('11031989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054748', 'Mariane Silva', TO_DATE('21061989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054750', 'Lucas Freitas', TO_DATE('25071990','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054752', 'Carlos Brito', TO_DATE('25071976','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054754', 'Franklin Ramanho', TO_DATE('25071974','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054756', 'Amauri Alvez', TO_DATE('25071954','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054758', 'Jose Lopez', TO_DATE('19071954','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES ('993054760', 'Livia Ribeiro', TO_DATE('20091954','DDMMYYYY'));
      
      
      
-- Inserir aluno

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES ('993054742', '14102100', '100', '6253444');

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES ('993054744', '14102100', '100', '6253452');

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES ('993054746', '14102105', '105', '6253500');

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES ('993054748', '14102105', '105', '6253560');

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES ('993054750', '14102108', '108', '6253850');


-- Inserir professor

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054738', 'Doutorado', '915203');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054740', 'Doutorado', '915201');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054752', 'Mestrado', '915202');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054754', 'Doutorado', '915202');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054756', 'Mestrado', '915203');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054758', 'Mestrado', '915204');

INSERT INTO professor (matr, titulo, departamento) 
VALUES ('993054760', 'Mestrado', '915205');


-- Inserir departamento

INSERT INTO departamento (code, nome, endereco, coordenador) 
VALUES ('915203', 'DME', 'Rua Aprigio Veloso, 882', '993054738');

INSERT INTO departamento (code, nome, endereco, coordenador) 
VALUES ('915202', 'CEEI', 'Rua Aprigio Veloso, 882', '993054754');

INSERT INTO departamento (code, nome, endereco, coordenador) 
VALUES ('915201', 'DSC', 'Rua Aprigio Veloso, 882', '993054740');

INSERT INTO departamento (code, nome, endereco, coordenador) 
VALUES ('915204', 'CH', 'Rua Aprigio Veloso, 882', '993054758');

INSERT INTO departamento (code, nome, endereco, coordenador) 
VALUES ('915205', 'DART', 'Rua Aprigio Veloso, 882', '993054760');








      