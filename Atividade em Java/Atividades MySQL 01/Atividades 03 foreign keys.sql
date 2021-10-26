create database db_farmacia_do_bem;
	use db_farmacia_do_bem;
    
create table tb_categoria (
	id bigint (2) auto_increment,
        tipo varchar (30) not null,
        tarja varchar (30) not null,
        receita boolean,
        
        primary key (id)
);

insert into tb_categoria (tipo, tarja, receita) 
				  values ("Comprimido", "Tarja preta", true),
						 ("Líquido", "Tarja preta", true),
                         ("Comprimido", "Tarja vermelha com Retenção", false),
                         ("Líquido", "Tarja vermelha sem Retenção", true),
                         ("Injeção", "Tarja preta", true);

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
				values ("Cloridrato de Hidroxizina", "Nativita", 75.99, 20, 1),
						("Loratadina", "Medley", 45.99, 50, 2),
                        ("Histamim", "Nativita", 85.99, 25, 5),
                        ("Neosaldina", "Medley", 35.99, 15, 4),
                        ("Luffital,", "Nativita", 95.99, 23, 3),
                        ("Dorflex", "Medley", 15.99, 55, 1),
                        ("Rivotril", "Eurofarma", 175.99, 40, 1),
                        ("Losartana", "Eurofarma", 39.99, 90, 1);
                        
select* from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "B%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
order by tb_produto.nome;

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
where tb_categoria.tarja = "Tarja preta";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
where tb_categoria.tarja = "Tarja vermelha com Retenção";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
where tb_categoria.tarja = "Tarja vermelha sem Retenção";
    
select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
where tb_categoria.tarja like "%Dor%";

select * from tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.fk_categoria 
where tb_categoria.tarja like "Clo%";
                        
                        
                        