-- Categorias
INSERT INTO Categoria (nome_categoria) VALUES
('Tecnologia'),
('Romance'),
('Ficção Científica');

-- Livros
INSERT INTO Livro (titulo, ano_publicacao, editora, id_categoria) VALUES
('Clean Code', 2008, 'Prentice Hall', 1),
('Orgulho e Preconceito', 1813, 'T. Egerton', 2),
('Duna', 1965, 'Chilton Books', 3);

-- Autores
INSERT INTO Autor (nome_autor) VALUES
('Robert C. Martin'),
('Jane Austen'),
('Frank Herbert');

-- Associação Livro_Autor
INSERT INTO Livro_Autor VALUES
(1, 1),
(2, 2),
(3, 3);

-- Exemplares
INSERT INTO Exemplar (codigo_interno, status, id_livro) VALUES
('CC-001', 'disponivel', 1),
('CC-002', 'emprestado', 1),
('OP-001', 'disponivel', 2),
('DN-001', 'disponivel', 3);

-- Usuarios
INSERT INTO Usuario (nome, email, tipo) VALUES
('Carlos Silva', 'carlos@email.com', 'aluno'),
('Maria Souza', 'maria@email.com', 'professor');

-- Empréstimos
INSERT INTO Emprestimo (data_emprestimo, data_prevista_devolucao, data_devolucao, id_usuario, id_exemplar)
VALUES
('2024-02-01', '2024-02-15', NULL, 1, 2),
('2024-01-20', '2024-02-05', '2024-02-03', 2, 3);
