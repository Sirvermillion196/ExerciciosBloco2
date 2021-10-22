create database db_ecommerce;

use db_ecommerce;
create table tb_produtos (
	
    id_produto bigint (8) auto_increment,
    nome varchar(255) not null,
    quantidade int (255) not null,
    classificacao varchar (255) not null,
    setor varchar (255) not null,
    preco decimal (65) not null,
    
    primary key (id_produto)
    
);

insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Barra de Chocolate", 50, "Doces", "Estoque", 5.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Bombons", 60, "Doces", "Estoque", 2.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Coca-Cola", 25, "Bebidas", "Estoque", 7.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Mochi", 45, "Doces Importados", "Estoque", 15.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Pudim", 10, "Doces", "Entregas", 8.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Bolacha", 65, "Doces", "Estoque", 2.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Bolacha Recheada", 60, "Doces", "Estoque", 4.99);
insert into tb_produtos (nome, quantidade, classificacao, setor, preco) values ("Ferreiro Roche", 28, "Doces", "Estoque", 65.99);

select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;

update tb_produtos set preco = 1500 where id_produto = 4