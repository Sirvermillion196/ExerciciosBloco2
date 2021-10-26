create database db_cursoDaMinhaVida;
	use db_cursoDaMinhaVida;
    
create table tb_categoria (
	id bigint (2) auto_increment,
        material varchar (30) not null,
        tipo varchar (30) not null,
        qualidade boolean,
        
        primary key (id)
);

insert into tb_categoria (material, tipo, qualidade) 
				  values ("Lógica da Programação", "Java", true),
						 ("Variaveis e Operadores", "C++", true),
                         ("Laço Condicional", "Java", false),
                         ("Laço de Repetição", "Java", true),
                         ("Vetores e Matrizes ", "C++", true);

select * from tb_categoria;

create table  tb_curso (
	id_curso bigint (2) auto_increment,
		aluno varchar (30) not null,
		curso varchar(30) not null,
		preco real not null,
		estoque int (3),
        fk_categoria bigint,
        
        primary key (id_curso),
        foreign key (fk_categoria) references tb_categoria (id)
);

insert into  tb_curso (aluno, curso, preco, estoque, fk_categoria) 
				values ("Guilherme", "Java para iniciantes", 75.99, 20, 1),
						("João", "Java para iniciantes", 45.99, 50, 2),
                        ("Picullo", "C++ Avançado", 85.99, 25, 5),
                        ("Malcolm", "C++ Avançado", 35.99, 15, 4),
                        ("Gustavo", "C++ Avançado", 95.99, 23, 3),
                        ("Josesvaldo", "Java para iniciantes", 15.99, 55, 1),
                        ("Ana", "C++ Avançado", 175.99, 40, 1),
                        ("Maria", "C++ Avançado", 39.99, 90, 1);
                        
select* from  tb_curso;

select * from  tb_curso where preco > 50.00;
select * from  tb_curso where preco between 3.00 and 60.00;
select * from  tb_curso where aluno like "J%";
select * from  tb_curso inner join tb_categoria on tb_categoria.id =  tb_curso.fk_categoria
and  tb_curso.estoque = true order by  tb_curso.id_curso;

select * from  tb_curso inner join tb_categoria on tb_categoria.id =  tb_curso.fk_categoria 
	and tb_categoria.tipo = "Java";