-- Inserir pessoa

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054738, 'Jo�o Carlos', TO_DATE('04121980','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054740, 'Cl�udio Baptista', TO_DATE('14081960','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054742, 'Camilla Alves', TO_DATE('12021989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054744, 'Raquel Queiroz', TO_DATE('02051991','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054746, 'Jos� Andrade', TO_DATE('11031989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054748, 'Mariane Silva', TO_DATE('21061989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054750, 'Lucas Freitas', TO_DATE('25071990','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054752, 'Carlos Brito', TO_DATE('25071976','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054754, 'Franklin Ramanho', TO_DATE('25071974','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054756, 'Amauri Alvez', TO_DATE('25071954','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054758, 'Jos� Lopez', TO_DATE('19071954','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054760, 'Livia Ribeiro', TO_DATE('20091954','DDMMYYYY'));
      
INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054762, 'Renata Souza', TO_DATE('20091994','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054764, 'Fernando Ribeiro', TO_DATE('25081992','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054766, 'Arthur Silva', TO_DATE('12041992','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054768, 'Rafaella Menezes', TO_DATE('21111992','DDMMYYYY'));
                  
      
-- Inserir aluno

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054742, 14102100, 100, 6253444);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054744, 14102100, 100, 6253452);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054746, 14102105, 105, 6253500);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054748, 14102105, 105, 6253560);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054750, 14102108, 108, 6253850);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054762, 14102108, 108, 6253850);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054764, 14102105, 105, 6253860);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054766, 14102105, 105, 6253860);

INSERT INTO aluno (matr, codarea, codsubarea, projeto) 
VALUES (993054768, 14102100, 100, 6253500);


-- Inserir professor

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054738, 'Doutorado', 915203);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054740, 'Doutorado', 915201);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054752, 'Mestrado', 915202);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054754, 'Doutorado', 915202);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054756, 'Mestrado', 915203);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054758, 'Mestrado', 915204);

INSERT INTO professor (matr, titulo, departamento) 
VALUES (993054760, 'Mestrado', 915205);


-- Inserir graduacao

INSERT INTO graduacao (aluno, supervisor) 
VALUES (993054750, 993054742);

INSERT INTO graduacao (aluno, supervisor) 
VALUES (993054762, 993054746);

INSERT INTO graduacao (aluno, supervisor) 
VALUES (993054764, 993054746);

INSERT INTO graduacao (aluno, supervisor) 
VALUES (993054766, 993054744);

INSERT INTO graduacao (aluno, supervisor) 
VALUES (993054768, 993054748);


-- Inserir pos

INSERT INTO pos (aluno, titulo, orientador) 
VALUES (993054742, 'Doutorado', 993054738);

INSERT INTO pos (aluno, titulo, orientador) 
VALUES (993054744, 'Mestrado', 993054738);

INSERT INTO pos (aluno, titulo, orientador) 
VALUES (993054746, 'Doutorado', 993054740);

INSERT INTO pos (aluno, titulo, orientador) 
VALUES (993054748, 'Doutorado', 993054754);

INSERT INTO pos (aluno, titulo, orientador) 
VALUES (993054742, 'Mestrado', 993054758);


-- Inserir publicacao

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES(140312832, 'Avaliando Novos Sistemas de Informa��o', 2014, 'REVISTA EXAME', 6253850 );

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (120888179, 'Construindo Novos Modelos de Sistemas', 2015, 'REVISTA NATIONAL GEOGRAPHIC', 6253560);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (876747683, 'An�lise da Metodologia de Sistemas de Informa��o', 2014, 'ACM', 6253850);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903129, 'Criando Sistemas de Modelos M�dicos', 2015, 'REVISTA SCIENCE', 6253452);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903130, 'Desenvolvimento da Tecnologia da Informa��o', 2014, 'ACM', 6253850);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903131, 'An�lise Cr�tica Sobre Avan�os Tecnol�gicos', 2014, 'ACM', 6253444);


-- Inserir publica��o pessoa

INSERT INTO publicacao_pessoa (publicacao, pessoa)
VALUES (120888179, 993054740);

INSERT INTO publicacao_pessoa (publicacao, pessoa)
VALUES (926903129, 993054740);

INSERT INTO publicacao_pessoa (publicacao, pessoa)
VALUES (140312832, 993054744);

