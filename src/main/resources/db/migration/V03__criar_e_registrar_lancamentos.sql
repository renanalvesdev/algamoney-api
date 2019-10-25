 CREATE TABLE lancamento (
	codigo SERIAL PRIMARY KEY,
	descricao TEXT NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pagamento DATE ,
    valor DECIMAL(10,2) NOT NULL,
    observacao TEXT,
    tipo TEXT NOT NULL,
    codigo_categoria INTEGER NOT NULL,
    codigo_pessoa INTEGER ,
    FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo),
    FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
    
);


INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Salario mensal', '2017-06-10', null, 6500.00, 'Distribuicao de lucros', 'RECEITA', 1, 1);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Bahamas', '2017-02-10', '2017-02-10', 100.32, null, 'DESPESA', 2, 2);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Top Club', '2017-06-10', null, 120, null, 'RECEITA', 3, 3);

INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('CEMIG', '2017-02-10', '2017-02-10', 110.44 , 'Geração', 'RECEITA', 3, 4);

INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('DMAE', '2017-06-10', null, 200.30, null, 'DESPESA', 3, 5);

INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Extra', '2017-03-10', '2017-03-10', 1010.00, null, 'RECEITA', 4, 6);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Bahamas', '2017-06-10', null, 500, null, 'RECEITA', 1, 7);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Top Club', '2017-06-10', null, 120, null, 'RECEITA', 4, 8);
INSERT INTO lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) VALUES ('Despachante', '2017-06-10', null, 500, null, 'RECEITA', 3, 9);
