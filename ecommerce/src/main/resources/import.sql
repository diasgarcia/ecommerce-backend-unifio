INSERT INTO categoria (nome, descricao) VALUES ('Informatica', 'Produtos de Informatica');
INSERT INTO categoria (nome, descricao) VALUES ('Livros', 'Livros Técnicos');
INSERT INTO categoria (nome, descricao) VALUES ('Eletronicos', 'Produtos Eletronicos em Geral');
INSERT INTO categoria (nome, descricao) VALUES ('Smartphones', 'Smartphones e Celulares Desbloqueados');
INSERT INTO categoria (nome, descricao) VALUES ('Telefonia', 'Telefonia Fixa e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Games', 'Jogos, Consoles e Acessorios Gamer');
INSERT INTO categoria (nome, descricao) VALUES ('Moveis', 'Moveis para Casa e Escritorio');
INSERT INTO categoria (nome, descricao) VALUES ('Eletrodomesticos', 'Eletrodomesticos para o Lar');
INSERT INTO categoria (nome, descricao) VALUES ('Eletroportateis', 'Eletroportateis Domesticos');
INSERT INTO categoria (nome, descricao) VALUES ('TV e Video', 'Televisores, Smart TVs e Projetores');
INSERT INTO categoria (nome, descricao) VALUES ('Audio e Som', 'Caixas de Som, Fones e Home Theater');
INSERT INTO categoria (nome, descricao) VALUES ('Cameras e Drones', 'Cameras, Filmadoras e Drones');
INSERT INTO categoria (nome, descricao) VALUES ('Casa e Decoracao', 'Artigos de Casa e Decoracao');
INSERT INTO categoria (nome, descricao) VALUES ('Cama, Mesa e Banho', 'Produtos de Cama, Mesa e Banho');
INSERT INTO categoria (nome, descricao) VALUES ('Utilidades Domesticas', 'Utilidades para o Lar');
INSERT INTO categoria (nome, descricao) VALUES ('Moda Masculina', 'Roupas e Acessorios Masculinos');
INSERT INTO categoria (nome, descricao) VALUES ('Moda Feminina', 'Roupas e Acessorios Femininos');
INSERT INTO categoria (nome, descricao) VALUES ('Moda Infantil', 'Roupas e Acessorios Infantis');
INSERT INTO categoria (nome, descricao) VALUES ('Calcados', 'Calcados Masculinos, Femininos e Infantis');
INSERT INTO categoria (nome, descricao) VALUES ('Bolsas e Malas', 'Bolsas, Mochilas e Malas de Viagem');
INSERT INTO categoria (nome, descricao) VALUES ('Joias e Bijuterias', 'Joias, Bijuterias e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Relogios', 'Relogios Masculinos e Femininos');
INSERT INTO categoria (nome, descricao) VALUES ('Beleza e Perfumaria', 'Produtos de Beleza e Perfumes');
INSERT INTO categoria (nome, descricao) VALUES ('Saude e Bem Estar', 'Produtos de Saude e Bem Estar');
INSERT INTO categoria (nome, descricao) VALUES ('Esportes e Lazer', 'Artigos Esportivos e Lazer');
INSERT INTO categoria (nome, descricao) VALUES ('Fitness e Musculacao', 'Equipamentos Fitness e Suplementos');
INSERT INTO categoria (nome, descricao) VALUES ('Bicicletas', 'Bicicletas, Pecas e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Brinquedos', 'Brinquedos e Jogos Infantis');
INSERT INTO categoria (nome, descricao) VALUES ('Bebe', 'Produtos para Bebes e Maternidade');
INSERT INTO categoria (nome, descricao) VALUES ('Papelaria e Escritorio', 'Artigos de Papelaria e Escritorio');
INSERT INTO categoria (nome, descricao) VALUES ('Alimentos e Bebidas', 'Alimentos, Bebidas e Produtos Gourmet');
INSERT INTO categoria (nome, descricao) VALUES ('Pet Shop', 'Produtos para Animais de Estimacao');
INSERT INTO categoria (nome, descricao) VALUES ('Jardim e Piscina', 'Produtos para Jardim e Piscina');
INSERT INTO categoria (nome, descricao) VALUES ('Ferramentas', 'Ferramentas e Equipamentos');
INSERT INTO categoria (nome, descricao) VALUES ('Automotivo', 'Pecas e Acessorios Automotivos');
INSERT INTO categoria (nome, descricao) VALUES ('Construcao e Reforma', 'Materiais para Construcao e Reforma');
INSERT INTO categoria (nome, descricao) VALUES ('Instrumentos Musicais', 'Instrumentos Musicais e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Artesanato', 'Materiais para Artesanato e Arte');
INSERT INTO categoria (nome, descricao) VALUES ('Festas e Fantasias', 'Artigos para Festas e Fantasias');
INSERT INTO categoria (nome, descricao) VALUES ('CD, DVD e Midia', 'Filmes, Musicas e Midias Fisicas');
INSERT INTO categoria (nome, descricao) VALUES ('Climatizacao', 'Ar Condicionado, Ventiladores e Climatizadores');
INSERT INTO categoria (nome, descricao) VALUES ('Iluminacao', 'Lampadas, Luminarias e Iluminacao');
INSERT INTO categoria (nome, descricao) VALUES ('Seguranca', 'Cameras de Seguranca e Alarmes');
INSERT INTO categoria (nome, descricao) VALUES ('Energia Solar', 'Placas Solares e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Suplementos', 'Suplementos Alimentares e Vitaminas');
INSERT INTO categoria (nome, descricao) VALUES ('Otica', 'Oculos de Sol, de Grau e Lentes');
INSERT INTO categoria (nome, descricao) VALUES ('Moda Intima', 'Lingeries e Moda Intima');
INSERT INTO categoria (nome, descricao) VALUES ('Agro e Industria', 'Produtos Agropecuarios e Industriais');
INSERT INTO categoria (nome, descricao) VALUES ('Tabacaria', 'Produtos de Tabacaria e Acessorios');
INSERT INTO categoria (nome, descricao) VALUES ('Colecionaveis', 'Action Figures e Itens Colecionaveis');
INSERT INTO categoria (nome, descricao) VALUES ('Livros Didaticos', 'Livros Didaticos e Educacionais');
INSERT INTO categoria (nome, descricao) VALUES ('Papelaria Premium', 'Papelaria Premium e Presentes');


