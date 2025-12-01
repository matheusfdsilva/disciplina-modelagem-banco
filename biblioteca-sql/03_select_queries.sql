-- 1. Listar todos os livros com suas categorias
SELECT l.titulo, c.nome_categoria
FROM Livro l
JOIN Categoria c ON c.id_categoria = l.id_categoria;

-- 2. Buscar exemplares disponíveis ordenados por livro
SELECT e.codigo_interno, e.status, l.titulo
FROM Exemplar e
JOIN Livro l ON l.id_livro = e.id_livro
WHERE e.status = 'disponivel'
ORDER BY l.titulo;

-- 3. Listar empréstimos em aberto
SELECT u.nome, l.titulo, e.data_emprestimo
FROM Emprestimo e
JOIN Usuario u ON u.id_usuario = e.id_usuario
JOIN Exemplar ex ON ex.id_exemplar = e.id_exemplar
JOIN Livro l ON l.id_livro = ex.id_livro
WHERE e.data_devolucao IS NULL;

-- 4. Limitar busca de autores
SELECT * FROM Autor LIMIT 2;

-- 5. Livros e seus autores (JOIN N-N)
SELECT l.titulo, a.nome_autor
FROM Livro_Autor la
JOIN Livro l ON l.id_livro = la.id_livro
JOIN Autor a ON a.id_autor = la.id_autor;
