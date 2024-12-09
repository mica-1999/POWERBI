-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2024 às 18:22
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dribciipowerbi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bci_pdfs`
--

CREATE TABLE `bci_pdfs` (
  `FileID` int(11) NOT NULL,
  `RequestID` int(11) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `FilePath` varchar(255) NOT NULL,
  `UploadDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dir_regional`
--

CREATE TABLE `dir_regional` (
  `ID_Direcao` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ID_Secretaria` int(11) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Ativo` tinyint(1) DEFAULT 1,
  `Postal_Code` varchar(10) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `dir_regional`
--

INSERT INTO `dir_regional` (`ID_Direcao`, `Name`, `ID_Secretaria`, `Location`, `Ativo`, `Postal_Code`, `City`, `Region`, `Country`) VALUES
(1, 'Direção Regional da Cidadania e dos Assuntos Sociais', 2, 'Rua do Esmeraldo nº 64 Funchal', 1, '9004-554', 'Funchal', 'Madeira', 'Portugal'),
(2, 'Direção Regional do Património ', 3, 'Rua Alferes Veiga Pestana, 3D Funchal', 1, '9050-079', 'Funchal', 'Madeira', 'Portugal'),
(3, 'Gabinete do Secretário Regional', 4, 'Rua Dr. Pestana Júnior, nº 6 - 5º Andar Funchal', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal'),
(4, 'Direção Regional de Planeamento, Recursos e Infraestruturas', 5, 'Rua Dr. Pestana Júnior, 6 Funchal', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal'),
(5, 'Direção Regional da Administração Pública', 3, 'Edifício do Governo Regional Av. Zarco, 3 Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal'),
(6, 'Direção Regional de Agricultura e Desenvolvimento Rural', 4, 'Avenida do Mar e das Comunidades Madeirenses, n.º 23 – 1.º andar Funchal ', 1, '9000-054', 'Funchal', 'Madeira', 'Portugal'),
(7, 'Gabinete do Secretário e Serviços de Apoio', 6, 'Avenida Arriaga, nº 18 Funchal', 1, '9004-519', 'Funchal', 'Madeira', 'Portugal'),
(8, 'Direção Regional de Juventude', 2, 'Rua dos Netos, n.º 46 Funchal ', 1, '9000-084', 'Funchal', 'Madeira', 'Portugal'),
(9, 'Direção Regional do Turismo', 6, 'Avenida Arriaga,18 Funchal', 1, '9004-519', 'Funchal', 'Madeira', 'Portugal'),
(10, 'Direção Regional de Estatística da Madeira', 3, 'Calçada de Santa Clara 38 Funchal', 1, '9004-545', 'Funchal', 'Madeira', 'Portugal'),
(11, 'Registo Internacional de Navios da Madeira', 3, 'Madeira Management Cia Lda\r\nRua dos Murças, nº 15, 1º andar Funchal', 1, '9000-058', 'Funchal', 'Madeira', 'Portugal'),
(12, 'Direção Regional de Administração Escolar', 5, 'Edifício Oudinot 4° andar Apartado 3206 Funchal', 1, '9061-901', 'Funchal', 'Madeira', 'Portugal'),
(13, 'Direção Regional Políticas Públicas Integradas e Longevidade', 9, 'Palácio do Governo Regional - Avenida Zarco-2.º andar Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal'),
(14, 'Direção Regional de Veterinária e Bem-Estar Animal', 4, 'Av. do Mar e das Comunidades Madeirenses n.º 23 - 2.º-Esq Funchal', 1, '9000-054', 'Funchal', 'Madeira', 'Portugal'),
(16, 'Direção Regional da Cultura', 6, 'Rua dos Ferreiros, nº165 Funchal', 1, '9004-520', 'Funchal', 'Madeira', 'Portugal'),
(17, 'Autoridade Regional para as Condições de Trabalho', 2, 'Rua da Boa Viagem, nº36 - 3º andar Funchal', 1, '9060-027', 'Funchal', 'Madeira', 'Portugal'),
(18, 'Delegação Escolar de Câmara de Lobos ', 5, 'Rua Dr. Vasco Reis Gonçalves, n.º 39 Câmara de Lobos', 1, '9300-052', 'Câmara de Lobos', 'Madeira', 'Portugal'),
(19, 'Direção Regional do Orçamento e Tesouro', 3, 'Avenida Arriaga Funchal', 1, '9004-528', 'Funchal', 'Madeira', 'Portugal'),
(20, 'Direção Regional de Pescas', 4, 'Praça da Autonomia, Loja 1, Piso 0 Câmara de Lobos', 1, '9304-001', 'Funchal', 'Madeira', 'Portugal'),
(21, 'Direção Regional do Ordenamento do Território', 4, 'Rua da Sé, 38 Funchal', 1, '9000-066', 'Funchal', 'Madeira', 'Portugal'),
(22, 'Direção Regional de Informática', 3, 'Azinhaga do Poço Barral, n.º 23, Edifício Funchal Business Center, 1º piso Funchal', 1, '9000-638', 'Funchal', 'Madeira', 'Portugal'),
(23, 'Direção Regional do Equipamento Social e Conservação', 11, 'Rua Dr. Pestana Júnior, nº 6 Funchal', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal'),
(26, 'Direção Regional dos Transportes e da Mobilidade Terrestre', 11, 'Rua do Seminário, n.º 21 Funchal', 1, '9050-022', 'Funchal', 'Madeira', 'Portugal'),
(27, 'Direção Regional dos Assuntos Europeus', 3, 'Rua Câmara Pestana, 17 – 2º Funchal', 1, '9000-043', 'Funchal', 'Madeira', 'Portugal'),
(28, 'Direção Regional da Saúde', 9, 'Rua 31 de Janeiro, n.º 54 e 55 Funchal', 1, '9054-511', 'Funchal', 'Madeira', 'Portugal'),
(29, 'Direção Regional de Energia', 11, 'Rua do Hospital Velho, nº 23A Edifício Insular, 4º andar Funchal', 1, '9060-129', 'Funchal', 'Madeira', 'Portugal'),
(30, 'Direção Regional da Administração da Justiça', 3, 'Avenida Calouste Gulbenkian  Edifício 2000 – 4º Andar', 1, '9000–011', 'Funchal', 'Madeira', 'Portugal'),
(31, 'Laboratório de Metrologia da Madeira', 6, 'Parque Empresarial da Cancela, Sítio da Abegoaria Caniço', 1, '9125-042', 'Funchal', '', 'Portugal'),
(33, 'Direção Regional de Estradas', 11, 'Rua Dr. Pestana Júnior, n.º 6 - 2. º Piso Funchal', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal'),
(34, 'Direção Regional do Ordenamento Tesouro', 3, 'Avenida Arriaga Funchal', 1, '9004-528', 'Funchal', 'Madeira', 'Portugal'),
(35, 'Gabinete da Unidade de Gestão e Planeamento', 5, 'Avenida Zarco Edifício do Governo Regional Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal'),
(36, 'Gabinete do Secretário', 5, 'Avenida Zarco Edifício do Governo Regional Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal'),
(38, 'Autoridade Regional das Atividades Económicas', 6, 'Rua Direita n.º27, 2º Funchal', 1, '9050-450', 'Funchal', 'Madeira', 'Portugal'),
(39, 'Direção Regional da Educação', 5, 'Edifício 2000 Avenida Calouste Gulbenkian, n.º 3, 4.º andar Funchal', 1, '9004-503', 'Funchal', 'Madeira', 'Portugal'),
(40, 'Direção Regional de Planeamento e Gestão de Obras Públicas', 11, 'Rua Dr. Pestana Júnior, 6 Funchal ', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal'),
(41, 'Direção Regional do Trabalho', 2, 'Rua João Gago, n.º 4, 1.º Funchal', 1, '9000-071', 'Funchal', 'Madeira', 'Portugal'),
(43, 'Gabinete do Secretário', 2, 'Rua João de Deus, nº 5 Funchal', 1, '9050-027', 'Funchal', 'Madeira', 'Portugal'),
(45, 'Gabinete da Unidade de Gestão e Planeamento da SRE', 5, 'Avenida Zarco Edifício do Governo Regional Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal'),
(46, 'Inspeção Regional de Finanças', 3, 'Avenida Zarco Edifício do Governo Regional Funchal', 1, '9004-528', 'Funchal', 'Madeira', 'Portugal'),
(47, 'Gabinete do Secretário Regional', 9, 'Rua da Carreira, nº 107 Funchal', 1, '9000-042', 'Funchal', 'Madeira', 'Portugal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `finalization_result`
--

CREATE TABLE `finalization_result` (
  `FinalizationID` int(11) NOT NULL,
  `RequestID` int(11) NOT NULL,
  `Autorizacao_DR` enum('Pending','Autorizado','Recusado') NOT NULL DEFAULT 'Pending',
  `Doc_Afetação` int(11) DEFAULT NULL,
  `Previsao_Entrega` date DEFAULT NULL,
  `Estado` enum('Concluído','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `finalization_result`
--

INSERT INTO `finalization_result` (`FinalizationID`, `RequestID`, `Autorizacao_DR`, `Doc_Afetação`, `Previsao_Entrega`, `Estado`) VALUES
(763, 205, 'Autorizado', NULL, '2024-11-03', 'Concluído'),
(764, 206, 'Pending', NULL, '2024-11-22', 'Pending'),
(765, 207, 'Recusado', NULL, '2024-11-16', 'Concluído'),
(766, 208, 'Autorizado', NULL, '2024-11-20', 'Concluído'),
(767, 209, 'Pending', NULL, '2024-11-09', 'Pending'),
(768, 210, 'Autorizado', NULL, '2024-12-02', 'Concluído'),
(769, 211, 'Pending', NULL, '2024-11-13', 'Pending'),
(770, 212, 'Recusado', NULL, '2024-11-14', 'Concluído'),
(771, 213, 'Autorizado', NULL, '2024-11-15', 'Concluído'),
(772, 214, 'Pending', NULL, '2024-11-23', 'Pending'),
(773, 215, 'Autorizado', NULL, '2024-11-21', 'Concluído'),
(774, 216, 'Recusado', NULL, '2024-11-13', 'Concluído'),
(775, 217, 'Pending', NULL, '2024-11-21', 'Pending'),
(776, 218, 'Autorizado', NULL, '2024-11-24', 'Concluído'),
(777, 219, 'Pending', NULL, '2024-12-04', 'Pending'),
(778, 220, 'Recusado', NULL, '2024-11-07', 'Concluído'),
(779, 221, 'Pending', NULL, '2024-11-28', 'Pending'),
(780, 222, 'Autorizado', NULL, '2024-11-14', 'Concluído'),
(781, 223, 'Autorizado', NULL, '2024-11-23', 'Concluído'),
(782, 224, 'Pending', NULL, '2024-11-18', 'Pending'),
(783, 225, 'Recusado', NULL, '2024-11-14', 'Concluído'),
(784, 226, 'Autorizado', NULL, '2024-11-19', 'Concluído'),
(785, 227, 'Pending', NULL, '2024-11-28', 'Pending'),
(786, 228, 'Recusado', NULL, '2024-11-24', 'Concluído'),
(787, 229, 'Autorizado', NULL, '2024-11-18', 'Concluído'),
(788, 230, 'Pending', NULL, '2024-12-04', 'Pending'),
(789, 231, 'Recusado', NULL, '2024-11-07', 'Concluído'),
(790, 232, 'Autorizado', NULL, '2024-11-25', 'Concluído'),
(791, 233, 'Pending', NULL, '2024-12-02', 'Pending'),
(792, 234, 'Autorizado', NULL, '2024-11-27', 'Concluído'),
(793, 235, 'Pending', NULL, '2024-11-26', 'Pending'),
(794, 236, 'Autorizado', NULL, '2024-11-20', 'Concluído'),
(795, 237, 'Pending', NULL, '2024-11-20', 'Pending'),
(796, 238, 'Recusado', NULL, '2024-11-26', 'Concluído'),
(797, 239, 'Autorizado', NULL, '2024-11-16', 'Concluído'),
(798, 240, 'Pending', NULL, '2024-11-29', 'Pending'),
(799, 241, 'Autorizado', NULL, '2024-11-13', 'Concluído'),
(800, 242, 'Recusado', NULL, '2024-11-06', 'Concluído'),
(801, 243, 'Autorizado', NULL, '2024-11-21', 'Concluído'),
(802, 244, 'Recusado', NULL, '2024-11-12', 'Concluído'),
(803, 245, 'Pending', NULL, '2024-11-22', 'Pending'),
(804, 246, 'Autorizado', NULL, '2024-11-23', 'Concluído'),
(805, 247, 'Pending', NULL, '2024-11-10', 'Pending'),
(806, 248, 'Recusado', NULL, '2024-11-20', 'Concluído'),
(807, 249, 'Autorizado', NULL, '2024-11-07', 'Concluído'),
(808, 250, 'Pending', NULL, '2024-11-03', 'Pending'),
(809, 251, 'Autorizado', NULL, '2024-11-20', 'Concluído'),
(810, 252, 'Pending', NULL, '2024-11-21', 'Pending'),
(811, 253, 'Autorizado', NULL, '2024-11-21', 'Concluído'),
(812, 254, 'Recusado', NULL, '2024-11-26', 'Concluído'),
(813, 255, 'Pending', NULL, '2024-11-09', 'Pending'),
(814, 256, 'Autorizado', NULL, '2024-11-27', 'Concluído'),
(815, 257, 'Pending', NULL, '2024-11-23', 'Pending'),
(816, 258, 'Autorizado', NULL, '2024-11-28', 'Concluído'),
(817, 259, 'Recusado', NULL, '2024-11-22', 'Concluído'),
(818, 260, 'Pending', NULL, '2024-12-03', 'Pending'),
(819, 261, 'Autorizado', NULL, '2024-11-21', 'Concluído'),
(820, 262, 'Autorizado', NULL, '2024-11-27', 'Concluído'),
(821, 263, 'Pending', NULL, '2024-12-03', 'Pending'),
(822, 264, 'Recusado', NULL, '2024-12-02', 'Concluído'),
(823, 265, 'Autorizado', NULL, '2024-12-05', 'Concluído'),
(824, 266, 'Pending', NULL, '2024-11-27', 'Pending'),
(825, 267, 'Recusado', NULL, '2024-11-27', 'Concluído'),
(826, 268, 'Autorizado', NULL, '2024-11-29', 'Concluído'),
(827, 269, 'Pending', NULL, '2024-12-04', 'Pending'),
(828, 270, 'Recusado', NULL, '2024-12-06', 'Concluído'),
(829, 271, 'Autorizado', NULL, '2024-12-05', 'Concluído'),
(830, 272, 'Autorizado', NULL, '2024-12-05', 'Concluído'),
(831, 273, 'Autorizado', NULL, '2024-11-21', 'Concluído'),
(832, 274, 'Pending', NULL, '2024-11-18', 'Pending'),
(833, 275, 'Autorizado', NULL, '2024-11-23', 'Concluído'),
(834, 276, 'Recusado', NULL, '2024-11-29', 'Concluído'),
(835, 277, 'Pending', NULL, '2024-11-25', 'Pending'),
(836, 278, 'Autorizado', NULL, '2024-11-29', 'Concluído'),
(837, 279, 'Recusado', NULL, '2024-11-23', 'Concluído'),
(838, 280, 'Autorizado', NULL, '2024-11-29', 'Concluído'),
(839, 281, 'Pending', NULL, '2024-11-25', 'Pending'),
(840, 282, 'Recusado', NULL, '2024-11-28', 'Concluído'),
(841, 283, 'Pending', NULL, '2024-12-06', 'Pending'),
(842, 284, 'Autorizado', NULL, '2024-11-29', 'Concluído'),
(843, 285, 'Pending', NULL, '2024-12-04', 'Pending'),
(844, 286, 'Recusado', NULL, '2024-11-29', 'Concluído'),
(845, 287, 'Autorizado', NULL, '2024-12-07', 'Concluído'),
(846, 288, 'Pending', NULL, '2024-12-09', 'Pending'),
(847, 289, 'Autorizado', NULL, '2024-12-07', 'Concluído'),
(848, 290, 'Pending', NULL, '2024-12-06', 'Pending'),
(849, 291, 'Autorizado', NULL, '2024-12-17', 'Concluído'),
(850, 292, 'Recusado', NULL, '2024-12-08', 'Concluído'),
(851, 293, 'Pending', NULL, '2024-12-08', 'Pending'),
(852, 294, 'Autorizado', NULL, '2024-12-07', 'Concluído'),
(853, 295, 'Pending', NULL, '2024-12-20', 'Pending'),
(854, 296, 'Recusado', NULL, '2024-12-13', 'Concluído'),
(855, 297, 'Autorizado', NULL, '2024-12-23', 'Concluído'),
(856, 298, 'Pending', NULL, '2024-12-20', 'Pending'),
(857, 299, 'Autorizado', NULL, '2024-12-18', 'Concluído'),
(858, 300, 'Pending', NULL, '2024-12-18', 'Pending'),
(859, 301, 'Recusado', NULL, '2024-12-22', 'Concluído'),
(860, 302, 'Pending', NULL, '2024-12-28', 'Pending'),
(861, 303, 'Autorizado', NULL, '2024-12-26', 'Concluído'),
(862, 304, 'Pending', NULL, '2024-12-30', 'Pending'),
(863, 305, 'Autorizado', NULL, '2024-12-25', 'Concluído'),
(864, 306, 'Pending', NULL, '2025-01-01', 'Pending'),
(865, 307, 'Recusado', NULL, '2025-01-02', 'Concluído'),
(866, 308, 'Pending', NULL, '2024-12-22', 'Pending'),
(867, 309, 'Autorizado', NULL, '2024-12-31', 'Concluído'),
(868, 310, 'Pending', NULL, '2025-01-04', 'Pending'),
(869, 311, 'Autorizado', NULL, '2024-12-31', 'Concluído'),
(870, 312, 'Pending', NULL, '2024-12-26', 'Pending'),
(871, 313, 'Recusado', NULL, '2025-01-07', 'Concluído'),
(872, 314, 'Autorizado', NULL, '2024-12-27', 'Concluído'),
(873, 315, 'Autorizado', NULL, '2025-01-05', 'Concluído');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `ID_Funcionario` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `Data_Admissao` date DEFAULT NULL,
  `Salario` decimal(15,2) DEFAULT NULL,
  `Status` int(10) DEFAULT 1,
  `Telefone` varchar(15) DEFAULT NULL,
  `Telefone_VOIP` char(6) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NIF` varchar(15) NOT NULL,
  `ID_Direcao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`ID_Funcionario`, `Nome`, `Cargo`, `Data_Admissao`, `Salario`, `Status`, `Telefone`, `Telefone_VOIP`, `Email`, `NIF`, `ID_Direcao`) VALUES
(1, 'Laura Catarina Silva Nunes', 'Analyst', '2023-05-16', 3200.00, 1, '912345678', '715595', 'laura.silva@company.com', '123456789', 13),
(2, 'Bruno Martinho Sousa Camacho', 'Developer', '2022-11-01', 3500.00, 1, '913456789', '215997', 'bruno.camacho@company.com', '987654321', 10),
(3, 'Juvenal Jardim Brazão', 'Manager', '2021-08-23', 4800.00, 1, '914567890', '933197', 'juvenal.jardim@company.com', '123987654', 9),
(4, 'Maria Elisabete Gonçalves Caires', 'HR Specialist', '2020-03-15', 2700.00, 1, '915678901', '017995', 'elisabete.caires@company.com', '223344556', 14),
(5, 'Ricardo Miguel Martins Fontes', 'Team Lead', '2022-06-07', 4000.00, 1, '916789012', '290386', 'ricardo.fontes@company.com', '334455667', 23),
(6, 'Antonio Jose Camara', 'Consultant', '2019-02-19', 3300.00, 1, '917890123', '397946', 'antonio.camara@company.com', '445566778', 8),
(7, 'Sonia Pinto Sousa', 'Sales', '2021-09-30', 2800.00, 1, '918901234', '118570', 'sonia.sousa@company.com', '556677889', 6),
(8, 'Elizabeth Gonçalves', 'Designer', '2022-12-01', 3100.00, 1, '919012345', '399014', 'elizabeth.goncalves@company.com', '667788990', 17),
(9, 'Carina Nobrega', 'Marketing Specialist', '2021-07-14', 3200.00, 1, '920123456', '639359', 'carina.nobrega@company.com', '778899001', 8),
(10, 'Nuo Xavier Paixão', 'Developer', '2020-01-25', 3500.00, 1, '921234567', '999755', 'nuo.paixao@company.com', '889900112', 6),
(11, 'Sara Isabel Arede', 'Tester', '2022-05-04', 2800.00, 1, '922345678', '080697', 'sara.arede@company.com', '990011223', 26),
(12, 'Marcelino Ângelo Oliveira Vieira Fernandes', 'Operations Manager', '2021-10-22', 4500.00, 1, '923456789', '404223', 'marcelino.fernandes@company.com', '100200300', 13),
(13, 'Ana Filipa Sousa Vieira', 'Assistant', '2018-11-13', 2600.00, 1, '924567890', '779024', 'ana.vieira@company.com', '112233445', 6),
(14, 'Fabio Ruben Marques', 'Support Specialist', '2022-04-12', 3000.00, 1, '925678901', '682452', 'fabio.marques@company.com', '223344556', 22),
(15, 'Nuno Dinarte Gouveia', 'Director', '2019-09-29', 6000.00, 1, '926789012', '075188', 'nuno.gouveia@company.com', '334455667', 16),
(16, 'Albina Maria Maurício Jardim', 'Project Manager', '2020-10-16', 4000.00, 1, '927890123', '328585', 'albina.jardim@company.com', '445566778', 7),
(17, 'Vanessa Freitas', 'Analyst', '2019-12-09', 2900.00, 1, '928901234', '417363', 'vanessa.freitas@company.com', '556677889', 13),
(18, 'Helder José Gomes Jardim', 'Coordinator', '2021-04-23', 3800.00, 1, '929012345', '101059', 'helder.jardim@company.com', '667788990', 13),
(19, 'Francisco Pestana da Silva', 'Accountant', '2022-09-18', 2700.00, 1, '930123456', '253207', 'francisco.silva@company.com', '778899001', 17),
(20, 'Maria Brito', 'Finance', '2019-08-01', 3200.00, 1, '931234567', '962860', 'maria.brito@company.com', '889900112', 9),
(21, 'Duarte Pacheco', 'Engineer', '2021-06-11', 3700.00, 1, '932345678', '054677', 'duarte.pacheco@company.com', '990011223', 20),
(22, 'Ana Paula Freitas', 'Technician', '2020-02-20', 3100.00, 1, '933456789', '384805', 'ana.freitas@company.com', '100200300', 20),
(23, 'Susana Gaspar', 'HR Specialist', '2021-01-17', 2800.00, 1, '934567890', '759996', 'susana.gaspar@company.com', '112233445', 7),
(24, 'Maria Rafaela Fernandes', 'Manager', '2018-11-10', 4600.00, 1, '935678901', '645566', 'rafaela.fernandes@company.com', '223344556', 16),
(25, 'Dulce Veloza', 'Assistant', '2021-07-25', 2900.00, 1, '936789012', '947840', 'dulce.veloza@company.com', '334455667', 16),
(26, 'Joao Delgado', 'Developer', '2020-01-08', 3500.00, 1, '937890123', '802504', 'joao.delgado@company.com', '445566778', 27),
(27, 'José Sousa', 'Team Lead', '2019-12-19', 4000.00, 1, '938901234', '169001', 'jose.sousa@company.com', '556677889', 28),
(28, 'Gustavo Silva', 'Support', '2021-05-14', 3000.00, 1, '939012345', '437493', 'gustavo.silva@company.com', '667788990', 29),
(29, 'José Gonçalves', 'Developer', '2020-02-03', 3400.00, 1, '940123456', '680464', 'jose.goncalves@company.com', '778899001', 30),
(30, 'Duarte Correia', 'Designer', '2021-10-10', 3100.00, 1, '941234567', '089840', 'duarte.correia@company.com', '889900112', 31),
(31, 'Ana Carolina Martins', 'Software Engineer', '2021-04-16', 3700.00, 1, '912345678', NULL, 'ana.martins@company.com', '109876543', 1),
(32, 'Tiago Ferreira Gomes', 'Business Analyst', '2022-08-23', 3300.00, 1, '913456789', NULL, 'tiago.gomes@company.com', '210987654', 2),
(33, 'Joana Almeida Costa', 'Marketing Specialist', '2020-07-18', 2900.00, 1, '914567890', NULL, 'joana.costa@company.com', '312098765', 3),
(34, 'Ricardo Pinto Pereira', 'Financial Analyst', '2019-11-05', 3400.00, 1, '915678901', NULL, 'ricardo.pereira@company.com', '413209876', 4),
(35, 'Simone Rocha Mendes', 'HR Manager', '2020-09-12', 4500.00, 1, '916789012', NULL, 'simone.mendes@company.com', '514320987', 5),
(36, 'Pedro Henrique Silva', 'IT Specialist', '2021-02-23', 3100.00, 1, '917890123', NULL, 'pedro.silva@company.com', '615431098', 6),
(37, 'Carla Gomes Oliveira', 'Product Manager', '2018-06-30', 4200.00, 1, '918901234', NULL, 'carla.oliveira@company.com', '716542209', 7),
(38, 'Marcos Costa Santos', 'Accountant', '2019-01-10', 2800.00, 1, '919012345', NULL, 'marcos.santos@company.com', '817653310', 8),
(39, 'Gabriela Soares Rocha', 'Operations Coordinator', '2020-04-25', 3800.00, 1, '920123456', NULL, 'gabriela.rocha@company.com', '918764421', 9),
(40, 'Daniela Sousa Lima', 'Legal Advisor', '2021-03-04', 3500.00, 1, '921234567', NULL, 'daniela.lima@company.com', '101975532', 10),
(41, 'Cristiano Ferreira Araujo', 'Sales Manager', '2022-01-17', 4300.00, 1, '922345678', NULL, 'cristiano.araujo@company.com', '112086643', 1),
(42, 'Marta Andrade Pinto', 'Content Writer', '2021-11-22', 2500.00, 1, '923456789', NULL, 'marta.pinto@company.com', '213197754', 2),
(43, 'Luciana Oliveira Carvalho', 'Customer Support', '2020-10-05', 2700.00, 1, '924567890', NULL, 'luciana.carvalho@company.com', '314208865', 3),
(44, 'Juliano Costa Lopes', 'Operations Assistant', '2022-05-12', 2900.00, 1, '925678901', NULL, 'juliano.lopes@company.com', '415319976', 4),
(45, 'Felipe Albuquerque Freitas', 'Business Developer', '2018-12-18', 3800.00, 1, '926789012', NULL, 'felipe.freitas@company.com', '516420087', 5),
(46, 'Carolina Santos Lima', 'Project Coordinator', '2019-08-01', 4000.00, 1, '927890123', NULL, 'carolina.lima@company.com', '617531198', 6),
(47, 'Bruno Costa Moreira', 'Marketing Coordinator', '2020-06-27', 3100.00, 1, '928901234', NULL, 'bruno.moreira@company.com', '718642209', 7),
(48, 'Elaine Rocha Almeida', 'HR Specialist', '2021-10-05', 3300.00, 1, '929012345', NULL, 'elaine.almeida@company.com', '819753320', 8),
(49, 'Gustavo Lima Ribeiro', 'Financial Manager', '2017-03-02', 4500.00, 1, '930123456', NULL, 'gustavo.ribeiro@company.com', '920864431', 9),
(50, 'Ana Claudia Souza', 'System Administrator', '2021-12-22', 3400.00, 1, '931234567', NULL, 'ana.souza@company.com', '101975542', 10),
(51, 'Mariana Silva Campos', 'IT Consultant', '2020-05-16', 3700.00, 1, '932345678', NULL, 'mariana.campos@company.com', '213086653', 1),
(52, 'Flavia Martins Costa', 'Product Specialist', '2022-02-14', 2900.00, 1, '933456789', NULL, 'flavia.costa@company.com', '314197764', 2),
(53, 'Fábio Silva Lima', 'QA Engineer', '2019-11-20', 3100.00, 1, '934567890', NULL, 'fabio.lima@company.com', '415308875', 3),
(54, 'Nathalia Ferreira Gomes', 'Social Media Manager', '2021-04-28', 3200.00, 1, '935678901', NULL, 'nathalia.gomes@company.com', '516419986', 4),
(55, 'Ricardo Santos Alves', 'Business Consultant', '2020-12-01', 3300.00, 1, '936789012', NULL, 'ricardo.alves@company.com', '617531097', 5),
(56, 'Laura Ferreira Pinto', 'Legal Assistant', '2021-03-17', 2800.00, 1, '937890123', NULL, 'laura.pinto@company.com', '718642208', 6),
(57, 'Marcelo de Souza', 'Operations Director', '2022-07-09', 4700.00, 1, '938901234', NULL, 'marcelo.souza@company.com', '819753319', 7),
(58, 'Raquel Soares Almeida', 'Content Editor', '2019-02-22', 3100.00, 1, '939012345', NULL, 'raquel.almeida@company.com', '920864430', 8),
(59, 'Danilo Nogueira Ferreira', 'Support Manager', '2020-04-30', 3600.00, 1, '940123456', NULL, 'danilo.ferreira@company.com', '101975543', 9),
(60, 'Thiago Lima Barros', 'IT Engineer', '2022-10-05', 4000.00, 1, '941234567', NULL, 'thiago.barros@company.com', '213086654', 10),
(61, 'Juliana Costa Almeida', 'Sales Assistant', '2021-05-14', 2700.00, 1, '942345678', NULL, 'juliana.almeida@company.com', '314197765', 1),
(62, 'Paulo Henrique Rodrigues', 'Operations Manager', '2018-09-09', 4200.00, 1, '943456789', NULL, 'paulo.rodrigues@company.com', '415308876', 2),
(63, 'Camila Costa Oliveira', 'Data Entry Clerk', '2022-01-20', 2500.00, 1, '944567890', NULL, 'camila.oliveira@company.com', '516419987', 3),
(64, 'Ricardo Lima Freitas', 'Network Administrator', '2021-07-11', 3500.00, 1, '945678901', NULL, 'ricardo.freitas@company.com', '617531098', 4),
(65, 'Aline Rocha Gomes', 'Product Analyst', '2020-11-15', 3300.00, 1, '946789012', NULL, 'aline.gomes@company.com', '718642209', 5),
(66, 'Leandro Souza Pinto', 'Client Relations', '2022-06-06', 3200.00, 1, '947890123', NULL, 'leandro.pinto@company.com', '819753320', 6),
(67, 'Felipe Nogueira Lima', 'Graphic Designer', '2021-03-10', 3100.00, 1, '948901234', NULL, 'felipe.lima@company.com', '920864431', 7),
(68, 'Priscila Almeida Silva', 'Marketing Manager', '2020-10-19', 3800.00, 1, '949012345', NULL, 'priscila.silva@company.com', '101975544', 8),
(69, 'Rafael Costa Soares', 'Recruiter', '2022-11-05', 2800.00, 1, '950123456', NULL, 'rafael.soares@company.com', '213086655', 9),
(70, 'Lilian Oliveira Carvalho', 'Junior Developer', '2021-04-08', 2900.00, 1, '951234567', NULL, 'lilian.carvalho@company.com', '314197766', 10),
(200, 'Maximilian Schmidt', 'Software Engineer', '2023-01-23', 3450.00, 1, '912345703', NULL, 'maximilian.schmidt@company.com', '123456803', 14),
(201, 'Giovanna Rossi', 'Product Manager', '2022-12-30', 4300.00, 1, '912345704', NULL, 'giovanna.rossi@company.com', '123456804', 12),
(202, 'Luis Hernández', 'HR Specialist', '2021-11-11', 2800.00, 1, '912345705', NULL, 'luis.hernandez@company.com', '123456805', 16),
(203, 'Elena Popescu', 'Developer', '2022-06-14', 3400.00, 1, '912345706', NULL, 'elena.popescu@company.com', '123456806', 17),
(204, 'Ibrahim Al-Farsi', 'Analyst', '2023-03-03', 3000.00, 1, '912345707', NULL, 'ibrahim.alfarsi@company.com', '123456807', 18),
(205, 'Marcelo Silva', 'Software Engineer', '2022-07-18', 3700.00, 1, '912345708', NULL, 'marcelo.silva@company.com', '123456808', 19),
(206, 'Katarina Jovanović', 'Data Scientist', '2022-09-12', 4000.00, 1, '912345709', NULL, 'katarina.jovanovic@company.com', '123456809', 20),
(207, 'Nikos Pappas', 'Manager', '2023-02-20', 4600.00, 1, '912345710', NULL, 'nikos.pappas@company.com', '123456810', 21),
(208, 'Maria González', 'Product Manager', '2021-10-09', 4200.00, 1, '912345711', NULL, 'maria.gonzalez@company.com', '123456811', 22),
(209, 'Frederico Santos', 'HR Specialist', '2023-05-25', 2900.00, 1, '912345712', NULL, 'frederico.santos@company.com', '123456812', 23),
(210, 'Javier Rodríguez', 'Developer', '2022-08-01', 3500.00, 1, '912345713', NULL, 'javier.rodriguez@company.com', '123456813', 28),
(211, 'Hanna Schmidt', 'Analyst', '2023-04-14', 3050.00, 1, '912345714', NULL, 'hanna.schmidt@company.com', '123456814', 13),
(212, 'Antonio Vieira', 'Data Scientist', '2022-02-02', 4200.00, 1, '912345715', NULL, 'antonio.vieira@company.com', '123456815', 26),
(213, 'Tanja Müller', 'Software Engineer', '2023-06-07', 3750.00, 1, '912345716', NULL, 'tanja.mueller@company.com', '123456816', 27),
(214, 'Luca Bianchi', 'Product Manager', '2023-07-25', 4600.00, 1, '912345717', NULL, 'luca.bianchi@company.com', '123456817', 28),
(215, 'Jamal Ahmed', 'Manager', '2022-11-13', 4800.00, 1, '912345718', NULL, 'jamal.ahmed@company.com', '123456818', 1),
(216, 'Camila Pereira', 'HR Specialist', '2021-12-20', 2900.00, 1, '912345719', NULL, 'camila.pereira@company.com', '123456819', 2),
(217, 'Yasmin El-Sayed', 'Software Engineer', '2022-01-17', 3500.00, 1, '912345720', NULL, 'yasmin.elsayed@company.com', '123456820', 3),
(218, 'Boris Ivanov', 'Product Manager', '2023-02-01', 4500.00, 1, '912345721', NULL, 'boris.ivanov@company.com', '123456821', 4),
(219, 'Lindsey Martinez', 'HR Specialist', '2022-09-23', 3100.00, 1, '912345722', NULL, 'lindsey.martinez@company.com', '123456822', 5),
(220, 'Rafael Oliveira', 'Developer', '2023-03-10', 3400.00, 1, '912345723', NULL, 'rafael.oliveira@company.com', '123456823', 6),
(221, 'Sofia Chaves', 'Data Scientist', '2021-06-05', 4000.00, 1, '912345724', NULL, 'sofia.chaves@company.com', '123456824', 7),
(222, 'Karla Meyer', 'Manager', '2022-05-16', 4700.00, 1, '912345725', NULL, 'karla.meyer@company.com', '123456825', 8),
(223, 'Andrea Rossi', 'Analyst', '2023-08-23', 3000.00, 1, '912345726', NULL, 'andrea.rossi@company.com', '123456826', 9),
(224, 'Mohammad Ali', 'Software Engineer', '2022-12-05', 3500.00, 1, '912345727', NULL, 'mohammad.ali@company.com', '123456827', 10),
(225, 'Bianca Figueiredo', 'Product Manager', '2021-11-02', 4200.00, 1, '912345728', NULL, 'bianca.figueiredo@company.com', '123456828', 11),
(226, 'Omar Khalil', 'HR Specialist', '2023-07-29', 2950.00, 1, '912345729', NULL, 'omar.khalil@company.com', '123456829', 12),
(227, 'Alicia Fernández', 'Developer', '2022-08-28', 3400.00, 1, '912345730', NULL, 'alicia.fernandez@company.com', '123456830', 13),
(228, 'Viktor Kovács', 'Manager', '2023-05-10', 4700.00, 1, '912345731', NULL, 'viktor.kovacs@company.com', '123456831', 14),
(229, 'Veronica Chang', 'Data Scientist', '2022-04-02', 4000.00, 1, '912345732', NULL, 'veronica.chang@company.com', '123456832', 14),
(230, 'Emilia Takahashi', 'Software Engineer', '2023-04-11', 3750.00, 1, '912345733', NULL, 'emilia.takahashi@company.com', '123456833', 16),
(231, 'Martin Schwarz', 'Product Manager', '2022-09-18', 4500.00, 1, '912345734', NULL, 'martin.schwarz@company.com', '123456834', 17),
(232, 'Chloe Dubois', 'HR Specialist', '2021-06-15', 2900.00, 1, '912345735', NULL, 'chloe.dubois@company.com', '123456835', 18),
(233, 'Lucas Pereira', 'Developer', '2022-07-25', 3400.00, 1, '912345736', NULL, 'lucas.pereira@company.com', '123456836', 19),
(234, 'Ingrid Jensen', 'Manager', '2023-03-21', 4700.00, 1, '912345737', NULL, 'ingrid.jensen@company.com', '123456837', 20),
(235, 'João Santos', 'Data Scientist', '2022-05-10', 4000.00, 1, '912345738', NULL, 'joao.santos@company.com', '123456838', 21),
(236, 'Leandro Martins', 'Software Engineer', '2023-02-02', 3550.00, 1, '912345739', NULL, 'leandro.martins@company.com', '123456839', 22),
(237, 'Ricardo Almeida', 'Product Manager', '2021-08-12', 4300.00, 1, '912345740', NULL, 'ricardo.almeida@company.com', '123456840', 23),
(238, 'Stefania Moreno', 'HR Specialist', '2022-04-09', 3000.00, 1, '912345741', NULL, 'stefania.moreno@company.com', '123456841', 16),
(239, 'Fabio Silva', 'Developer', '2023-07-02', 3500.00, 1, '912345742', NULL, 'fabio.silva@company.com', '123456842', 18),
(240, 'Sandra Krüger', 'Manager', '2022-10-14', 4800.00, 1, '912345743', NULL, 'sandra.kruger@company.com', '123456843', 26),
(241, 'Gabrielle Lemoine', 'Data Scientist', '2021-12-01', 4200.00, 1, '912345744', NULL, 'gabrielle.lemoine@company.com', '123456844', 27),
(242, 'Henrik Jensen', 'Software Engineer', '2022-03-15', 3550.00, 1, '912345745', NULL, 'henrik.jensen@company.com', '123456845', 28),
(299, 'Aidan O’Connor', 'Software Engineer', '2023-01-09', 3600.00, 1, '912345746', NULL, 'aidan.oconnor@company.com', '123456846', 1),
(300, 'Carlos Martínez', 'Data Scientist', '2022-11-25', 4100.00, 1, '912345747', NULL, 'carlos.martinez@company.com', '123456847', 2),
(301, 'Lena Schmidt', 'Product Manager', '2021-06-08', 4500.00, 1, '912345748', NULL, 'lena.schmidt@company.com', '123456848', 3),
(302, 'Hassan Jafari', 'HR Specialist', '2022-03-12', 2900.00, 1, '912345749', NULL, 'hassan.jafari@company.com', '123456849', 4),
(303, 'Ana Maria Costa', 'Manager', '2023-02-21', 4800.00, 1, '912345750', NULL, 'ana.costa@company.com', '123456850', 5),
(304, 'Jorge Rodríguez', 'Developer', '2022-05-04', 3700.00, 1, '912345751', NULL, 'jorge.rodriguez@company.com', '123456851', 6),
(305, 'Nina Müller', 'Software Engineer', '2022-12-15', 3500.00, 1, '912345752', NULL, 'nina.mueller@company.com', '123456852', 7),
(306, 'Michel Dupont', 'HR Specialist', '2021-04-25', 3000.00, 1, '912345753', NULL, 'michel.dupont@company.com', '123456853', 8),
(307, 'Tina Brown', 'Manager', '2022-08-30', 4700.00, 1, '912345754', NULL, 'tina.brown@company.com', '123456854', 9),
(308, 'Riccardo Conti', 'Data Scientist', '2023-05-16', 4150.00, 1, '912345755', NULL, 'riccardo.conti@company.com', '123456855', 10),
(309, 'Aaliyah Khan', 'Software Engineer', '2022-07-09', 3600.00, 1, '912345756', NULL, 'aaliyah.khan@company.com', '123456856', 11),
(310, 'Patricia González', 'Product Manager', '2021-09-15', 4400.00, 1, '912345757', NULL, 'patricia.gonzalez@company.com', '123456857', 12),
(311, 'Milan Petrović', 'HR Specialist', '2022-01-27', 3100.00, 1, '912345758', NULL, 'milan.petrovic@company.com', '123456858', 13),
(312, 'Svenja Bauer', 'Developer', '2022-12-11', 3750.00, 1, '912345759', NULL, 'svenja.bauer@company.com', '123456859', 14),
(313, 'Raphaël Lefevre', 'Manager', '2023-04-01', 4900.00, 1, '912345760', NULL, 'raphael.lefevre@company.com', '123456860', 27),
(314, 'Giulia Rizzo', 'Data Scientist', '2022-03-03', 4200.00, 1, '912345761', NULL, 'giulia.rizzo@company.com', '123456861', 16),
(315, 'Zayn Malik', 'Software Engineer', '2021-07-05', 3550.00, 1, '912345762', NULL, 'zayn.malik@company.com', '123456862', 17),
(316, 'Samuel Johnson', 'Product Manager', '2023-01-24', 4600.00, 1, '912345763', NULL, 'samuel.johnson@company.com', '123456863', 18),
(317, 'Sophia Müller', 'HR Specialist', '2021-10-01', 3000.00, 1, '912345764', NULL, 'sophia.mueller@company.com', '123456864', 19),
(318, 'Diego García', 'Manager', '2022-04-10', 4800.00, 1, '912345765', NULL, 'diego.garcia@company.com', '123456865', 20),
(319, 'Isabelle Lefevre', 'Developer', '2022-02-14', 3600.00, 1, '912345766', NULL, 'isabelle.lefevre@company.com', '123456866', 21),
(320, 'Julian Fischer', 'Data Scientist', '2023-05-19', 4300.00, 1, '912345767', NULL, 'julian.fischer@company.com', '123456867', 22),
(321, 'Ewa Kowalska', 'Software Engineer', '2021-09-28', 3400.00, 1, '912345768', NULL, 'ewa.kowalska@company.com', '123456868', 23),
(322, 'Andreia Ribeiro', 'HR Specialist', '2023-06-12', 2900.00, 1, '912345769', NULL, 'andreia.ribeiro@company.com', '123456869', 27),
(323, 'Omar Cissé', 'Product Manager', '2022-11-05', 4450.00, 1, '912345770', NULL, 'omar.cisse@company.com', '123456870', 28),
(324, 'Petra Sörensen', 'Manager', '2022-10-19', 4750.00, 1, '912345771', NULL, 'petra.sorensen@company.com', '123456871', 26),
(325, 'Sebastian Navarro', 'Data Scientist', '2021-05-18', 4200.00, 1, '912345772', NULL, 'sebastian.navarro@company.com', '123456872', 27),
(326, 'Julia Fernández', 'Software Engineer', '2022-03-23', 3650.00, 1, '912345773', NULL, 'julia.fernandez@company.com', '123456873', 28),
(327, 'Adrian Green', 'HR Specialist', '2023-05-02', 3000.00, 1, '912345774', NULL, 'adrian.green@company.com', '123456874', 1),
(328, 'Victoria Santos', 'Product Manager', '2021-11-12', 4350.00, 1, '912345775', NULL, 'victoria.santos@company.com', '123456875', 2),
(329, 'Rui Costa', 'Developer', '2022-06-28', 3700.00, 1, '912345776', NULL, 'rui.costa@company.com', '123456876', 3),
(330, 'Marta Pires', 'Software Engineer', '2023-01-17', 3550.00, 1, '912345777', NULL, 'marta.pires@company.com', '123456877', 4),
(331, 'Amandine Duchamp', 'HR Specialist', '2022-05-23', 2900.00, 1, '912345778', NULL, 'amandine.duchamp@company.com', '123456878', 5),
(332, 'Vítor Silva', 'Manager', '2022-09-22', 4800.00, 1, '912345779', NULL, 'vitor.silva@company.com', '123456879', 6),
(333, 'Emilia Müller', 'Product Manager', '2021-10-21', 4400.00, 1, '912345780', NULL, 'emilia.mueller@company.com', '123456880', 7),
(334, 'Cédric Dupuis', 'Data Scientist', '2023-04-18', 4300.00, 1, '912345781', NULL, 'cedric.dupuis@company.com', '123456881', 8),
(335, 'Tomás Oliveira', 'Developer', '2022-11-09', 3650.00, 1, '912345782', NULL, 'tomas.oliveira@company.com', '123456882', 9),
(336, 'Manuel Rodríguez', 'Manager', '2023-02-03', 4850.00, 1, '912345783', NULL, 'manuel.rodriguez@company.com', '123456883', 10),
(337, 'Frederick Alexander', 'HR Specialist', '2022-12-19', 3000.00, 1, '912345784', NULL, 'frederick.alexander@company.com', '123456884', 11),
(338, 'Sonia Ramírez', 'Software Engineer', '2021-06-22', 3500.00, 1, '912345785', NULL, 'sonia.ramirez@company.com', '123456885', 12),
(339, 'Stefan Koch', 'Product Manager', '2022-07-14', 4550.00, 1, '912345786', NULL, 'stefan.koch@company.com', '123456886', 13),
(340, 'Aliya Habib', 'Data Scientist', '2021-10-06', 4100.00, 1, '912345787', NULL, 'aliya.habib@company.com', '123456887', 14),
(341, 'Valentina Bellini', 'HR Specialist', '2022-06-06', 2900.00, 1, '912345788', NULL, 'valentina.bellini@company.com', '123456888', 17),
(342, 'Khalid Al-Mansoor', 'Software Engineer', '2023-02-14', 3650.00, 1, '912345789', NULL, 'khalid.almansoor@company.com', '123456889', 16),
(343, 'Charlotte Lambert', 'Manager', '2021-09-18', 4750.00, 1, '912345790', NULL, 'charlotte.lambert@company.com', '123456890', 17),
(344, 'Alejandro Serrano', 'Data Scientist', '2022-08-29', 4300.00, 1, '912345791', NULL, 'alejandro.serrano@company.com', '123456891', 18),
(345, 'Natalia Drago', 'HR Specialist', '2021-05-11', 2900.00, 1, '912345792', NULL, 'natalia.drago@company.com', '123456892', 19),
(346, 'Ilyas Boucher', 'Software Engineer', '2022-11-30', 3550.00, 1, '912345793', NULL, 'ilyas.boucher@company.com', '123456893', 20),
(347, 'Fadi Hossain', 'Product Manager', '2023-01-06', 4500.00, 1, '912345794', NULL, 'fadi.hossain@company.com', '123456894', 21),
(348, 'Laurent Lemoine', 'HR Specialist', '2022-02-18', 2900.00, 1, '912345795', NULL, 'laurent.lemoine@company.com', '123456895', 22),
(349, 'Diana Ferrero', 'Manager', '2021-12-20', 4800.00, 1, '912345796', NULL, 'diana.ferrero@company.com', '123456896', 23),
(350, 'David Rodríguez', 'Software Engineer', '2022-04-30', 3500.00, 1, '912345797', NULL, 'david.rodriguez@company.com', '123456897', 2),
(351, 'Elena Petrová', 'Product Manager', '2022-01-21', 4400.00, 1, '912345798', NULL, 'elena.petrova@company.com', '123456898', 26),
(352, 'Elias Müller', 'HR Specialist', '2023-06-05', 3000.00, 1, '912345799', NULL, 'elias.mueller@company.com', '123456899', 26),
(353, 'Leandro Costa', 'Software Engineer', '2021-09-03', 3450.00, 1, '912345800', NULL, 'leandro.costa@company.com', '123456900', 27),
(354, 'Anja Møller', 'Data Scientist', '2022-03-02', 4200.00, 1, '912345801', NULL, 'anja.moller@company.com', '123456901', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `necessity_evaluation`
--

CREATE TABLE `necessity_evaluation` (
  `EvaluationID` int(11) NOT NULL,
  `RequestID` int(11) NOT NULL,
  `Resultado` enum('Sim','Pending','Não') NOT NULL,
  `BCI_Original` enum('Sim','Não necessita') NOT NULL,
  `Email_Requerente` varchar(255) NOT NULL DEFAULT 'Não Necessita',
  `Observacoes` varchar(255) NOT NULL DEFAULT 'Não Necessita'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `necessity_evaluation`
--

INSERT INTO `necessity_evaluation` (`EvaluationID`, `RequestID`, `Resultado`, `BCI_Original`, `Email_Requerente`, `Observacoes`) VALUES
(1, 205, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(2, 206, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(3, 207, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(4, 208, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(5, 209, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(6, 210, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(7, 211, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(8, 212, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(9, 213, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(10, 214, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(11, 215, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(12, 216, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(13, 217, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(14, 218, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(15, 219, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(16, 220, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(17, 221, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(18, 222, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(19, 223, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(20, 224, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(21, 225, 'Não', 'Sim', 'Não Necessita', 'Não Necessita'),
(22, 226, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(23, 227, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(24, 228, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(25, 229, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(26, 230, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(27, 231, 'Não', 'Sim', 'Não Necessita', 'Não Necessita'),
(28, 232, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(29, 233, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(30, 234, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(31, 235, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(32, 236, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(33, 237, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(34, 238, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(35, 239, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(36, 240, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(37, 241, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(38, 242, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(39, 243, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(40, 244, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(41, 245, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(42, 246, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(43, 247, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(44, 248, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(45, 249, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(46, 250, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(47, 251, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(48, 252, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(49, 253, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(50, 254, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(51, 255, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(52, 256, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(53, 257, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(54, 258, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(55, 259, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(56, 260, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(57, 261, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(58, 262, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(59, 263, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(60, 264, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(61, 265, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(62, 266, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(63, 267, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(64, 268, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(65, 269, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(66, 270, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(67, 271, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(68, 272, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(69, 273, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(70, 274, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(71, 275, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(72, 276, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(73, 277, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(74, 278, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(75, 279, 'Não', 'Sim', 'Não Necessita', 'Não Necessita'),
(76, 280, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(77, 281, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(78, 282, 'Não', 'Sim', 'Não Necessita', 'Não Necessita'),
(79, 283, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(80, 284, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(81, 285, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(82, 286, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(83, 287, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(84, 288, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(85, 289, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(86, 290, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(87, 291, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(88, 292, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(89, 293, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(90, 294, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(91, 295, 'Pending', 'Sim', 'Não Necessita', 'Não Necessita'),
(92, 296, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(93, 297, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(94, 298, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(95, 299, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(96, 300, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(97, 301, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(98, 302, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(99, 303, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(100, 304, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(101, 305, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(102, 306, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(103, 307, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(104, 308, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(105, 309, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(106, 310, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(107, 311, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(108, 312, 'Pending', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(109, 313, 'Não', 'Não necessita', 'Não Necessita', 'Não Necessita'),
(110, 314, 'Sim', 'Sim', 'Não Necessita', 'Não Necessita'),
(111, 315, 'Sim', 'Não necessita', 'Não Necessita', 'Não Necessita');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requests`
--