-- INFORMATICA id 1
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Notebook Dell Inspiron 15 3000', 'Intel i5 12a geracao 8GB RAM 512GB SSD Tela 15.6 Full HD', 3299.00, 12, 1);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Mouse Gamer Logitech G203 Lightsync', 'Mouse 8000 DPI RGB com 6 botoes programaveis', 149.90, 50, 1);

-- LIVROS id 2 (somando com o Codigo Limpo que ja tem)
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Arquitetura Limpa', 'Livro do Autor Robert C. Martin sobre arquitetura de software', 92.50, 25, 2);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Codigo Limpo', 'Livro do Autor Robert C. Martin', 87.34, 20, 2);

-- ELETRONICOS id 3
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartwatch Pro X1', 'Relogio inteligente com monitor cardiaco e GPS', 349.90, 45, 3);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Hub USB 3.0 7 Portas', 'Hub USB com fonte 5Gbps e botao on/off', 89.90, 80, 3);
-- SMARTPHONES id 4
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartphone Samsung Galaxy A54 128GB', 'Tela AMOLED 6.4 5G 8GB RAM', 2199.00, 30, 4);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('iPhone 14 128GB Estelar', 'Chip A15, camera 12MP e tela Super Retina', 4599.00, 15, 4);
-- TELEFONIA id 5
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Telefone Sem Fio Intelbras TS 3110', 'Telefone sem fio com identificador de chamadas', 129.90, 50, 5);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Headset Telefonico ELG CHS 01', 'Headset para call center com microfone', 79.90, 60, 5);
-- GAMES id 6
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('PlayStation 5 Slim 1TB', 'Console PS5 Slim com controle DualSense', 3999.00, 12, 6);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Controle Xbox Sem Fio Carbon Black', 'Controle wireless original Xbox Series', 449.90, 35, 6);
-- MOVEIS id 7
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Escrivaninha 120cm 2 Gavetas', 'Mesa escrivaninha em MDF industrial', 459.00, 20, 7);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Cadeira Escritorio Presidente', 'Cadeira giratoria com apoio de bracos', 699.00, 18, 7);
-- ELETRODOMESTICOS id 8
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Geladeira Frost Free 375L Inox', 'Geladeira duplex com freezer grande', 2899.00, 8, 8);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Micro-ondas 30L Espelhado', 'Micro-ondas com grill e 10 funcoes', 649.00, 22, 8);
-- ELETROPORTATEIS id 9
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Air Fryer 4.2L Digital', 'Fritadeira sem oleo com timer digital', 399.00, 40, 9);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Aspirador Robo Smart 3000', 'Robo aspirador com controle por app', 899.00, 25, 9);
-- TV E VIDEO id 10
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smart TV 50 4K UHD QLED', 'TV 50 polegadas 4K com Wi-Fi integrado', 2199.00, 14, 10);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Projetor Portatil Full HD 5000 Lumens', 'Mini projetor com Android e Wi-Fi', 1299.00, 10, 10);
-- AUDIO E SOM id 11
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Fone Bluetooth Over Ear ANC', 'Fone com cancelamento de ruido e 40h bateria', 299.90, 55, 11);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Caixa de Som JBL Boombox 3', 'Caixa bluetooth a prova dagua 24h bateria', 1899.00, 9, 11);
-- CAMERAS E DRONES id 12
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Camera GoPro Hero 12 Black', 'Camera de acao 5.3K a prova dagua', 2499.00, 16, 12);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Drone DJI Mini 3 Fly More Combo', 'Drone 4K com bateria extra e controle', 4599.00, 7, 12);
-- CASA E DECORACAO id 13
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Quadro Decorativo Abstrato 60x90', 'Quadro em canvas com moldura flutuante', 159.90, 30, 13);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Vaso Ceramica Nordico Branco 30cm', 'Vaso decorativo ceramica fosca', 89.90, 45, 13);
-- CAMA, MESA E BANHO id 14
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Jogo de Cama Casal 400 Fios', 'Jogo 4 pecas percal 100 porcento algodao', 229.90, 35, 14);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Toalha de Banho Gigante 70x140', 'Toalha felpuda 500gsm algodao', 49.90, 70, 14);
-- UTILIDADES DOMESTICAS id 15
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Conjunto Panelas Antiaderentes 10 Pecas', 'Panelas com revestimento ceramico', 299.90, 25, 15);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Organizador Geladeira Acrilico 5 Pecas', 'Potes organizadores transparentes', 79.90, 60, 15);
-- MODA MASCULINA id 16
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Camiseta Basica Algodao Preta G', 'Camiseta 100 porcento algodao fio 30.1', 39.90, 100, 16);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Calca Jeans Slim Masculina 42', 'Calca jeans elastano lavagem escura', 129.90, 40, 16);
-- MODA FEMININA id 17
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Vestido Longo Floral Viscose M', 'Vestido longo estampado com fenda', 159.90, 30, 17);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Blusa Cropped Tricot Bege U', 'Blusa cropped manga longa trico', 89.90, 50, 17);
-- MODA INFANTIL id 18
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Conjunto Infantil Menino 2 Pecas 4 Anos', 'Conjunto camiseta e bermuda algodao', 59.90, 60, 18);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Vestido Infantil Menina Floral 6 Anos', 'Vestido rodado com laco', 79.90, 45, 18);
-- CALCADOS id 19
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Tenis Esportivo Running 42', 'Tenis respirável para corrida', 199.90, 35, 19);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Sandalia Salto Bloco Feminina 37', 'Sandalia salto confortavel couro sintetico', 119.90, 28, 19);
-- BOLSAS E MALAS id 20
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Mochila Escolar Impermeavel 25L', 'Mochila com USB e compartimento notebook', 129.90, 40, 20);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Mala Viagem Media 65L ABS', 'Mala rigida com cadeado TSA', 299.90, 18, 20);
-- JOIAS E BIJUTERIAS id 21
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Colar Prata 925 Ponto de Luz', 'Colar prata com zirconia 45cm', 149.90, 30, 21);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Brinco Argola Folheado Ouro 3cm', 'Par de argolas folheadas hipoalergenicas', 39.90, 80, 21);
-- RELOGIOS id 22
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Relogio Masculino Inox Preto', 'Relogio analogico a prova dagua', 189.90, 25, 22);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Smartwatch Feminino Rose Gold', 'Smartwatch com monitor e notificacoes', 249.90, 30, 22);
-- BELEZA E PERFUMARIA id 23
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Perfume EDP Masculino 100ml', 'Perfume amadeirado fixacao 12h', 299.90, 20, 23);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Skincare Acido Hialuronico 3 Pecas', 'Kit hidratante facial completo', 129.90, 35, 23);
-- SAUDE E BEM ESTAR id 24
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Oximetro de Dedo Digital', 'Oximetro com display OLED e estojo', 79.90, 50, 24);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Pistola Massageadora 4 Niveis', 'Massageador muscular eletrico', 259.90, 22, 24);
-- ESPORTES E LAZER id 25
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Barraca Camping 4 Pessoas', 'Barraca impermeavel com avancê e mosquiteiro', 399.90, 15, 25);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Saco de Boxe 90cm Cheio', 'Saco de pancada couro sintetico', 249.90, 12, 25);
-- FITNESS E MUSCULACAO id 26
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Halter Ajustavel 20kg Par', 'Par de halteres com anilhas', 349.90, 20, 26);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Whey Protein 900g Baunilha', 'Whey concentrado 24g proteina por dose', 129.90, 45, 26);
-- BICICLETAS id 27
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Bicicleta Aro 29 MTB 21 Marchas', 'Bike aluminio com freio a disco', 1299.00, 10, 27);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Capacete Ciclismo Aerodinamico M', 'Capacete leve com 18 ventilacoes', 149.90, 30, 27);
-- BRINQUEDOS id 28
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Boneca Baby Alive Interativa', 'Boneca que fala e chora com acessorios', 199.90, 25, 28);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Carrinho Controle Remoto Off-Road 4x4', 'Carrinho 1:18 bateria recarregavel', 159.90, 30, 28);
-- BEBE id 29
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Carrinho Bebe 3 em 1 Moises', 'Carrinho com bebe conforto e moises', 899.00, 8, 29);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Mamadeira Anticólica 3 Unidades', 'Mamadeiras 250ml sem BPA', 89.90, 40, 29);
-- PAPELARIA E ESCRITORIO id 30
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Caderno Inteligente A5 80 Folhas', 'Caderno com disco e refil reposicionavel', 79.90, 50, 30);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Caneta Esferografica Azul Caixa 50un', 'Canetas ponta media 1.0mm', 45.90, 90, 30);
-- ALIMENTOS E BEBIDAS id 31
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Cafe Gourmet Moido 500g', 'Cafe arábica torra media', 32.90, 60, 31);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Vinho Tinto Malbec 750ml', 'Vinho argentino seco safra 2022', 69.90, 40, 31);
-- PET SHOP id 32
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Racao Golden Caes Adultos 15kg', 'Racao premium para caes frango e arroz', 159.90, 25, 32);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Arranhador Gato 1.20m', 'Arranhador com casinha e bolinha', 189.90, 15, 32);
-- JARDIM E PISCINA id 33
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Cortador Grama Eletrico 1300W', 'Cortador com coletor 32L', 399.00, 10, 33);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Piscina Inflavel Retangular 2000L', 'Piscina familia 2.62m x 1.75m', 459.00, 12, 33);
-- FERRAMENTAS id 34
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Parafusadeira Furadeira 12V Bivolt', 'Furadeira com 2 baterias e maleta', 299.00, 20, 34);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Jogo Chaves Allen e Torx 33 Pecas', 'Kit chaves L com estojo', 79.90, 35, 34);
-- AUTOMOTIVO id 35
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Central Multimidia 7 Polegadas Android', 'Multimidia com GPS e Bluetooth', 549.00, 18, 35);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Aspirador Portatil Automotivo 120W', 'Aspirador 12V com filtro HEPA', 99.90, 40, 35);
-- CONSTRUCAO E REFORMA id 36
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Tinta Acrilica Branca 18L', 'Tinta acrilica fosca rendimento 380m2', 289.00, 15, 36);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Piso Porcelanato Marmore 60x60 2m2', 'Porcelanato polido retificado', 139.90, 30, 36);
-- INSTRUMENTOS MUSICAIS id 37
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Violao Acustico Nylon Estudo', 'Violao classico com afinador', 349.00, 14, 37);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Teclado Musical 61 Teclas', 'Teclado com fonte e suporte', 599.00, 10, 37);
-- ARTESANATO id 38
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Tintas Acrilicas 24 Cores 20ml', 'Tintas acrilicas atoxicas', 59.90, 50, 38);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Maquina de Costura Portatil Mini', 'Maquina eletrica com pedal', 149.90, 22, 38);
-- FESTAS E FANTASIAS id 39
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Fantasia Super Heroi Infantil M', 'Fantasia com capa e mascara', 79.90, 30, 39);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Balao Metalizado 50 Unidades', 'Baloes cromados sortidos', 45.90, 70, 39);
-- CD, DVD E MIDIA id 40
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Box DVD Harry Potter 8 Filmes', 'Colecao completa com extras', 149.90, 20, 40);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Vinil Queen Greatest Hits LP', 'Disco de vinil 180g lacrado', 129.90, 18, 40);
-- CLIMATIZACAO id 41
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Ar Condicionado Split 12000 BTUs Inverter', 'Split frio com controle remoto', 2199.00, 6, 41);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Ventilador Coluna 40cm Turbo 6 Pas', 'Ventilador 126W com 3 velocidades', 229.90, 25, 41);
-- ILUMINACAO id 42
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Lampada LED Inteligente Wi-Fi RGB 9W', 'Lampada smart controle por app', 39.90, 100, 42);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Luminaria Mesa LED Touch Recarregavel', 'Luminaria com 3 tons de luz', 89.90, 40, 42);
-- SEGURANCA id 43
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Camera Wi-Fi 1080p Visao Noturna', 'Camera com deteccao de movimento', 149.90, 30, 43);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Fechadura Digital Biometrica', 'Fechadura com senha e digital', 499.00, 12, 43);
-- ENERGIA SOLAR id 44
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Placa Solar Fotovoltaica 550W', 'Painel monocristalino half cell', 899.00, 15, 44);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Inversor Solar On Grid 3kW', 'Inversor com Wi-Fi e MPPT', 2499.00, 5, 44);
-- SUPLEMENTOS id 45
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Creatina Monohidratada 300g', 'Creatina 100 porcento pura', 89.90, 60, 45);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Multivitaminico A-Z 60 Capsulas', 'Vitaminas e minerais completo', 49.90, 80, 45);
-- OTICA id 46
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Oculos Sol Polarizado UV400 Unissex', 'Armacao metal polarizada', 129.90, 35, 46);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Armacao Oculos Grau Acetato', 'Armacao retangular leve', 159.90, 25, 46);
-- MODA INTIMA id 47
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit 5 Calcinhas Algodao Feminina', 'Calcinhas algodao sortidas', 69.90, 50, 47);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit 3 Cuecas Boxer Algodao', 'Cuecas boxer elastico reforçado', 59.90, 60, 47);
-- AGRO E INDUSTRIA id 48
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Pulverizador Costal Manual 20L', 'Pulverizador com lanca inox', 189.90, 18, 48);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Bota Seguranca Couro Bico PVC', 'Botina com palmilha antiperfurante', 129.90, 30, 48);
-- TABACARIA id 49
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Cinzeiro Inox com Tampa', 'Cinzeiro anti odor com tampa', 29.90, 70, 49);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Isqueiro Recarregavel Eletrico USB', 'Isqueiro plasma sem chama', 49.90, 55, 49);
-- COLECIONAVEIS id 50
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Action Figure Naruto 25cm Articulado', 'Boneco Naruto Shippuden articulacoes', 149.90, 20, 50);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Funko Pop Harry Potter 08', 'Funko Pop vinil colecionavel', 119.90, 25, 50);
-- LIVROS DIDATICOS id 51
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Livro Matematica Basica Ensino Medio', 'Livro didatico com exercicios resolvidos', 69.90, 40, 51);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Apostila Concurso Publico Completa', 'Apostila 500 paginas todas as materias', 89.90, 30, 51);
-- PAPELARIA PREMIUM id 52
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Planner Permanente Capa Dura A5', 'Planner 12 meses sem data', 59.90, 45, 52);
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES ('Kit Marca Texto Pastel 6 Cores Stabilo', 'Canetas marca texto tons pastel', 39.90, 80, 52);