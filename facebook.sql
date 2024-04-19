CREATE DATABASE FACEBOOK;
USE FACEBOOK;
CREATE TABLE USUARIO(
id_usuario int primary key,
nome varchar(300),
data_nascimento date
);
CREATE TABLE COMENTARIO(
id_comentario int primary key,
data date,
comentario varchar(500),
id_usuario int,
constraint fk_comentario_usuario FOREIGN KEY(id_usuario) references USUARIO(id_usuario)
);
insert into USUARIO (id_usuario,nome,data_nascimento)
values
('1','Gabriel Beber','1997-03-10'),
('2','Antonia','2002-10-15'),
('3', 'Charles', '1993-02-10'),
('4', 'Aurora', '1988-11-30'),
('5', 'Magnus', '1995-07-25'),
('6', 'Edgar', '1982-04-18'),
('7', 'William', '1998-12-05'),
('8', 'Elizabeth', '1979-08-12'),
('9', 'Tobias', '1991-03-08'),
('10', 'George', '1987-06-22');
INSERT INTO COMENTARIO (id_comentario, data, comentario, id_usuario) 
VALUES
(1, '2024-04-18', 'O romantismo inglês do século XIX é um período fascinante da literatura.', 1),
(2, '2024-04-17', 'As obras de Lord Byron são emblemáticas desse período.', 2),
(3, '2024-04-16', 'O sentimento de individualismo e a conexão com a natureza são temas recorrentes.', 3),
(4, '2024-04-15', 'A poesia romântica inglesa frequentemente explora emoções intensas e conflitos interiores.', 4),
(5, '2024-04-14', 'John Keats é outro poeta importante desse movimento.', 5),
(6, '2024-04-13', 'Os romances de Anne Brontë também refletem aspectos do romantismo inglês.', 6),
(7, '2024-04-12', 'O período romântico foi uma reação contra as normas rígidas do neoclassicismo.', 7),
(8, '2024-04-11', 'A Revolução Industrial teve um impacto significativo no contexto histórico do romantismo inglês.', 8),
(9, '2024-04-10', 'A valorização da imaginação e da expressão individual são características marcantes.', 9),
(10, '2024-04-09', 'O romantismo inglês influenciou profundamente a arte, a literatura e a cultura do século XIX.', 10);

SELECT 
	*
FROM USUARIO as Us
INNER JOIN COMENTARIO as Com
ON Us.id_usuario = Com.id_usuario


