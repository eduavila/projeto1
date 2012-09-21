-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aulas
--

CREATE DATABASE IF NOT EXISTS aulas;
USE aulas;

--
-- Definition of table `tblalunos`
--

DROP TABLE IF EXISTS `tblalunos`;
CREATE TABLE `tblalunos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Aniversario` date DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Naturalidade` varchar(50) DEFAULT NULL,
  `Endereco` varchar(80) DEFAULT NULL,
  `Observacao` text,
  `Foto` blob,
  `Salario` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalunos`
--

/*!40000 ALTER TABLE `tblalunos` DISABLE KEYS */;
INSERT INTO `tblalunos` (`Id`,`Nome`,`Aniversario`,`Sexo`,`Naturalidade`,`Endereco`,`Observacao`,`Foto`,`Salario`) VALUES 
 (1,'Ana',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (2,'Beth',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (3,'teste',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblalunos` ENABLE KEYS */;


--
-- Definition of table `tblclientes`
--

DROP TABLE IF EXISTS `tblclientes`;
CREATE TABLE `tblclientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ` int(15) DEFAULT NULL,
  `IE` varchar(30) DEFAULT NULL,
  `CAE` varchar(30) DEFAULT NULL,
  `NIRE` varchar(30) DEFAULT NULL,
  `CPF` int(15) DEFAULT NULL,
  `RG` int(15) DEFAULT NULL,
  `NomeFantasia` varchar(100) DEFAULT NULL,
  `RazaoSocial` varchar(50) DEFAULT NULL,
  `ResponsavelLegal` varchar(50) DEFAULT NULL,
  `Telefone1` varchar(30) DEFAULT NULL,
  `Telefone2` varchar(30) DEFAULT NULL,
  `Ramal1` varchar(10) DEFAULT NULL,
  `Ramal2` varchar(10) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `CEP` varchar(15) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `DataFundacao` date DEFAULT NULL,
  `TipoSociedade` varchar(50) DEFAULT NULL,
  `Observacao` longtext,
  `Email1` varchar(100) DEFAULT NULL,
  `Email2` varchar(100) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Data_Inc` date DEFAULT NULL,
  `Data_Alt` date DEFAULT NULL,
  `Data_Hab` date DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Marca` varchar(1) DEFAULT NULL,
  `Situacao` varchar(30) DEFAULT NULL,
  `Localizacao` longblob,
  `Tipo` varchar(2) DEFAULT NULL,
  `Foto` blob,
  `VendedorInterno` varchar(50) DEFAULT NULL,
  `VendedorExterno` varchar(50) DEFAULT NULL,
  `VendedorTelemarketing` varchar(50) DEFAULT NULL,
  `AreaDeAtuacao` varchar(50) DEFAULT NULL,
  `FormaPagamento` varchar(10) DEFAULT NULL,
  `Frete` varchar(1) DEFAULT NULL,
  `Transportadora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Clientes da empresa (pesssoas físicas e jurídicas)';

--
-- Dumping data for table `tblclientes`
--

/*!40000 ALTER TABLE `tblclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientes` ENABLE KEYS */;


--
-- Definition of table `tblfornecedores`
--

DROP TABLE IF EXISTS `tblfornecedores`;
CREATE TABLE `tblfornecedores` (
  `IdFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ` int(15) DEFAULT NULL,
  `IE` varchar(30) DEFAULT NULL,
  `CAE` varchar(30) DEFAULT NULL,
  `NIRE` varchar(30) DEFAULT NULL,
  `CPF` int(15) DEFAULT NULL,
  `RG` int(15) DEFAULT NULL,
  `NomeFantasia` varchar(100) DEFAULT NULL,
  `RazaoSocial` varchar(50) DEFAULT NULL,
  `ResponsavelLegal` varchar(50) DEFAULT NULL,
  `Telefone1` varchar(30) DEFAULT NULL,
  `Telefone2` varchar(30) DEFAULT NULL,
  `Ramal1` varchar(10) DEFAULT NULL,
  `Ramal2` varchar(10) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `CEP` varchar(15) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `DataFundacao` date DEFAULT NULL,
  `TipoSociedade` varchar(50) DEFAULT NULL,
  `Observacao` longtext,
  `Email1` varchar(100) DEFAULT NULL,
  `Email2` varchar(100) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Data_Inc` date DEFAULT NULL,
  `Data_Alt` date DEFAULT NULL,
  `Data_Hab` date DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Marca` varchar(1) DEFAULT NULL,
  `Situacao` varchar(30) DEFAULT NULL,
  `Localizacao` longblob,
  `Tipo` varchar(2) DEFAULT NULL,
  `Foto` blob,
  `VendedorInterno` varchar(50) DEFAULT NULL,
  `VendedorExterno` varchar(50) DEFAULT NULL,
  `VendedorTelemarketing` varchar(50) DEFAULT NULL,
  `AreaDeAtuacao` varchar(50) DEFAULT NULL,
  `FormaPagamento` varchar(10) DEFAULT NULL,
  `Frete` varchar(1) DEFAULT NULL,
  `Transportadora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Clientes da empresa (pesssoas físicas e jurídicas)';

--
-- Dumping data for table `tblfornecedores`
--

/*!40000 ALTER TABLE `tblfornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfornecedores` ENABLE KEYS */;


--
-- Definition of table `tblfuncionarios`
--

DROP TABLE IF EXISTS `tblfuncionarios`;
CREATE TABLE `tblfuncionarios` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `CNPJ` int(15) DEFAULT NULL,
  `IE` varchar(30) DEFAULT NULL,
  `CAE` varchar(30) DEFAULT NULL,
  `NIRE` varchar(30) DEFAULT NULL,
  `CPF` int(15) DEFAULT NULL,
  `RG` int(15) DEFAULT NULL,
  `NomeFantasia` varchar(100) DEFAULT NULL,
  `RazaoSocial` varchar(50) DEFAULT NULL,
  `ResponsavelLegal` varchar(50) DEFAULT NULL,
  `Telefone1` varchar(30) DEFAULT NULL,
  `Telefone2` varchar(30) DEFAULT NULL,
  `Ramal1` varchar(10) DEFAULT NULL,
  `Ramal2` varchar(10) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  `CEP` varchar(15) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `DataFundacao` date DEFAULT NULL,
  `TipoSociedade` varchar(50) DEFAULT NULL,
  `Observacao` longtext,
  `Email1` varchar(100) DEFAULT NULL,
  `Email2` varchar(100) DEFAULT NULL,
  `Site` varchar(100) DEFAULT NULL,
  `Data_Inc` date DEFAULT NULL,
  `Data_Alt` date DEFAULT NULL,
  `Data_Hab` date DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Marca` varchar(1) DEFAULT NULL,
  `Situacao` varchar(30) DEFAULT NULL,
  `Localizacao` longblob,
  `Tipo` varchar(2) DEFAULT NULL,
  `Foto` blob,
  `VendedorInterno` varchar(50) DEFAULT NULL,
  `VendedorExterno` varchar(50) DEFAULT NULL,
  `VendedorTelemarketing` varchar(50) DEFAULT NULL,
  `AreaDeAtuacao` varchar(50) DEFAULT NULL,
  `FormaPagamento` varchar(10) DEFAULT NULL,
  `Frete` varchar(1) DEFAULT NULL,
  `Transportadora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Clientes da empresa (pesssoas físicas e jurídicas)';

--
-- Dumping data for table `tblfuncionarios`
--

/*!40000 ALTER TABLE `tblfuncionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfuncionarios` ENABLE KEYS */;


--
-- Definition of table `tblprodutos`
--

DROP TABLE IF EXISTS `tblprodutos`;
CREATE TABLE `tblprodutos` (
  `IdProduto` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(50) DEFAULT NULL,
  `Data_Inc` date DEFAULT NULL,
  `Data_Alt` date DEFAULT NULL,
  `Data_Hab` date DEFAULT NULL,
  `Marca` varchar(1) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Foto1` longblob,
  `Foto2` longblob,
  `Observacao` text,
  `ValorCompra` float(10,2) DEFAULT NULL COMMENT 'Custo de aquisição do produto',
  `Desconto` float(10,2) DEFAULT NULL,
  `Impostos` float(10,2) DEFAULT NULL,
  `ValorVenda` float(10,2) DEFAULT NULL COMMENT 'Preço de venda',
  `QuantidadeAtual` int(11) DEFAULT NULL,
  `QuantidadeMinima` int(11) DEFAULT NULL,
  `Peso` float(10,2) DEFAULT NULL,
  `QtdeDoacoes` int(11) DEFAULT NULL,
  `QtdConsignado` int(11) DEFAULT NULL,
  `QtdMinVend` int(11) DEFAULT NULL,
  `BaseCalcICMS` float(10,2) DEFAULT NULL,
  `Promocao` varchar(1) DEFAULT NULL,
  `Localizacao` varchar(50) DEFAULT NULL COMMENT 'Localização física no estoque',
  `Codigo_Barra` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`IdProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT COMMENT='Os artefatos ou serviços que a empresa vende';

--
-- Dumping data for table `tblprodutos`
--

/*!40000 ALTER TABLE `tblprodutos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprodutos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
