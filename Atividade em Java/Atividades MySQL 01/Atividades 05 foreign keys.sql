create database db_construindo_a_nossa_vida;
	use db_construindo_a_nossa_vida;
    
create table tb_categoria (
	id bigint (2) auto_increment,
        material varchar (30) not null,
        tipo varchar (30) not null,
        qualidade boolean,
        
        primary key (id)
);

insert into tb_categoria (material, tipo, qualidade) 
				  values ("Reforma", "Reforma completa", true),
						 ("Construção", "Construção pesada", true),
                         ("Reforma", "Reforma pesado", false),
                         ("Construção", "Construção pesada", true),
                         ("Reforma", "Reforma simples", true);

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
				values ("Massa corrida", "Casa sol", 75.99, 20, 1),
						("Tijolo", "Casa sol", 45.99, 50, 2),
                        ("Piso de chão", "Reformas João", 85.99, 25, 5),
                        ("Cimento", "Reformas João", 35.99, 15, 4),
                        ("Tinta branca,", "Casa sol", 95.99, 23, 3),
                        ("Rolo de pintura", "Reformas João", 15.99, 55, 1),
                        ("Azulejo", "Reformas João", 175.99, 40, 1),
                        ("Tinta amarela", "Casa sol", 39.99, 90, 1);
                        
select* from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "C%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_categoria
and tb_produto.estoque = true order by tb_produto.id_produto;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_categoria 
	and tb_categoria.tipo = "Construção pesada";