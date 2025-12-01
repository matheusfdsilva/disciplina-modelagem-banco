📚 Sistema de Biblioteca — Scripts SQL

Este repositório contém a implementação completa do banco de dados da biblioteca, incluindo:

✔ Modelo lógico
✔ Scripts SQL estruturados
✔ DML (INSERT, SELECT, UPDATE, DELETE)
✔ Instruções de execução

📌 Estrutura do Repositório

```psql
01_create_tables.sql   → Criação das tabelas e constraints
02_insert_data.sql     → Dados iniciais
03_select_queries.sql  → Consultas
04_updates.sql         → Atualizações de dados
05_deletes.sql         → Remoções de dados
```
---
🛠 Como Executar

Abra o MySQL Workbench ou PGAdmin

Crie um banco de dados:

```sql
CREATE DATABASE biblioteca;
USE biblioteca;
```

Execute os scripts na ordem:

```sql
01_create_tables.sql
02_insert_data.sql
03_select_queries.sql
04_updates.sql
05_deletes.sql
```

📈 Funcionalidades Demonstradas

- Criação de entidades normalizadas
- Relacionamentos 1:N e N:N
- Integridade referencial via FOREIGN KEY
- Inserção, consulta, atualização e exclusão de dados
- Uso de JOIN, filtros, ordenação e limites
