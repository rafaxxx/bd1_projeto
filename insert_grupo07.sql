INSERT INTO pessoa VALUES(113210581, 'João Carlos', to_date('20/09/1993', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210423, 'Cláudio Baptista', to_date('21/04/1996', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210583, 'Camilla Alvez', to_date('05/12/1995', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210323, 'Raquel Queiroz', to_date('23/09/1991', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(112210222, 'Jose Andrade', to_date('22/06/1981', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113110895, 'Matheus Ribeiro', to_date('03/07/1994', 'DD/MM/YYYY')); 
INSERT INTO pessoa VALUES(113110421, 'Juliana Antunes', to_date('25/04/1998', 'DD/MM/YYYY')); 
INSERT INTO pessoa VALUES(113110553, 'Marcos da Costa', to_date('01/12/1988', 'DD/MM/YYYY')); 
INSERT INTO pessoa VALUES(113110312, 'Caio Mendes', to_date('13/07/1985', 'DD/MM/YYYY')); 
INSERT INTO pessoa VALUES(113210422, 'Felippe Albuquerque', to_date('29/08/1976', 'DD/MM/YYYY')); 
INSERT INTO pessoa VALUES(113210419, 'Raphael Almeida Costa', to_date('26/03/1994', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210420, 'João da Silva', to_date('10/09/1954', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210613, 'Lucas Freitas', to_date('24/12/1973', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210519, 'Mariane Freitas', to_date('11/09/2001', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210622, 'Franklin Ramalho', to_date('16/06/1994', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210623, 'João Almeida', to_date('01/07/1976', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210624, 'Eduardo Cunha', to_date('06/06/1979', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210625, 'Amauri Alvez', to_date('09/11/1975', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210108, 'Fernando Machado', to_date('26/11/1995', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210123, 'Pedro da Costa', to_date('12/03/1992', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210324, 'Rafael Abrantes', to_date('11/09/1994', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210112, 'Rafaella Santos', to_date('03/06/1995', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(112210111, 'Jose da Silva', to_date('04/06/1996', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210110, 'Juan Almeida', to_date('02/06/1991', 'DD/MM/YYYY'));
INSERT INTO pessoa VALUES(113210101, 'Marcelo Oliveira Silva', to_date('01/01/1990', 'DD/MM/YYYY'));
/* Inserção de pessoas */

/* Inserção de professores */
INSERT INTO professor VALUES(113210581, 'Doutor', null);
INSERT INTO professor VALUES(113210423, 'Mestre', null);
INSERT INTO professor VALUES(113210583, 'Mestre', null);
INSERT INTO professor VALUES(113210323, 'Doutor', null);
INSERT INTO professor VALUES(112210222, 'Mestre', null);
INSERT INTO professor VALUES(113110895, 'Doutor', null);
INSERT INTO professor VALUES(113110421, 'Doutor', null);
INSERT INTO professor VALUES(113110553, 'Mestre', null);
INSERT INTO professor VALUES(113110312, 'Doutor', null);
INSERT INTO professor VALUES(113210422, 'Mestre', null);
/* Inserção de professores */

/* Inserção de departamentos */
INSERT INTO departamento VALUES(100, 'DMH', 'R. Aprígio Veloso, 01, Bodocongó', 113210581);
INSERT INTO departamento VALUES(101, 'DVI', 'R. Aprígio Veloso, 11, Bodocongó', 113210423);
INSERT INTO departamento VALUES(102, 'DCC', 'R. Aprígio Veloso, 14, Bodocongó', 113210583);
INSERT INTO departamento VALUES(103, 'DET', 'R. Aprígio Veloso, 20, Bodocongó', 113210323);
INSERT INTO departamento VALUES(104, 'DCH', 'R. Aprígio Veloso, 40, Bodocongó', 112210222);
/* Inserção de departamentos */

/* Inserção de número do departamento */
INSERT INTO departamento_telefone VALUES(100, '083-33217463');
INSERT INTO departamento_telefone VALUES(101, '083-33342782');
INSERT INTO departamento_telefone VALUES(102, '083-33907421');
INSERT INTO departamento_telefone VALUES(103, '083-33123943');
INSERT INTO departamento_telefone VALUES(104, '083-33531584');
/* Inserção de número do departamento */

/* Inserção de projeto */
INSERT INTO projeto VALUES(300, 'Mineracao de dados', 'Projeto de Mineracao de Dados', 15000.00, to_date('23/03/2014', 'DD/MM/YYYY'), to_date('04/09/2014', 'DD/MM/YYYY'), 113210581);
INSERT INTO projeto VALUES(301, 'Analise Probabilistica em Inteligncia Artificial', 'Uso de programas estocasticos para solucionar problemas em IA', 11500.00, to_date('09/01/2014', 'DD/MM/YYYY'), to_date('02/11/2017', 'DD/MM/YYYY'), 113210423);
INSERT INTO projeto VALUES(302, 'Banco de Dados', 'Projeto de Banco de Dados', 13500.00, to_date('13/08/2014', 'DD/MM/YYYY'), to_date('30/03/2018', 'DD/MM/YYYY'), 113210583);
INSERT INTO projeto VALUES(303, 'Microeletronica', 'Projeto de Microeletrônica', 2500.00, to_date('11/11/2015', 'DD/MM/YYYY'), to_date('22/12/2017', 'DD/MM/YYYY'), 113210323);
INSERT INTO projeto VALUES(304, 'Cidades Inteligentes', 'Tecnologia Avancada: Cidades Inteligentes', 16000.00, to_date('01/02/2016', 'DD/MM/YYYY'), to_date('01/02/2018', 'DD/MM/YYYY'), 112210222);
INSERT INTO projeto VALUES(305, 'Meta Modelos', 'Analise de Meta Modelos', 12000.00, to_date('05/03/2016', 'DD/MM/YYYY'), to_date('23/02/2018', 'DD/MM/YYYY'), 113110895);
INSERT INTO projeto VALUES(306, 'Analise de Sistemas da Informação', 'Estudo de Sistemas da Informação', 6400.00, to_date('02/11/2016', 'DD/MM/YYYY'), to_date('03/12/2017', 'DD/MM/YYYY'), 113110421);
INSERT INTO projeto VALUES(307, 'Redes Neurais', 'Projeto de Redes Neurais', 17000.00, to_date('01/06/2015', 'DD/MM/YYYY'), to_date('06/03/2018', 'DD/MM/YYYY'), 113110553);
INSERT INTO projeto VALUES(308, 'Tecnologia e Sociedade', 'Analise dos impactos sociais oriundos dos avanos tecnol—gicos', 1200.00, to_date('23/02/2016', 'DD/MM/YYYY'), to_date('23/07/2018', 'DD/MM/YYYY'), 113110312);
INSERT INTO projeto VALUES(309, 'Jogos Digitais', 'Projeto de Jogos Digitais', 6000.00, to_date('05/05/2017', 'DD/MM/YYYY'), to_date('03/03/2020', 'DD/MM/YYYY'), 113210422);
INSERT INTO projeto VALUES(310, 'Engenharia de Software', 'Analise de processos', 60000.00, to_date('15/02/2012', 'DD/MM/YYYY'), to_date('15/12/2016', 'DD/MM/YYYY'), 113110895);
/* Inserção de projeto */

/* Inserção do agente financiador */
INSERT INTO agentefinanciador VALUES (4000, 'Stefaninni', 'contato@stefaninni.com', 'Campina Grande, PB - Rua do Catole, 123 - Centro');
INSERT INTO agentefinanciador VALUES (4001, 'FIEP', 'contato@fiep.com', 'Campina Grande, PB - Av. Floriano Peixoto, 180 - Centenário');
INSERT INTO agentefinanciador VALUES (4002, 'CAPES', 'contato@capes.com', 'Rio de Janeiro - RJ, Rua Almeida Costa, 80 - Centro');
INSERT INTO agentefinanciador VALUES (4003, 'MEC', 'contato@mec.com', 'Brasília, DF - Esplanada dos ministérios');
INSERT INTO agentefinanciador VALUES (4004, 'IBM', 'contato@ibm.com', 'João Pessoa - PB - Av. Beiramar - Orla');
/* Inserção do agente financiador */

/* Inserção de número do agente */
INSERT INTO agente_telefone VALUES(4000, '083-33397201');
INSERT INTO agente_telefone VALUES(4001, '083-33394761');
INSERT INTO agente_telefone VALUES(4002, '083-33391997');
INSERT INTO agente_telefone VALUES(4003, '083-33281154');
INSERT INTO agente_telefone VALUES(4004, '083-33375467');
/* Inserção de número do agente */

/* Inserção de agente em projeto */
INSERT INTO projeto_agente VALUES(300, 4000);
INSERT INTO projeto_agente VALUES(301, 4001);
INSERT INTO projeto_agente VALUES(302, 4002);
INSERT INTO projeto_agente VALUES(303, null);
INSERT INTO projeto_agente VALUES(304, 4004);
INSERT INTO projeto_agente VALUES(305, 4000);
INSERT INTO projeto_agente VALUES(306, 4001);
INSERT INTO projeto_agente VALUES(307, 4002);
INSERT INTO projeto_agente VALUES(308, null);
INSERT INTO projeto_agente VALUES(309, 4004);
/* Inserção de agente em projeto */

/*Inserção linha de pesquisa*/
INSERT INTO linhapesquisa VALUES(1000, 2000, 'Inteligencia Artificial', 'Aprendizado de Máquina');
INSERT INTO linhapesquisa VALUES(1001, 2001, 'Banco de Dados', 'Big Data');
INSERT INTO linhapesquisa VALUES(1002, 2002, 'Tecnologia e Sociedade', 'Impactos tecnologicos');
INSERT INTO linhapesquisa VALUES(1003, 2003, 'Computação pervasiva', 'Desenvolvimento mobile');
INSERT INTO linhapesquisa VALUES(1004, 2004, 'Semicondutores', 'Circuitos integrados');
/*Inserção linha de pesquisa*/

/* Inserção de alunos */
INSERT INTO aluno VALUES(113210419, 1000, 2000, 309);
INSERT INTO aluno VALUES(113210101, 1001, 2001, 308);
INSERT INTO aluno VALUES(113210420, 1003, null, null);
INSERT INTO aluno VALUES(113210613, 1003, 2003, 303);
INSERT INTO aluno VALUES(113210519, 1004, null, 301);
INSERT INTO aluno VALUES(113210622, 1003, null, null);
INSERT INTO aluno VALUES(113210623, 1002, null, null);
INSERT INTO aluno VALUES(113210624, 1004, 2004, 301);
INSERT INTO aluno VALUES(113210625, 1004, null, null);
INSERT INTO aluno VALUES(113210108, 1001, null, null);
INSERT INTO aluno VALUES(113210123, 1003, null, 305);
INSERT INTO aluno VALUES(113210324, 1000, null, null);
INSERT INTO aluno VALUES(113210112, 1001, 2001, 302);
INSERT INTO aluno VALUES(112210111, 1003, null, null);
INSERT INTO aluno VALUES(113210110, 1000, 2000, 300);
/* Inserção de alunos */

/* Inserção de alunos da pos*/
INSERT INTO pos VALUES(113210419, 'Doutorando', 113210581);
INSERT INTO pos VALUES(113210420, 'Mestrando', 113210323);
INSERT INTO pos VALUES(113210613, 'Mestrando', 113110895);
INSERT INTO pos VALUES(113210519, 'Doutorando', 113110421);
INSERT INTO pos VALUES(113210622, 'Doutorando', 113110312);
/* Inserção de alunos da pos*/

/* Inserção de alunos da graduação */
INSERT INTO graduacao VALUES(113210624, 113210419);
INSERT INTO graduacao VALUES(113210625, 113210519);
INSERT INTO graduacao VALUES(113210108, 113210420);
INSERT INTO graduacao VALUES(113210123, 113210613);
INSERT INTO graduacao VALUES(113210324, 113210519);
INSERT INTO graduacao VALUES(113210112, 113210622);
INSERT INTO graduacao VALUES(112210111, 113210419);
INSERT INTO graduacao VALUES(113210110, 113210420);
INSERT INTO graduacao VALUES(113210623, 113210613);
INSERT INTO graduacao VALUES(113210419, 113210622);
/* Inserção de alunos da graduação */

/*Inserção de linha de pesquisa em projeto*/
INSERT INTO projeto_linhapesquisa VALUES(300, 1000, 2000);
INSERT INTO projeto_linhapesquisa VALUES(304, 1003, 2003);
INSERT INTO projeto_linhapesquisa VALUES(303, 1004, 2004);
INSERT INTO projeto_linhapesquisa VALUES(302, 1001, 2001);
INSERT INTO projeto_linhapesquisa VALUES(308, 1001, 2001);
INSERT INTO projeto_linhapesquisa VALUES(305, 1002, 2002);
INSERT INTO projeto_linhapesquisa VALUES(301, 1002, 2002);
INSERT INTO projeto_linhapesquisa VALUES(309, 1000, 2000);
/*Inserção de linha de pesquisa em projeto*/

/*Inserção de professores em em linha de pesquisa*/
INSERT INTO professor_linhapesquisa VALUES(113210581, 1000, 2000);
INSERT INTO professor_linhapesquisa VALUES(113210423, 1003, 2003);
INSERT INTO professor_linhapesquisa VALUES(113110553, 1001, 2001);
INSERT INTO professor_linhapesquisa VALUES(113210583, 1001, 2001);
INSERT INTO professor_linhapesquisa VALUES(113210581, 1004, 2004);
INSERT INTO professor_linhapesquisa VALUES(113110312, 1002, 2002);
/*Inserção de professores em em linha de pesquisa*/

/* Inserção de patente */
INSERT INTO patente VALUES (900, 301, 6001, 'Patente X');
INSERT INTO patente VALUES (901, 308, 6002, 'Patente Y');
INSERT INTO patente VALUES (902, 309, 6003, 'patente Z');
INSERT INTO patente VALUES (903, 302, 6004, 'patente W');
INSERT INTO patente VALUES (904, 306, 6005, 'patente Q');
/* Inserção de patente */

/*Inserção de publicação*/
INSERT INTO publicacao VALUES(800, 'Implicação tecnológica do ensino no Nordeste', 2002, 'IEEE', 301);
INSERT INTO publicacao VALUES(801, 'Implicação construtiva de busca com Data Mining', 2005, 'ACM', 308);
INSERT INTO publicacao VALUES(802, 'O futuro da tecnologia', 2013, 'SCIELO', 305);
INSERT INTO publicacao VALUES(803, 'Criação de CGI em jogos digitais', 2013, 'IEEE', 309);
INSERT INTO publicacao VALUES(804, 'Sistemas embarcados ', 2014, 'ACM', 304);
/*Inserção de publicação*/

/*Inserção publicação das pessoas*/
INSERT INTO publicacao_pessoa VALUES(800, 113210613);
INSERT INTO publicacao_pessoa VALUES(801, 113110553);
INSERT INTO publicacao_pessoa VALUES(802, 113110312);
INSERT INTO publicacao_pessoa VALUES(803, 113210420);
INSERT INTO publicacao_pessoa VALUES(804, 113210581);
/*Inserção publicação das pessoas*/

/* Inserção de professor em projeto */
INSERT INTO professor_projeto VALUES(113210581, 300);
INSERT INTO professor_projeto VALUES(113210423, 301);
INSERT INTO professor_projeto VALUES(113210583, 302);
INSERT INTO professor_projeto VALUES(113210323, 303);
INSERT INTO professor_projeto VALUES(112210222, 304);
/* Inserção de professor em projeto */

/* Inserção de laboratório */
INSERT INTO laboratorio VALUES(117878, 'SPLAB', 'SPLAB');
INSERT INTO laboratorio VALUES(117800, 'EMBEDDED', 'CI');
INSERT INTO laboratorio VALUES(117853, 'LSI', 'CN');
INSERT INTO laboratorio VALUES(117831, 'ANALYTCS', 'CN');
INSERT INTO laboratorio VALUES(117980, 'LIA', 'CN');
/* Inserção de laboratório */

/* Inserção de projeto para laboratório*/
INSERT INTO projeto_laboratorio VALUES(300, 117853);
INSERT INTO projeto_laboratorio VALUES(301, 117800);
INSERT INTO projeto_laboratorio VALUES(302, 117853);
INSERT INTO projeto_laboratorio VALUES(303, 117831);
INSERT INTO projeto_laboratorio VALUES(304, 117980);
/* Inserção de projeto para laboratório*/

/* Inserção de recursos em laboratórios*/
INSERT INTO recurso VALUES(200, 'Computadores', 'Recurso computadores', 'Prioritario', 117878);
INSERT INTO recurso VALUES(201, 'Mobilia', 'Recurso mobilia', 'Objetos e utensilios', 117800);
INSERT INTO recurso VALUES(202, 'Dinheiro', 'Recurso financeiro', 'Financeiro', 117853);
INSERT INTO recurso VALUES(203, 'Iluminacao', 'Recurso iluminacao', 'Objetos e utensilios', 117831);
INSERT INTO recurso VALUES(204, 'Dispositivos', 'Recurso dispositivos', 'Prioritario', 117980);
INSERT INTO recurso VALUES(205, 'Agua', 'Recurso agua', 'Consumo', 117800);
INSERT INTO recurso VALUES(206, 'Alimentacao', 'Recurso alimentacao', 'Consumo', 117800);
INSERT INTO recurso VALUES(207, 'Hardware', 'Recurso hardware', 'Prioritario', 117878);
/* Inserção de recursos em laboratórios*/

