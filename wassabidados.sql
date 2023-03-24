SELECT * FROM categoria;

INSERT INTO categoria(nome, image) VALUES ("Promoção", "https://cdn-icons-png.flaticon.com/512/87/87255.png");
INSERT INTO categoria(nome, image) VALUES ("Entrada", "https://cdn-icons-png.flaticon.com/512/87/87255.png");
INSERT INTO categoria(nome, image) VALUES ("Holl Wassabi", "https://cdn-icons-png.flaticon.com/512/87/87255.png");
INSERT INTO categoria(nome, image) VALUES ("Temaki Especial", "https://cdn-icons-png.flaticon.com/512/87/87255.png");
INSERT INTO categoria(nome, image) VALUES ("Sobremesas", "https://cdn-icons-png.flaticon.com/512/87/87255.png");
INSERT INTO categoria(nome, image) VALUES ("Bebidas", "https://cdn-icons-png.flaticon.com/512/87/87255.png");

SELECT * FROM cliente;

INSERT INTO cliente(`nome`, `cpf`, `telefone`, `endereco`, `cartao`) VALUES ("Thyago Ronald", "444.333.444-44", "91 98284-3040", "Sideral JD1", "43423432");
INSERT INTO cliente(`nome`, `cpf`, `telefone`, `endereco`, `cartao`) VALUES ("Lucivaldo", "444.333.444-45", "91 98284-3040", "Sideral JD1", "43423432");
INSERT INTO cliente(`nome`, `cpf`, `telefone`, `endereco`, `cartao`) VALUES ("Jhonny", "444.333.444-46", "91 98284-3040", "Sideral JD1", "43423432");

SELECT * FROM produto;

# PROMOÇÃO
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Combo Promo 01 (15 peças)", "10 Hol De Salmao Grelhado com Batata Palha Doce", 40.90, 10, "PROMOCAO");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Combo Promo 02 (15 peças)", "4 Sashimi De Salmao, 2 Gunkas Maçaricado Com Molho de Manga", 53.90, 15, "PROMOCAO");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Combo Promo 03 (15 peças)", "5 Makimono Skin Com Pesto De Jambu, 5 Hot de Kani Com Pate", 49.90, 12, "PROMOCAO");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Combo Promo 04 (15 peças)", "3 Gunkan Com Patê de Polvo Apimentado, 2 Niguiris de Kani", 48.50, 10, "PROMOCAO");

# ENTRADAS
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Salmão Em Consumer", "Salmão Em Consumer Com Base de Purê de Batata Doce", 39.00, 5, "ENTRADAS");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Lula Em Anéis Grelhada", "Anéis de Lula Grelhada Em Fogo Brando Com Faroda de Polvo", 41, 6 , "ENTRADAS");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Bolinhas de Salmão Fritas", "10 Unidades de Salmão Temperados com Limão e Cebolinha", 28, 10, "ENTRADAS");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Camarão Empanado (5 unidades)", "Camarão Empanado e Frito", 43.50, 12, "ENTRADAS");

# TEMAKI_ESPECIAL
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Exotic", "Salmão, kani, shimeji fritos na manteiga e cream cheese, arroz e algas", 41.50, 100, "TEMAKI_ESPECIAL");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Poró", "Salmão misturado com alho poró na casquinha de massa harumaki, arroz e cream cheese", 42.50, 100, "TEMAKI_ESPECIAL");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Salmão Especial", "Salmão grelhado na casquinha de massa harumaki, cream cheese, arroz e biscoitinho tempurá", 43.50, 100, "TEMAKI_ESPECIAL");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Supe Wasabi", "Salmão, camarão e kani na massa harumaki com cream cheese, arroz e cebolinha", 45.50, 100, "TEMAKI_ESPECIAL");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Wasabi", "Salmão grelhado, camarão, cream cheese e cebolinha", 42.00, 100, "TEMAKI_ESPECIAL");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Temaki Wasabi Especial", "Recheio de hot bowling de salmão, coberto por cream cheese e biscoitinho tempurá.", 45.00, 100, "TEMAKI_ESPECIAL");

# HOLL_WASSABI
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Wasabi Holl Met", "5 peças do holl de salmão grelhado, cream cheese, alga nori, arroz, gergelim e biscoitinho tempurá.", 23.50, 100, "HOLL_WASSABI");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Holl Tartar de Salmão Met", "5 peças do holl de salmão, arroz, gergelim, alga nori, cream cheese, e patê de salmão encima.", 24.50, 100, "HOLL_WASSABI");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Holl Tartar de Salmão", "10 peças de holl de Salmão e cream cheese, arroz, alga nori, gergelim, com tartare de salmão fresco por cima.", 46.50, 100, "HOLL_WASSABI");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Kasai Met", "5 peças do holl de camarão, cream cheese, envolvido por finas camadas de salmão maçaricado e coberto com raspas de limão siciliano.", 23.50, 100, "HOLL_WASSABI");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Megasabi", "Salmão, camarão gergelim, coberto com pasta de kani e cebolinha.", 47.00, 100, "HOLL_WASSABI");
INSERT INTO produto(nome, descricao, preco, quantidade, categoria) VALUES("Skinmaki", "Salmão, cream cheese, gergelim, envolto com salmão skin.", 42.00, 100, "HOLL_WASSABI");

SELECT pr.nome, cliente.nome FROM pedido pe
INNER JOIN produto pr
ON pe.produto_id = pr.id;

SELECT * FROM pedido;