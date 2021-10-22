/*
não consegui fazer mesmo com o exemplo :(
*/

create database escola;
use escola; 

/*
	tb_alunes >>> id, nome, dt_nasc, 
				  turma(Python, Java, Pascal), 
                  formato(R, P), nota, status (True, False)
*/

create database escola;
use escola;

create table tb_alunes(
	id_alune bigint(4) auto_increment, -- 9999
	nome varchar (30) not null,
	dt_nasc date,
	turma enum("Python", "Java","Pascal"),
	formato enum("R", "P"),
	nota real,
	stt boolean,
    
    primary key (id_alune)
);

desc tb_alunes;
describe tb_alunes;

insert into tb_alunes(nome, dt_nasc, turma, formato, nota, stt) 
	      Values ("Maria", "1990-10-01", "Python", "R", 10.0, true),
	             ("Jubileu", "2000-09-12", "Python", "P", 4.5, true),
				 ("Juquinha", "2005-12-01", "Java", "R", 8.4, true),
                 ("Sebastiana", "1958-01-01", "Pascal" ,"P", 9.0, true),                    
				 ("Ebony",  "1990-11-01", "Python", "R", 5.4, false),
                 ("Cris", "1978-10-28", "Pascal", "P", 3.3, true),
		         ("Magali", "1946-07-21", "Pascal", "P", 9.1, false),
		         ("Betina", "2015-08-30", "Python", "R", 5.9, true);

select * from tb_alunes;
select * from tb_alunes where nota > 7;
select * from tb_alunes where nota <= 7 and nota => 5;
select * from tb_alunes where nota < 5;


select nome, nota from tb_alunes;
select nome as 'Nome do Alune', date_format(dt_nasc, '%d/%m/%Y') 
as 'Data de nascimento' from tb_alunes;