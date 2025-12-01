-- 1. Atualizar status de exemplar após devolução
UPDATE Exemplar
SET status = 'disponivel'
WHERE id_exemplar = 2;

-- 2. Atualizar email do usuário
UPDATE Usuario
SET email = 'carlos.silva@novomail.com'
WHERE id_usuario = 1;

-- 3. Registrar devolução de empréstimo
UPDATE Emprestimo
SET data_devolucao = CURDATE()
WHERE id_emprestimo = 1;
