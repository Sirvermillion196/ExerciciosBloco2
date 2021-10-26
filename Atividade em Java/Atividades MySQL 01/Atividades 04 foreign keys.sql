create database db_cidade_das_carnes;
	use db_cidade_das_carnes;
    
create table tb_categoria (
	id bigint (2) auto_increment,
        boi varchar (30) not null,
        tipo varchar (30) not null,
        qualidade boolean,
        
        primary key (id)
);

insert into tb_categoria (boi, tipo, qualidade) 
				  values ("Josesvaldo", "Coxa", true),
						 ("João", "Lombo", true),
                         ("Gustavo", "Costela", false),
                         ("Guilhherme", "Lombo", true),
                         ("Caio", "Traseira", true);

select * from tb_categoria;

create table tb_produto (
	id_produto bigint (2) auto_increment,
		nome varchar (30) not null,
		produtor varchar(30) not null,
		preco real not null,
		estoque int (3),
        fk_categoria bigint,
        
        primary key (id_produto),
        foreign key (fk_categoria) references tb_categoria (id)
);

insert into tb_produto (nome, produtor, preco, estoque, fk_categoria) 
				values ("Patinho", "Friboi", 75.99, 20, 1),
						("Picanha", "Friboi", 45.99, 50, 2),
                        ("Costela", "Sadia", 85.99, 25, 5),
                        ("Bisteca", "Friboi", 35.99, 15, 4),
                        ("Largato,", "Sadia", 95.99, 23, 3),
                        ("Cupim", "Friboi", 15.99, 55, 1),
                        ("Contra File", "Sadia", 175.99, 40, 1),
                        ("Maminha", "Sadia", 39.99, 90, 1);
                        
select* from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "C%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_categoria
and tb_produto.estoque = true order by tb_produto.id_produto;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_categoria 
	and tb_categoria.tipo = "Lombo";