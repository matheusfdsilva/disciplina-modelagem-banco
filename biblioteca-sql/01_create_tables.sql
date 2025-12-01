CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    ano_publicacao INT,
    editora VARCHAR(150),
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(150) NOT NULL
);

CREATE TABLE Livro_Autor (
    id_livro INT NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Exemplar (
    id_exemplar INT PRIMARY KEY AUTO_INCREMENT,
    codigo_interno VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL,
    data_devolucao DATE NULL,
    id_usuario INT NOT NULL,
    id_exemplar INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_exemplar) REFERENCES Exemplar(id_exemplar)
);