INSERT INTO publicacao_pessoa (publicacao, pessoa)
VALUES (926903130, 993054760);

INSERT INTO publicacao_pessoa (publicacao, pessoa)
VALUES (926903131, 993054760);


-- Inserir patente

INSERT INTO patente(cod, projeto, numreg, descricao)
VALUES(2533487, 6253444, 122245, 'Um estudo sobre sociologia e tecnologia');

INSERT INTO patente(cod, projeto, numreg, descricao)
VALUES(2533488, 6253850, 122246, 'Um estudo aprofundado sobre sistemas de informa��o');

INSERT INTO patente(cod, projeto, numreg, descricao)
VALUES(2533489, 6253500, 122247, 'Um estudo espec�fico sobre minera��o de dados em bancos de dados relacionais');

INSERT INTO patente(cod, projeto, numreg, descricao)
VALUES(2533484, 6253452, 122249, 'Um estudo sobre probabilidade e problemas relacionados a IA');

INSERT INTO patente(cod, projeto, numreg, descricao)
VALUES(2533485, 6253560, 122248, 'Um estudo b�sico em UML');


-- Inserir departamento

INSERT INTO departamento (cod, nome, endereco, coordenador) 
VALUES (915203, 'DME', 'Rua Aprigio Veloso, 882', 993054738);

INSERT INTO departamento (cod, nome, endereco, coordenador) 
VALUES (915202, 'CEEI', 'Rua Aprigio Veloso, 882', 993054754);

INSERT INTO departamento (cod, nome, endereco, coordenador) 
VALUES (915201, 'DSC', 'Rua Aprigio Veloso, 882', 993054740);

INSERT INTO departamento (cod, nome, endereco, coordenador) 
VALUES (915204, 'CH', 'Rua Aprigio Veloso, 882', 993054758);

INSERT INTO departamento (cod, nome, endereco, coordenador) 
VALUES (915205, 'DART', 'Rua Aprigio Veloso, 882', 993054760);


-- Inserir laboratorio

INSERT INTO laboratorio (cod, nome, localizacao)
VALUES (67554343, 'LSI', 'Rua Aprigio Veloso, 535');

INSERT INTO laboratorio (cod, nome, localizacao)
VALUES (651396372, 'LSD', 'Rua Aprigio Veloso, 555');

INSERT INTO laboratorio (cod, nome, localizacao)
VALUES (156499386, 'EMBEDDED', 'Rua Aprigio Veloso, 638');

INSERT INTO laboratorio (cod, nome, localizacao)
VALUES (929862319, 'LSI', 'Rua Aprigio Veloso, 655');

INSERT INTO laboratorio (cod, nome, localizacao)
VALUES (618880605, 'SPLAB', 'Rua Aprigio Veloso, 520');


-- Inserir projeto

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253500, 'Minera��o de dados', 'Descri��o sobre projeto Minera��o de dados', 5000, TO_DATE('2014','YYYY'), TO_DATE('2016','YYYY'), 993054754);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253452, 'An�lise Probabil�stica em Intelig�ncia Artificial', 'Uso de programas estoc�sticos para solucionar problemas em IA', 10000, TO_DATE('2014','YYYY'), TO_DATE('2018','YYYY'), 993054738);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253560, 'An�lise de Meta Modelos', 'An�lise de Perf�s UML', 3000, TO_DATE('2016','YYYY'), TO_DATE('2017','YYYY'), 993054754);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253850, 'An�lise de Sistemas da Informa��o', 'Teoria dos Sistemas da Informa��o', 4000, TO_DATE('2015','YYYY'), TO_DATE('2016','YYYY'), 993054740);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253444, 'Tecnologia e Sociedade', 'An�lise dos impactos sociais oriundos dos avan�os tecnol�gicos', 2500, TO_DATE('2016','YYYY'), TO_DATE('2017','YYYY'), 993054758);


-- Inserir professor-projeto

INSERT INTO professor_projeto(professor, projeto)
VALUES (993054754, 6253500);

INSERT INTO professor_projeto(professor, projeto)
VALUES (993054738, 6253452);

INSERT INTO professor_projeto(professor, projeto)
VALUES (993054754, 6253560);

INSERT INTO professor_projeto(professor, projeto)
VALUES (993054740, 6253850);

INSERT INTO professor_projeto(professor, projeto)
VALUES (993054758, 6253444);