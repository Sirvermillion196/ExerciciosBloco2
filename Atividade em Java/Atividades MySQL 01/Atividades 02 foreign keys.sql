create database db_pizzaria_legal;
	use db_pizzaria_legal;
    
create table tb_categoria (
	id bigint (2) auto_increment,
		tamanho enum ("Pequena", "Média", "Grande"),
		tipo enum ("Doce", "Salgada"),
    
    primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (tamanho, tipo) 
				 values ("Pequena", "Salgada"),
						("Média", "Salgada"),
                        ("Grande", "Salgada"),
                        ("Pequena", "Doce"),
                        ("Média", "Doce");

create table tb_pizza (
	id_pizza bigint (2) auto_increment,
		sabor_pizza varchar (35) not null,
        preco decimal (10,2) not null,
        borda enum ("Cheddar", "Catupiry", "Cream Cheese", "Nenhuma"),
        stt boolean,
        fk_categoria bigint,
        
        primary key (id_pizza),
        foreign key (fk_categoria) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (sabor_pizza, preco, borda, stt, fk_categoria) 
			  values ("Peperoni", 45.99, "Catupiry", true, 2),
					 ("Toscana", 55.99, "Catupiry", true, 3),
					 ("Calabreza", 35.99, "Catupiry", true, 2),
					 ("Romeu&Julieta", 49.99, "Nenhuma", true, 5),
					 ("Brigadeiro", 53.99, "Cream Cheese", true, 5),
					 ("Portuguesa", 29.99, "Catupiry", true, 1),
					 ("Americana", 65.99, "Catupiry", true, 2),
					 ("Napolitana", 75.99, "Catupiry", true, 3);

select * from tb_pizza where preco < 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where sabor_pizza like "C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.fk_categoria
and tb_pizza.stt = true order by tb_pizza.id_pizza;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.fk_categoria 
	and tb_categoria.tipo = "Doce";