-- Inserir pessoa

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054738, 'João Carlos', TO_DATE('04121980','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054740, 'Cláudio Baptista', TO_DATE('14081960','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054742, 'Camilla Alves', TO_DATE('12021989','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054744, 'Raquel Queiroz', TO_DATE('02051991','DDMMYYYY'));

INSERT INTO pessoa (matr, nome, datanasc) 
VALUES (993054746, 'Jose Andrade', TO_DATE('11031989','DDMMYYYY'));

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
VALUES (993054758, 'Jose Lopez', TO_DATE('19071954','DDMMYYYY'));

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

-- Inserir projeto

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253500, 'Mineracao de dados', 'Descricao sobre projeto Mineracao de dados', 5000, TO_DATE('2014','YYYY'), TO_DATE('2016','YYYY'), 993054754);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253452, 'Analise Probabilistica em Inteligencia Artificial', 'Uso de programas estocásticos para solucionar problemas em IA', 10000, TO_DATE('2014','YYYY'), TO_DATE('2018','YYYY'), 993054738);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253560, 'Analise de Meta Modelos', 'Analise de meta modelos', 3000, TO_DATE('2016','YYYY'), TO_DATE('2017','YYYY'), 993054754);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253850, 'Analise de Sistemas da Informação', 'Analise de Sistemas da Informacao', 4000, TO_DATE('2015','YYYY'), TO_DATE('2016','YYYY'), 993054740);

INSERT INTO projeto (cod, titulo, descricao, orcamento, inicio, fim, coordenador) 
VALUES (6253444, 'Tecnologia e Sociedade', 'Analise dos impactos sociais oriundos dos avancos tecnologicos', 2500, TO_DATE('2016','YYYY'), TO_DATE('2017','YYYY'), 993054758);


-- Inserir publicacao

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES(140312832, 'AVALIANDO SISTEMAS DE INFORMAÇÃO NOVOS', 2014, 'REVISTA EXAME', 6253850 );

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (120888179, 'CONSTRUINDO MODELOS DE SISTEMAS', 2015, 'REVISTA NATIONAL GEOGRAPHIC', 6253560);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (876747683, 'ANALISE DE METODOLOGIA DE SISTEMAS DE INFORMAÇÃO', 2014, 'REVISTA MUNDO ESTRANHO', 6253850);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903129, 'CRIANDO SISTEMAS A PARTIR DE MODELOS MÉDICOS', 2015, 'REVISTA CIÊNCIA', 6253452);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903130, 'DESENVOLVIMENTO DA TECNOLOGIA DA INFORMAÇÃO', 2014, 'REVISTA TECNOLOGIA', 6253850);

INSERT INTO publicacao (cod, titulo, ano, veiculo, projeto)
VALUES (926903131, 'ANALISE CRITICA SOBRE OS AVANCOS TECNOLOGICOS', 2014, 'REVISTA INFORMÁTICA', 6253444);


-- Inserir publicação pessoa
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