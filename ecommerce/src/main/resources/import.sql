-- CATEGORIAS
INSERT INTO categoria (nome, descricao) VALUES ('Informatica', 'Produtos de Informatica');
INSERT INTO categoria (nome, descricao) VALUES ('Livros', 'Livros Técnicos');
INSERT INTO categoria (nome, descricao) VALUES ('Eletronicos', 'Produtos Eletronicos em Geral');
INSERT INTO categoria (nome, descricao) VALUES ('Smartphones', 'Smartphones e Celulares Desbloqueados');
INSERT INTO categoria (nome, descricao) VALUES ('Eletrodomesticos', 'Eletrodomesticos para o Lar');

-- PRODUTOS
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Notebook Dell Inspiron 15 3000', 'Intel i5 12a geracao 8GB RAM 512GB SSD Tela 15.6 Full HD', 3299.00, 12, 1);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Codigo Limpo', 'Livro do Autor Robert C. Martin', 87.34, 20, 2);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartwatch Pro X1', 'Relogio inteligente com monitor cardiaco e GPS', 349.90, 45, 3);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartphone Samsung Galaxy A54 128GB', 'Tela AMOLED 6.4 5G 8GB RAM', 2199.00, 30, 4);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Geladeira Frost Free 375L Inox', 'Geladeira duplex com freezer grande', 2899.00, 8, 5);

-- CLIENTE
INSERT INTO cliente (nome, email, telefone) VALUES ('Rafael', 'rafael@email.com', '00000-0000');
INSERT INTO cliente (nome, email, telefone) VALUES ('Fulano', 'fulano@email.com', '00000-0001');
INSERT INTO cliente (nome, email, telefone) VALUES ('Beltrano', 'beltrano@email.com', '00000-0002');
INSERT INTO cliente (nome, email, telefone) VALUES ('Sicrano', 'sicrano@email.com', '00000-0003');
INSERT INTO cliente (nome, email, telefone) VALUES ('Alcrano', 'alcrano@email.com', '00000-0004');

-- PEDIDO
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES (NOW(), 'Aguardando Pagamento', 100.00, 1);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES (NOW(), 'Pago', 3386.34, 2);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES (NOW(), 'Enviado', 2199.00, 3);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES (NOW(), 'Entregue', 3248.90, 4);
INSERT INTO pedido (data, status, valor_total, cliente_id) VALUES (NOW(), 'Cancelado', 349.90, 5);

-- ITEMPEDIDO
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 100.00, 1, 2);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 3299.00, 2, 1);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 2199.00, 3, 4);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 2899.00, 4, 5);
INSERT INTO item_pedido (quantidade, valor_unitario, pedido_id, produto_id) VALUES (1, 349.90, 4, 3);

-- PAGAMENTO
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (100.00, NOW(), 'Pendente', 'PIX', 1);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (3386.34, DATE_SUB(NOW(), INTERVAL 3 DAY), 'Aprovado', 'CARTAO_CREDITO', 2);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (2199.00, DATE_SUB(NOW(), INTERVAL 2 DAY), 'Aprovado', 'BOLETO', 3);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (3248.90, DATE_SUB(NOW(), INTERVAL 1 DAY), 'Aprovado', 'PIX', 4);
INSERT INTO pagamento (valor, data, status, tipo, pedido_id) VALUES (349.90, NOW(), 'Cancelado', 'CARTAO_CREDITO', 5);