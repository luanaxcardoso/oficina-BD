CREATE DATABASE OFICINA;
USE OFICINA;
SHOW TABLES;

CREATE TABLE Cliente (
  idCliente INT NOT NULL,
  Nome VARCHAR(45) NULL,
  CNH VARCHAR(45) NULL,
  CPF VARCHAR(45) NULL,
  CNPJ VARCHAR(45) NULL,
  Endereço VARCHAR(45) NULL,
  Telefone VARCHAR(45) NULL,
  PRIMARY KEY (idCliente)
  );

CREATE TABLE veiculo(
  idVeiculo INT NOT NULL,
  Modelo VARCHAR(45) NULL,
  Placa VARCHAR(45) NULL,
  Ano INT NULL,
  Renavan VARCHAR(45) NULL,
  Cor VARCHAR(45) NULL,
  PRIMARY KEY (idVeiculo)
  );
  
CREATE TABLE Mecanico (
  idMecanico INT NOT NULL,
  Nome VARCHAR(45) NULL,
  Código INT NULL,
  Especialidade VARCHAR(45) NULL,
  Endereço VARCHAR(45) NULL,
  PRIMARY KEY (idMecanico)
);

CREATE TABLE Triagem_veiculo (
  idTriagem_veiculo INT NOT NULL,
  Revisao VARCHAR(45) NULL,
  Conserto_de_peças VARCHAR(45) NULL,
  Troca_de_pneu VARCHAR(45) NULL,
  Datat DATETIME NULL,
  Triagem_veiculoco VARCHAR(45) NULL,
  PRIMARY KEY (idTriagem_veiculo)
);

CREATE TABLE IF NOT EXISTS Ordem_de_Servico (
  idOrdem_de_Servico INT NOT NULL,
  Numero INT NULL,
  Data_de_Emissao DATETIME NULL,
  Data_de_Conclusao DATETIME NULL,
  Valor FLOAT NULL,
  StatusoS VARCHAR(45) NULL,
  PRIMARY KEY (idOrdem_de_Servico)
);

CREATE TABLE Pagamento (
  idPagamento INT NOT NULL,
  Cartao_de_credito INT NOT NULL,
  Cartap_de_debito INT NOT NULL,
  Transferencia INT NOT NULL,
  PRIMARY KEY (idPagamento)
);

CREATE TABLE IF NOT EXISTS Pecas (
  idPecas INT NOT NULL,
  Modelo VARCHAR(45) NULL,
  Quantidade VARCHAR(45) NULL,
  Valor FLOAT NULL,
  PRIMARY KEY (idPecas)
);

CREATE TABLE IF NOT EXISTS Revisao (
  idRevisao INT NOT NULL,
  Datar DATETIME NULL,
  Horario DATETIME NULL,
  Valor FLOAT NULL,
  PRIMARY KEY (idRevisao)
);

INSERT INTO Pecas VALUES ('1','retrovisor','2','90');

select * from Pecas
inner join Ordem_de_Servico on Pecas.idPecas = Pecas.idPecas
where Quantidade.Valor = null;
