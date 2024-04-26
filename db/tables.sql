CREATE TABLE tb_localizacoes(
    id_loc INT PRIMARY KEY IDENTITY(1,1),
    localizacao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_genero (
    id_genero INT PRIMARY KEY IDENTITY(1,1),
    genero CHAR(1) CHECK (genero IN ('M','F')) NOT NULL
);

CREATE TABLE tb_niveis (
    id_nivel INT PRIMARY KEY IDENTITY(1,1),
    nivel VARCHAR(255) NOT NULL
);

CREATE TABLE tb_area_estudo(
    id_area_estudo INT PRIMARY KEY IDENTITY(1,1),
    area_estudo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_referencias(
    id_referencia INT PRIMARY KEY IDENTITY(1,1),
    ano INT NOT NULL,
    id_loc INT NOT NULL,
    id_genero INT NOT NULL,
    id_nivel INT NOT NULL,
    id_area_estudo INT NOT NULL,
    FOREIGN KEY (id_loc) REFERENCES tb_localizacoes(id_loc),
    FOREIGN KEY (id_genero) REFERENCES tb_genero(id_genero),
    FOREIGN KEY (id_nivel) REFERENCES tb_niveis(id_nivel),
    FOREIGN KEY (id_area_estudo) REFERENCES tb_area_estudo(id_area_estudo)
);

CREATE INDEX idx_loc ON tb_referencias(id_loc);
CREATE INDEX idx_genero ON tb_genero(id_genero);
CREATE INDEX idx_nivel ON tb_niveis(id_nivel);
CREATE INDEX idx_area_estudo ON tb_area_estudo(id_area_estudo);