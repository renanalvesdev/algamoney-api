CREATE TABLE pessoa (
	codigo SERIAL PRIMARY KEY ,
	nome VARCHAR(50) NOT NULL,
    ativo BOOLEAN NOT NULL,
    cep VARCHAR(50),
    rua VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50)

    
);

INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Renan da Silva', true, '60360750', '8 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Blenda Vasconcelos Bezerra', true, '60360751', '9 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Benedita Pereira da Silva', true, '60360752', '10 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('João Alves Veloso', true, '60360753', '11 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Erika Rayane', true, '60360753', '12 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');

INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Rinan da Silva', true, '60360750', '8 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Blinda Vasconcelos Bezerra', true, '60360751', '9 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Benidita Pereira da Silva', true, '60360752', '10 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Ião Alves Veloso', true, '60360753', '11 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
INSERT INTO pessoa (nome, ativo, cep, rua, bairro, cidade, estado) values ('Eroka Rayane', true, '60360753', '12 de Dezembro', 'Ant. Bezerra', 'Fortaleza', 'Ceara');
