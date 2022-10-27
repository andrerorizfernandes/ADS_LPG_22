-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.22-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para ads2022
CREATE DATABASE IF NOT EXISTS `ads2022` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ads2022`;

-- Copiando estrutura para tabela ads2022.aluno
CREATE TABLE IF NOT EXISTS `aluno` (
  `codaluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `idade` int(11) NOT NULL,
  `codcidade` int(11) NOT NULL,
  PRIMARY KEY (`codaluno`) USING BTREE,
  KEY `FK_aluno_cidade` (`codcidade`),
  CONSTRAINT `FK_aluno_cidade` FOREIGN KEY (`codcidade`) REFERENCES `cidade` (`codcidade`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ads2022.aluno: ~0 rows (aproximadamente)
DELETE FROM `aluno`;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`codaluno`, `nome`, `idade`, `codcidade`) VALUES
	(5, 'ANdre', 1, 3),
	(6, 'Emanuele', 70, 8);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela ads2022.cidade
CREATE TABLE IF NOT EXISTS `cidade` (
  `codcidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `coduf` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`codcidade`),
  KEY `FK_cidade_uf` (`coduf`),
  CONSTRAINT `FK_cidade_uf` FOREIGN KEY (`coduf`) REFERENCES `uf` (`coduf`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ads2022.cidade: ~0 rows (aproximadamente)
DELETE FROM `cidade`;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`codcidade`, `nome`, `coduf`) VALUES
	(1, 'Piúma', 1),
	(2, 'Vitória', 1),
	(3, 'Itaperuna', 2),
	(4, 'Varre sai', 2),
	(5, 'Muriaé', 3),
	(6, 'Juiz de Fora', 3),
	(7, 'Campinas', 4),
	(8, 'Santos', 4);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela ads2022.uf
CREATE TABLE IF NOT EXISTS `uf` (
  `coduf` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `sigla` char(2) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`coduf`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ads2022.uf: ~0 rows (aproximadamente)
DELETE FROM `uf`;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` (`coduf`, `sigla`, `descricao`) VALUES
	(1, 'ES', 'Espírito Santo'),
	(2, 'RJ', 'Rio de Janeiro'),
	(3, 'MG', 'Minas Gerais'),
	(4, 'SP', 'São Paulo');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