CREATE TABLE `requests` (
  `RequestID` int(11) NOT NULL,
  `Email_Requerente` varchar(255) NOT NULL,
  `Tipo_Equipamento` varchar(100) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Tipo_BCII` enum('Original','Copy') NOT NULL,
  `Destino_DepartamentoID` int(11) NOT NULL,
  `Justificacao` text NOT NULL,
  `Estado` enum('Autorizado','Em Andamento','Recusado') NOT NULL,
  `Data_Criacao` date NOT NULL DEFAULT current_timestamp(),
  `Source` enum('Email','Phone') NOT NULL DEFAULT 'Email',
  `Enviado_Email` enum('Enviado','Não Necessário') NOT NULL,
  `Entrada_IDOK` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `requests`
--

INSERT INTO `requests` (`RequestID`, `Email_Requerente`, `Tipo_Equipamento`, `Quantidade`, `Tipo_BCII`, `Destino_DepartamentoID`, `Justificacao`, `Estado`, `Data_Criacao`, `Source`, `Enviado_Email`, `Entrada_IDOK`) VALUES
(205, 'john.doe@example.com', 'Computador', 2, 'Original', 1, 'Substituição de computadores', 'Autorizado', '2024-11-01', 'Email', 'Enviado', 'SRF/12345/2024'),
(206, 'jane.smith@example.com', 'Monitor 24 polegadas', 5, 'Copy', 1, 'Requisição de 7 monitores', 'Em Andamento', '2024-11-10', 'Phone', 'Não Necessário', 'SRF/31485/2024'),
(207, 'mario.fernandez@example.com', 'Teclado', 10, 'Original', 1, 'Substituição do Teclado', 'Recusado', '2024-11-05', 'Email', 'Enviado', 'SRF/26741/2024'),
(208, 'lucas.rodrigues@example.com', 'Computador completo', 3, 'Copy', 1, 'Requisição de Computador', 'Autorizado', '2024-11-15', 'Phone', 'Não Necessário', 'SRF/29908/2024'),
(209, 'ana.pereira@example.com', 'Rato', 7, 'Original', 1, 'Substituição do Rato', 'Em Andamento', '2024-11-03', 'Email', 'Enviado', 'SRF/29912/2024'),
(210, 'bruno.martins@example.com', 'Computador', 1, 'Copy', 1, 'Requisição de Computador', 'Autorizado', '2024-11-20', 'Phone', 'Não Necessário', 'SRF/30298/2024'),
(211, 'carla.souza@example.com', 'Monitor 22', 4, 'Original', 1, 'Substituição do Monitor', 'Em Andamento', '2024-11-12', 'Email', 'Enviado', 'SRF/31486/2024'),
(212, 'jose.oliveira@example.com', 'Computador completo', 2, 'Original', 1, 'Substituição de computadores', 'Recusado', '2024-11-05', 'Phone', 'Não Necessário', 'SRF/31487/2024'),
(213, 'patricia.silva@example.com', 'Voip', 15, 'Copy', 1, 'Substituição do Voip', 'Autorizado', '2024-11-02', 'Email', 'Enviado', 'SRF/31488/2024'),
(214, 'ricardo.almeida@example.com', 'Computador', 3, 'Original', 1, 'Requisição de Computador', 'Em Andamento', '2024-11-10', 'Phone', 'Não Necessário', 'SRF/31489/2024'),
(215, 'maria.goncalves@example.com', 'Teclado', 12, 'Original', 1, 'Substituição do Teclado', 'Autorizado', '2024-11-13', 'Email', 'Enviado', 'SRF/31490/2024'),
(216, 'antonio.rodrigues@example.com', 'Computador', 4, 'Copy', 1, 'Requisição de Computador', 'Recusado', '2024-11-11', 'Phone', 'Enviado', 'SRF/31491/2024'),
(217, 'sofia.costa@example.com', 'Monitor', 6, 'Original', 1, 'Substituição do Monitor', 'Em Andamento', '2024-11-07', 'Email', 'Não Necessário', 'SRF/31492/2024'),
(218, 'pedro.martins@example.com', 'Rato', 8, 'Copy', 1, 'Requisição de 8 ratos', 'Autorizado', '2024-11-19', 'Phone', 'Enviado', 'SRF/31493/2024'),
(219, 'clara.lopes@example.com', 'Computador', 2, 'Original', 1, 'Substituição de computadores', 'Em Andamento', '2024-11-22', 'Email', 'Não Necessário', 'SRF/31494/2024'),
(220, 'luisa.santos@example.com', 'Teclado', 5, 'Original', 1, 'Substituição do Teclado', 'Recusado', '2024-11-06', 'Phone', 'Enviado', 'SRF/31495/2024'),
(221, 'marco.figueiredo@example.com', 'Computador completo', 1, 'Copy', 1, 'Requisição de Computador completo', 'Em Andamento', '2024-11-18', 'Email', 'Não Necessário', 'SRF/31496/2024'),
(222, 'vera.nunes@example.com', 'Computador', 1, 'Original', 1, 'Substituição de computador', 'Autorizado', '2024-11-09', 'Phone', 'Enviado', 'SRF/31497/2024'),
(223, 'mario.silva@example.com', 'Voips', 20, 'Copy', 1, 'Requisição de Voip', 'Autorizado', '2024-11-13', 'Email', 'Não Necessário', 'SRF/31498/2024'),
(224, 'carolina.mendes@example.com', 'Portátil', 3, 'Original', 1, 'Substituição de computadores', 'Em Andamento', '2024-11-11', 'Phone', 'Enviado', 'SRF/31499/2024'),
(225, 'gustavo.souza@example.com', 'Computador', 2, 'Copy', 1, 'Requisição de Computador', 'Recusado', '2024-11-08', 'Email', 'Não Necessário', 'SRF/31500/2024'),
(226, 'lucas.souza@example.com', 'Computador', 5, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-11-14', 'Email', 'Enviado', 'SRF/31501/2024'),
(227, 'isabela.martins@example.com', 'Monitor 24 polegadas', 6, 'Copy', 1, 'Requisição de 6 monitores', 'Em Andamento', '2024-11-19', 'Phone', 'Não Necessário', 'SRF/31502/2024'),
(228, 'rafael.costa@example.com', 'Teclado', 15, 'Original', 1, 'Substituição do Teclado', 'Recusado', '2024-11-10', 'Email', 'Enviado', 'SRF/31503/2024'),
(229, 'mariana.silva@example.com', 'Computador completo', 2, 'Copy', 1, 'Requisição de Computador completo', 'Autorizado', '2024-11-05', 'Phone', 'Não Necessário', 'SRF/31504/2024'),
(230, 'pedro.ferreira@example.com', 'Computador', 8, 'Original', 1, 'Substituição de computadores', 'Em Andamento', '2024-11-22', 'Email', 'Enviado', 'SRF/31505/2024'),
(231, 'carla.santos@example.com', 'Monitor 22', 4, 'Copy', 1, 'Substituição do Monitor', 'Recusado', '2024-11-03', 'Phone', 'Não Necessário', 'SRF/31506/2024'),
(232, 'gustavo.silva@example.com', 'Rato', 6, 'Original', 1, 'Substituição do Rato', 'Autorizado', '2024-11-11', 'Email', 'Enviado', 'SRF/31507/2024'),
(233, 'jose.ribeiro@example.com', 'Computador', 3, 'Copy', 1, 'Requisição de Computador', 'Em Andamento', '2024-11-18', 'Phone', 'Não Necessário', 'SRF/31508/2024'),
(234, 'patricia.mendes@example.com', 'Teclado', 12, 'Original', 1, 'Substituição do Teclado', 'Autorizado', '2024-11-15', 'Email', 'Enviado', 'SRF/31509/2024'),
(235, 'ricardo.rodrigues@example.com', 'Computador completo', 2, 'Original', 1, 'Substituição de computadores', 'Em Andamento', '2024-11-21', 'Phone', 'Não Necessário', 'SRF/31510/2024'),
(236, 'luisa.figueiredo@example.com', 'Voips', 25, 'Copy', 1, 'Requisição de Voip', 'Autorizado', '2024-11-16', 'Email', 'Não Necessário', 'SRF/31511/2024'),
(237, 'daniel.almeida@example.com', 'Computador', 7, 'Original', 1, 'Requisição de Computador', 'Em Andamento', '2024-11-17', 'Phone', 'Enviado', 'SRF/31512/2024'),
(238, 'bruna.nunes@example.com', 'Monitor', 5, 'Original', 1, 'Substituição do Monitor', 'Recusado', '2024-11-23', 'Email', 'Enviado', 'SRF/31513/2024'),
(239, 'elena.souza@example.com', 'Computador completo', 1, 'Copy', 1, 'Requisição de Computador completo', 'Autorizado', '2024-11-13', 'Phone', 'Não Necessário', 'SRF/31514/2024'),
(240, 'andre.gomes@example.com', 'Portátil', 4, 'Original', 1, 'Substituição de computadores', 'Em Andamento', '2024-11-20', 'Email', 'Enviado', 'SRF/31515/2024'),
(241, 'marco.cunha@example.com', 'Computador', 2, 'Copy', 1, 'Requisição de Computador', 'Autorizado', '2024-11-07', 'Phone', 'Não Necessário', 'SRF/31516/2024'),
(242, 'claudia.santos@example.com', 'Monitor 24 polegadas', 3, 'Original', 1, 'Substituição de Monitor', 'Recusado', '2024-11-04', 'Email', 'Enviado', 'SRF/31517/2024'),
(243, 'francisco.martins@example.com', 'Computador', 6, 'Original', 1, 'Substituição de computadores', 'Autorizado', '2024-11-14', 'Phone', 'Enviado', 'SRF/31518/2024'),
(244, 'sandra.silva@example.com', 'Rato', 3, 'Copy', 1, 'Substituição do Rato', 'Recusado', '2024-11-11', 'Email', 'Enviado', 'SRF/31519/2024'),
(245, 'felipe.rodrigues@example.com', 'Computador completo', 1, 'Original', 1, 'Requisição de Computador completo', 'Em Andamento', '2024-11-12', 'Phone', 'Não Necessário', 'SRF/31520/2024'),
(246, 'elisa.pereira@example.com', 'Teclado', 8, 'Original', 1, 'Substituição do Teclado', 'Autorizado', '2024-11-16', 'Email', 'Enviado', 'SRF/31521/2024'),
(247, 'alvaro.figueiredo@example.com', 'Computador', 5, 'Copy', 1, 'Requisição de Computador', 'Em Andamento', '2024-11-08', 'Phone', 'Não Necessário', 'SRF/31522/2024'),
(248, 'carla.oliveira@example.com', 'Monitor', 4, 'Original', 1, 'Substituição de Monitor', 'Recusado', '2024-11-19', 'Email', 'Enviado', 'SRF/31523/2024'),
(249, 'natalia.martins@example.com', 'Computador', 2, 'Copy', 1, 'Requisição de Computador', 'Autorizado', '2024-11-06', 'Phone', 'Não Necessário', 'SRF/31524/2024'),
(250, 'luisa.pereira@example.com', 'Teclado', 10, 'Original', 1, 'Substituição do Teclado', 'Em Andamento', '2024-11-02', 'Email', 'Enviado', 'SRF/31525/2024'),
(251, 'daniela.souza@example.com', 'Computador completo', 3, 'Copy', 1, 'Requisição de Computador completo', 'Autorizado', '2024-11-07', 'Phone', 'Não Necessário', 'SRF/31526/2024'),
(252, 'roberto.costa@example.com', 'Voips', 12, 'Original', 1, 'Substituição de Voip', 'Em Andamento', '2024-11-12', 'Email', 'Enviado', 'SRF/31527/2024'),
(253, 'felipe.rodrigues@example.com', 'Portátil', 5, 'Copy', 1, 'Requisição de Portátil', 'Autorizado', '2024-11-18', 'Phone', 'Não Necessário', 'SRF/31528/2024'),
(254, 'hugo.santos@example.com', 'Computador', 9, 'Original', 1, 'Substituição de computadores', 'Recusado', '2024-11-23', 'Email', 'Enviado', 'SRF/31529/2024'),
(255, 'luiz.rodrigues@example.com', 'Monitor 24 polegadas', 7, 'Copy', 1, 'Requisição de 7 monitores', 'Em Andamento', '2024-11-05', 'Phone', 'Não Necessário', 'SRF/31530/2024'),
(256, 'lucas.souza@example.com', 'Computador', 2, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-11-15', 'Email', 'Enviado', 'SRF/31485/2024'),
(257, 'maria.silva@example.com', 'Monitor 24 polegadas', 4, 'Copy', 1, 'Substituição do Monitor', 'Em Andamento', '2024-11-16', 'Phone', 'Não Necessário', 'SRF/26741/2024'),
(258, 'roberto.oliveira@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-11-17', 'Email', 'Enviado', 'SRF/29908/2024'),
(259, 'isabela.martins@example.com', 'Teclado', 3, 'Original', 1, 'Substituição de Teclado', 'Recusado', '2024-11-18', 'Phone', 'Enviado', 'SRF/29912/2024'),
(260, 'felipe.santos@example.com', 'Rato', 2, 'Copy', 1, 'Substituição de Rato', 'Em Andamento', '2024-11-19', 'Email', 'Não Necessário', 'SRF/30298/2024'),
(261, 'carla.farias@example.com', 'Computador completo', 1, 'Original', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-11-20', 'Phone', 'Enviado', 'SRF/31486/2024'),
(262, 'pedro.lima@example.com', 'Monitor 22 polegadas', 2, 'Original', 1, 'Substituição de Monitor', 'Autorizado', '2024-11-21', 'Email', 'Não Necessário', 'SRF/26742/2024'),
(263, 'ana.pereira@example.com', 'Equipamento completo', 1, 'Copy', 1, 'Requisição de Equipamento Completo', 'Em Andamento', '2024-11-22', 'Phone', 'Enviado', 'SRF/29909/2024'),
(264, 'giovana.martins@example.com', 'Computador', 3, 'Original', 1, 'Substituição de Computador', 'Recusado', '2024-11-23', 'Email', 'Não Necessário', 'SRF/29913/2024'),
(265, 'gustavo.ribeiro@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-11-24', 'Phone', 'Enviado', 'SRF/30299/2024'),
(266, 'lucia.gomes@example.com', 'Teclado', 2, 'Copy', 1, 'Substituição de Teclado', 'Em Andamento', '2024-11-25', 'Email', 'Não Necessário', 'SRF/31487/2024'),
(267, 'julio.souza@example.com', 'Rato', 5, 'Original', 1, 'Substituição de Rato', 'Recusado', '2024-11-26', 'Phone', 'Enviado', 'SRF/26743/2024'),
(268, 'paula.santos@example.com', 'Computador completo', 2, 'Original', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-11-27', 'Email', 'Não Necessário', 'SRF/29910/2024'),
(269, 'roberto.moura@example.com', 'Monitor 24 polegadas', 3, 'Copy', 1, 'Substituição de Monitor', 'Em Andamento', '2024-11-28', 'Phone', 'Enviado', 'SRF/29914/2024'),
(270, 'mario.souza@example.com', 'Computador', 4, 'Original', 1, 'Requisição de Computador', 'Recusado', '2024-11-29', 'Email', 'Não Necessário', 'SRF/30290/2024'),
(271, 'carla.jaime@example.com', 'Portátil', 1, 'Copy', 1, 'Substituição de Portátil', 'Autorizado', '2024-11-30', 'Phone', 'Enviado', 'SRF/31488/2024'),
(272, 'beatriz.nunes@example.com', 'Surface', 2, 'Original', 1, 'Requisição de Surface', 'Autorizado', '2024-11-30', 'Email', 'Não Necessário', 'SRF/26744/2024'),
(273, 'victor.martins@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-11-15', 'Email', 'Enviado', 'SRF/31489/2024'),
(274, 'luana.rodrigues@example.com', 'Monitor 24 polegadas', 2, 'Copy', 1, 'Substituição do Monitor', 'Em Andamento', '2024-11-16', 'Phone', 'Não Necessário', 'SRF/26745/2024'),
(275, 'bruna.gonzalez@example.com', 'Computador', 3, 'Original', 1, 'Substituição de Computador', 'Autorizado', '2024-11-17', 'Email', 'Enviado', 'SRF/29911/2024'),
(276, 'felipe.costa@example.com', 'Teclado', 1, 'Copy', 1, 'Substituição do Teclado', 'Recusado', '2024-11-18', 'Phone', 'Enviado', 'SRF/29915/2024'),
(277, 'luana.macedo@example.com', 'Monitor', 4, 'Original', 1, 'Substituição de Monitor', 'Em Andamento', '2024-11-19', 'Email', 'Não Necessário', 'SRF/30291/2024'),
(278, 'diego.cavalcanti@example.com', 'Computador completo', 2, 'Original', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-11-20', 'Phone', 'Enviado', 'SRF/31490/2024'),
(279, 'marta.ferreira@example.com', 'Monitor 22 polegadas', 1, 'Copy', 1, 'Substituição de Monitor', 'Recusado', '2024-11-21', 'Email', 'Enviado', 'SRF/26746/2024'),
(280, 'mario.goncalves@example.com', 'Equipamento completo', 1, 'Original', 1, 'Requisição de Equipamento Completo', 'Autorizado', '2024-11-22', 'Phone', 'Não Necessário', 'SRF/29916/2024'),
(281, 'ana.lima@example.com', 'Computador', 2, 'Original', 1, 'Requisição de Computador', 'Em Andamento', '2024-11-23', 'Email', 'Enviado', 'SRF/29917/2024'),
(282, 'roberto.silva@example.com', 'Teclado', 5, 'Copy', 1, 'Substituição de Teclado', 'Recusado', '2024-11-24', 'Phone', 'Não Necessário', 'SRF/30292/2024'),
(283, 'gabriela.cunha@example.com', 'Rato', 3, 'Original', 1, 'Substituição de Rato', 'Em Andamento', '2024-11-25', 'Email', 'Enviado', 'SRF/31491/2024'),
(284, 'pedro.gomes@example.com', 'Computador completo', 1, 'Copy', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-11-26', 'Phone', 'Não Necessário', 'SRF/26747/2024'),
(285, 'carla.santos@example.com', 'Monitor 24 polegadas', 3, 'Original', 1, 'Substituição de Monitor', 'Em Andamento', '2024-11-27', 'Email', 'Enviado', 'SRF/29918/2024'),
(286, 'lucas.rodrigues@example.com', 'Computador', 2, 'Original', 1, 'Requisição de Computador', 'Recusado', '2024-11-28', 'Phone', 'Não Necessário', 'SRF/29919/2024'),
(287, 'bruna.oliveira@example.com', 'Monitor 22 polegadas', 4, 'Copy', 1, 'Substituição de Monitor', 'Autorizado', '2024-11-29', 'Email', 'Enviado', 'SRF/30293/2024'),
(288, 'felipe.costa@example.com', 'Teclado', 3, 'Original', 1, 'Substituição de Teclado', 'Em Andamento', '2024-11-30', 'Phone', 'Não Necessário', 'SRF/31492/2024'),
(289, 'maria.brito@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-12-01', 'Email', 'Enviado', 'SRF/26748/2024'),
(290, 'victor.pereira@example.com', 'Rato', 2, 'Copy', 1, 'Substituição de Rato', 'Em Andamento', '2024-12-02', 'Phone', 'Não Necessário', 'SRF/29920/2024'),
(291, 'beatriz.melo@example.com', 'Equipamento completo', 1, 'Original', 1, 'Requisição de Equipamento Completo', 'Autorizado', '2024-12-03', 'Email', 'Enviado', 'SRF/29921/2024'),
(292, 'luan.souza@example.com', 'Teclado', 2, 'Original', 1, 'Substituição do Teclado', 'Recusado', '2024-12-04', 'Phone', 'Não Necessário', 'SRF/30294/2024'),
(293, 'marcio.silva@example.com', 'Computador', 1, 'Copy', 1, 'Substituição de Computador', 'Em Andamento', '2024-12-05', 'Email', 'Enviado', 'SRF/31493/2024'),
(294, 'alessandra.lima@example.com', 'Monitor', 3, 'Original', 1, 'Substituição de Monitor', 'Autorizado', '2024-12-06', 'Phone', 'Não Necessário', 'SRF/26749/2024'),
(295, 'natalia.martins@example.com', 'Rato', 4, 'Copy', 1, 'Substituição de Rato', 'Em Andamento', '2024-12-07', 'Email', 'Enviado', 'SRF/29922/2024'),
(296, 'joana.santos@example.com', 'Computador completo', 1, 'Original', 1, 'Requisição de Computador Completo', 'Recusado', '2024-12-08', 'Phone', 'Não Necessário', 'SRF/29923/2024'),
(297, 'jorge.pinto@example.com', 'Monitor 22 polegadas', 2, 'Original', 1, 'Substituição de Monitor', 'Autorizado', '2024-12-09', 'Email', 'Enviado', 'SRF/30295/2024'),
(298, 'larissa.melo@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Em Andamento', '2024-12-10', 'Phone', 'Enviado', 'SRF/31494/2024'),
(299, 'rafael.rodrigues@example.com', 'Computador', 3, 'Original', 1, 'Substituição de Computador', 'Autorizado', '2024-12-11', 'Email', 'Enviado', 'SRF/26750/2024'),
(300, 'maria.oliveira@example.com', 'Teclado', 4, 'Original', 1, 'Substituição do Teclado', 'Em Andamento', '2024-12-12', 'Phone', 'Não Necessário', 'SRF/29924/2024'),
(301, 'renata.souza@example.com', 'Rato', 2, 'Copy', 1, 'Substituição de Rato', 'Recusado', '2024-12-13', 'Email', 'Enviado', 'SRF/29925/2024'),
(302, 'antonio.costa@example.com', 'Monitor', 5, 'Original', 1, 'Substituição de Monitor', 'Em Andamento', '2024-12-14', 'Phone', 'Não Necessário', 'SRF/30296/2024'),
(303, 'gabriela.pereira@example.com', 'Computador completo', 3, 'Original', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-12-15', 'Email', 'Enviado', 'SRF/31495/2024'),
(304, 'giovanna.silva@example.com', 'Equipamento completo', 2, 'Copy', 1, 'Substituição de Equipamento Completo', 'Em Andamento', '2024-12-16', 'Phone', 'Não Necessário', 'SRF/26751/2024'),
(305, 'paulo.gomes@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-12-17', 'Email', 'Enviado', 'SRF/29926/2024'),
(306, 'mariana.rodrigues@example.com', 'Teclado', 2, 'Original', 1, 'Substituição do Teclado', 'Em Andamento', '2024-12-18', 'Phone', 'Não Necessário', 'SRF/29927/2024'),
(307, 'bruno.cunha@example.com', 'Monitor', 3, 'Copy', 1, 'Substituição de Monitor', 'Recusado', '2024-12-19', 'Email', 'Enviado', 'SRF/30297/2024'),
(308, 'eliane.souza@example.com', 'Computador', 2, 'Original', 1, 'Requisição de Computador', 'Em Andamento', '2024-12-20', 'Phone', 'Não Necessário', 'SRF/31496/2024'),
(309, 'danilo.silva@example.com', 'Computador completo', 1, 'Copy', 1, 'Requisição de Computador Completo', 'Autorizado', '2024-12-21', 'Email', 'Enviado', 'SRF/26752/2024'),
(310, 'claudia.martins@example.com', 'Monitor 22 polegadas', 4, 'Original', 1, 'Substituição de Monitor', 'Em Andamento', '2024-12-22', 'Phone', 'Não Necessário', 'SRF/29928/2024'),
(311, 'vitor.melo@example.com', 'Teclado', 2, 'Copy', 1, 'Substituição do Teclado', 'Autorizado', '2024-12-23', 'Email', 'Enviado', 'SRF/29929/2024'),
(312, 'renato.gomes@example.com', 'Rato', 3, 'Original', 1, 'Substituição de Rato', 'Em Andamento', '2024-12-24', 'Phone', 'Não Necessário', 'SRF/30298/2024'),
(313, 'tatiane.souza@example.com', 'Computador', 2, 'Original', 1, 'Requisição de Computador', 'Recusado', '2024-12-25', 'Email', 'Enviado', 'SRF/31497/2024'),
(314, 'joao.silva@example.com', 'Monitor 24 polegadas', 3, 'Copy', 1, 'Substituição de Monitor', 'Autorizado', '2024-12-26', 'Phone', 'Enviado', 'SRF/26753/2024'),
(315, 'ana.paula@example.com', 'Computador', 1, 'Original', 1, 'Requisição de Computador', 'Autorizado', '2024-12-27', 'Email', 'Não Necessário', 'SRF/29930/2024');

-- --------------------------------------------------------

--
-- Estrutura da tabela `request_funcionarios`
--

CREATE TABLE `request_funcionarios` (
  `RequestID` int(11) NOT NULL,
  `FuncionarioID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretarias`
--

CREATE TABLE `secretarias` (
  `ID_Secretaria` int(11) NOT NULL,
  `Gerente` varchar(100) DEFAULT NULL,
  `Localizacao` varchar(100) DEFAULT NULL,
  `Ativo` tinyint(1) DEFAULT 1,
  `Postal_Code` varchar(20) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Secretaria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `secretarias`
--

INSERT INTO `secretarias` (`ID_Secretaria`, `Gerente`, `Localizacao`, `Ativo`, `Postal_Code`, `City`, `Region`, `Country`, `Secretaria`) VALUES
(2, 'John Doe', 'Rua João de Deus n.º 5 Funchal', 1, '9050-027', 'Funchal', 'Madeira', 'Portugal', 'Secretaria regional de Inclusão, Trabalho e Juventude'),
(3, 'John Doe', 'Edifício do Governo Avenida Zarco Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional das Finanças'),
(4, 'John Doe', 'Rua Dr. Pestana Júnior, nº 6 - 5º Andar Funchal', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional da Agricultura, Pescas e Ambiente'),
(5, 'John Doe', 'Avenida Zarco, Edifício do Governo Regional Funchal', 1, '9004-527', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional de Educação, Ciência e Tecnologia'),
(6, 'John Doe', 'Avenida Arriaga, nº 18 Funchal ', 1, '9004-519', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional de Economia, Turismo e Cultura'),
(9, 'John Doe', 'Rua da Carreira, nº 107 Funchal', 1, '9000-042', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional de Saúde e Proteção Civil'),
(11, 'John Doe', 'Morada: Rua Dr. Pestana Júnior, nº 6  Funchal ', 1, '9064-506', 'Funchal', 'Madeira', 'Portugal', 'Secretaria Regional de Equipamentos e Infraestruturas'),
(13, 'John Doe', 'Rua da Alegria, N. 31, 2º Funchal', 1, '9000-040', 'Funchal', 'Madeira', 'Portugal', 'Unidade de Intervenção em Comportamentos Adilitivos e Dependencias');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bci_pdfs`
--
ALTER TABLE `bci_pdfs`
  ADD PRIMARY KEY (`FileID`),
  ADD KEY `RequestID` (`RequestID`);

--
-- Índices para tabela `dir_regional`
--
ALTER TABLE `dir_regional`
  ADD PRIMARY KEY (`ID_Direcao`),
  ADD KEY `ID_Departamento` (`ID_Secretaria`);

--
-- Índices para tabela `finalization_result`
--
ALTER TABLE `finalization_result`
  ADD PRIMARY KEY (`FinalizationID`),
  ADD KEY `RequestID` (`RequestID`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`ID_Funcionario`),
  ADD KEY `fk_funcionarios_direcao` (`ID_Direcao`);

--
-- Índices para tabela `necessity_evaluation`
--
ALTER TABLE `necessity_evaluation`
  ADD PRIMARY KEY (`EvaluationID`),
  ADD KEY `RequestID` (`RequestID`);

--
-- Índices para tabela `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `fk_requests_destino_direcao` (`Destino_DepartamentoID`);

--
-- Índices para tabela `request_funcionarios`
--
ALTER TABLE `request_funcionarios`
  ADD KEY `FuncionarioID` (`FuncionarioID`),
  ADD KEY `fk_request_funcionarios_requestID` (`RequestID`);

--
-- Índices para tabela `secretarias`
--
ALTER TABLE `secretarias`
  ADD PRIMARY KEY (`ID_Secretaria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bci_pdfs`
--
ALTER TABLE `bci_pdfs`
  MODIFY `FileID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dir_regional`
--
ALTER TABLE `dir_regional`
  MODIFY `ID_Direcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `finalization_result`
--
ALTER TABLE `finalization_result`
  MODIFY `FinalizationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `ID_Funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de tabela `necessity_evaluation`
--
ALTER TABLE `necessity_evaluation`
  MODIFY `EvaluationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de tabela `requests`
--
ALTER TABLE `requests`
  MODIFY `RequestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT de tabela `secretarias`
--
ALTER TABLE `secretarias`
  MODIFY `ID_Secretaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `bci_pdfs`
--
ALTER TABLE `bci_pdfs`
  ADD CONSTRAINT `bci_pdfs_ibfk_1` FOREIGN KEY (`RequestID`) REFERENCES `requests` (`RequestID`);

--
-- Limitadores para a tabela `dir_regional`
--
ALTER TABLE `dir_regional`
  ADD CONSTRAINT `dir_regional_ibfk_1` FOREIGN KEY (`ID_Secretaria`) REFERENCES `secretarias` (`ID_Secretaria`);

--
-- Limitadores para a tabela `finalization_result`
--
ALTER TABLE `finalization_result`
  ADD CONSTRAINT `finalization_result_ibfk_1` FOREIGN KEY (`RequestID`) REFERENCES `requests` (`RequestID`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_funcionarios_direcao` FOREIGN KEY (`ID_Direcao`) REFERENCES `dir_regional` (`ID_Direcao`);

--
-- Limitadores para a tabela `necessity_evaluation`
--
ALTER TABLE `necessity_evaluation`
  ADD CONSTRAINT `necessity_evaluation_ibfk_1` FOREIGN KEY (`RequestID`) REFERENCES `requests` (`RequestID`);

--
-- Limitadores para a tabela `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `fk_requests_destino_direcao` FOREIGN KEY (`Destino_DepartamentoID`) REFERENCES `dir_regional` (`ID_Direcao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `request_funcionarios`
--
ALTER TABLE `request_funcionarios`
  ADD CONSTRAINT `fk_request_funcionarios_requestID` FOREIGN KEY (`RequestID`) REFERENCES `requests` (`RequestID`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_funcionarios_ibfk_1` FOREIGN KEY (`RequestID`) REFERENCES `requests` (`RequestID`),
  ADD CONSTRAINT `request_funcionarios_ibfk_2` FOREIGN KEY (`FuncionarioID`) REFERENCES `funcionarios` (`ID_Funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
