-- 1. Apagar um empréstimo finalizado
DELETE FROM Emprestimo
WHERE id_emprestimo = 2;

-- 2. Excluir autor sem livros associados
DELETE FROM Autor
WHERE id_autor NOT IN (SELECT id_autor FROM Livro_Autor);

-- 3. Remover categoria sem livros
DELETE FROM Categoria
WHERE id_categoria NOT IN (SELECT id_categoria FROM Livro);
