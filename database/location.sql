-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2017 at 08:40 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmmumobile`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `country` int(11) NOT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `post_box` varchar(2000) DEFAULT NULL,
  `location_id` bigint(255) NOT NULL,
  `gps` varchar(200) NOT NULL,
  `location_name` varchar(2000) NOT NULL,
  `username` varchar(22) NOT NULL,
  `location_type` int(22) NOT NULL,
  `parent_id` bigint(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`country`, `address`, `post_box`, `location_id`, `gps`, `location_name`, `username`, `location_type`, `parent_id`) VALUES
(200, 'N/A', '', 1, '-33.99835602238611, 25.670130662620068', 'University Way, Northern Enterance', 'admin', 1, NULL),
(200, 'N/A', '', 2, '-34.000013894781844, 25.669821705669165', 'South campus', 'admin', 2, 1),
(200, 'N/A', '', 3, '-34.000651680582685, 25.669873170554638', 'Embizweni', 'admin', 3, 2),
(200, 'N/A', '', 4, '-34.0004856012282, 25.669853892177343', 'Level 2', 'admin', 5, 3),
(200, 'N/A', '', 5, '-34.00048245652722, 25.66965540871024', 'Room 202', 'admin', 7, 4),
(200, 'N/A', '', 6, '-34.001032777424264, 25.66994508728385', 'North Campus ID 6', 'admin', 1, 5),
(200, 'N/A', '', 7, '-34.00246045044264, 25.66993435844779', 'North Campus', 'admin', 1, 1),
(200, 'N/A', '', 8, '-34.002724598766854, 25.669894125312567', 'North Campus', 'admin', 1, 1),
(200, 'N/A', '', 9, '-34.002730888002645, 25.66967686638236', 'North Campus', 'admin', 1, 1),
(200, 'N/A', '', 10, '-34.003350375447084, 25.669722463935614', 'North Campus, Bus Stop', 'admin', 3, 1),
(200, 'N/A', '', 11, '-34.00335911951666, 25.669464971870184', 'North Campus, ABSA Bank', 'admin', 7, 1),
(200, 'N/A', '', 12, '-34.003825207941986, 25.6697197817266', 'North Campus', 'admin', 1, 1),
(200, 'N/A', '', 13, '-34.005004416231465, 25.669888760894537', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 14, '-34.00501699436495, 25.66977074369788', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 15, '-34.00510189671737, 25.669741239398718', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 16, '-34.00506730688033, 25.6696661375463', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 17, '-34.00485033394487, 25.669738557189703', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 18, '-34.00538804846523, 25.669891443103552', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 19, '-34.005410060098185, 25.669757332652807', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 20, '-34.005661621212745, 25.669735874980688', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 21, '-34.005658476703424, 25.669625904411077', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 22, '-34.00596349356661, 25.66960444673896', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 23, '-34.00624020894837, 25.669937040656805', 'South Campus', 'admin', 10, 1),
(200, 'N/A', '', 24, '-34.005255978547574, 25.66978683695197', 'South Campus', 'admin', 10, 1),
(200, 'N/A', '', 25, '-34.00666156927518, 25.669886078685522', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 26, '-34.00659867980688, 25.669615175575018', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 27, '-34.00703576064852, 25.669684913009405', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 28, '-34.00718983897008, 25.66955080255866', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 29, '-34.0073093280882, 25.66982438787818', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 30, '-34.00760805014798, 25.66891511902213', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 31, '-34.007661505563604, 25.669247712939978', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 32, '-34.00832812321473, 25.669261123985052', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 33, '-34.00833441203558, 25.668850746005774', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 34, '-34.008308629004055, 25.669616188938676', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 35, '-34.008424247520736, 25.669790676891466', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 36, '-34.0082330321965, 25.668842372799986', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 37, '-34.008313075873, 25.67008654776805', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 38, '-34.008339757081714, 25.670496215135586', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 39, '-34.00829751183069, 25.67095898753223', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 40, '-34.00829528839585, 25.671220719461417', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 41, '-34.00852622084773, 25.671296920627356', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 42, '-34.008343845265976, 25.671629514545202', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 43, '-34.00902303510083, 25.67157855257392', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 44, '-34.00902303510083, 25.67216595634818', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 45, '-34.00901674633096, 25.67260315641761', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 46, '-34.009123655355104, 25.672742631286383', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 47, '-34.00951041334746, 25.672737266868353', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 48, '-34.00960788866113, 25.672632660716772', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 49, '-34.009598455571144, 25.672305431216955', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 50, '-34.00942551540247, 25.672085490077734', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 51, '-34.00946639220142, 25.671691205352545', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 52, '-34.00960474429791, 25.671538319438696', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 53, '-34.00961103302421, 25.67134251818061', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 54, '-34.010044954014354, 25.672053303569555', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 55, '-34.00986887040166, 25.67254414781928', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 56, '-34.00988144781466, 25.672635342925787', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 57, '-34.00996948965364, 25.672871377319098', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 58, '-34.01011412961945, 25.672863330692053', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 59, '-34.010035520972956, 25.67253878340125', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 60, '-34.01021474858081, 25.67205598577857', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 61, '-34.010211604240084, 25.672879423946142', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 62, '-34.0102556249998, 25.672495868057013', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 63, '-34.01023990330252, 25.672249104827642', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 64, '-34.01021474858081, 25.672729220241308', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 65, '-34.01018959385164, 25.67355265840888', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 66, '-34.00984057121554, 25.673466827720404', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 67, '-34.009482114041916, 25.673386361449957', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 68, '-34.00959216684392, 25.67343195900321', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 69, '-34.01013182574312, 25.674748923629522', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 70, '-34.01013555046302, 25.67604225128889', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 71, '-34.010177016484285, 25.677704717963934', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 72, '-34.01017387214214, 25.677243378013372', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 73, '-34.01016129477245, 25.676613058894873', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 74, '-34.01060779025607, 25.67856838926673', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 75, '-34.01062351188523, 25.679059233516455', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 76, '-34.0101833051682, 25.679115559905767', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 77, '-34.00947896967404, 25.677814688533545', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 78, '-34.00941922666243, 25.677530374377966', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 79, '-34.00794764868695, 25.677602794021368', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 80, '-34.006840804004256, 25.67763766273856', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 81, '-34.00601380552126, 25.677179004997015', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 82, '-34.00571448825847, 25.677217058837414', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 83, '-34.00534402518215, 25.677010025829077', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 84, '-34.00465851683014, 25.676285829395056', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 85, '-34.00410507485778, 25.676081981509924', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 86, '-34.0037717501116, 25.67528000101447', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 87, '-34.00450128936384, 25.675505306571722', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 88, '-34.00468052865221, 25.67391475662589', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 89, '-34.00399815951566, 25.67439755424857', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 90, '-34.00274346647288, 25.673735048621893', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 91, '-34.00570564433119, 25.67381551489234', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 92, '-34.00590374808174, 25.673110093921423', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 93, '-34.00599808303864, 25.67303767427802', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 94, '-34.00652635686079, 25.67306449636817', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 95, '-34.00723700574731, 25.67265948280692', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 96, '-34.00777784958721, 25.67265411838889', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 97, '-34.008126880701674, 25.67270239815116', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 98, '-34.00778099401808, 25.67315300926566', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 99, '-34.00834698967586, 25.672337617725134', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 100, '-34.008406733441845, 25.672683622688055', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 101, '-34.00901674633096, 25.671170856803656', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 102, '-34.00888153766656, 25.671125259250402', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 103, '-34.00874003999646, 25.670961644500494', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 104, '-34.00873060681011, 25.670688059180975', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 105, '-34.00888782644641, 25.670484211295843', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 106, '-34.008727462414406, 25.670492257922888', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 107, '-34.00903246825474, 25.670484211295843', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 108, '-34.00914881040003, 25.670492257922888', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 109, '-34.009318606758406, 25.670956280082464', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 110, '-34.01022732594261, 25.671734120696783', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 111, '-34.01022103726196, 25.67135324701667', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 112, '-34.01022103726196, 25.67103674635291', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 113, '-34.01023990330252, 25.67064782604575', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 114, '-34.01023047028275, 25.6702964566648', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 115, '-34.01016443911503, 25.66996654495597', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 116, '-34.010177016484285, 25.669743921607733', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 117, '-34.009906602635105, 25.66969832405448', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 118, '-34.00970536386288, 25.66943546757102', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 119, '-34.01018016082629, 25.669497158378363', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 120, '-34.010148717400874, 25.669253077358007', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 121, '-34.00965505409529, 25.669274535030127', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 122, '-34.01016129477245, 25.66871663555503', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 123, '-34.00928716301396, 25.669497158378363', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 124, '-34.00877148394355, 25.669494476169348', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 125, '-34.009015678239926, 25.67013965279716', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 126, '-34.00932695591127, 25.67062139127563', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 127, '-34.00966491323392, 25.670780706363075', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 128, '-34.00988502945099, 25.67080725887763', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 129, '-34.009896146416516, 25.671391414197956', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 130, '-34.00926247705876, 25.671376241332496', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 131, '-34.00915130650843, 25.673405612088345', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 132, '-34.008991220660256, 25.673906316648527', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 133, '-34.00889561369031, 25.673401818871866', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 134, '-34.00876220843609, 25.67414149606327', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 135, '-34.00885114529552, 25.67476737676361', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 136, '-34.00875553816788, 25.674315984016175', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 137, '-34.00934029635741, 25.674281845068776', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 138, '-34.00916020015781, 25.673974594543097', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 139, '-34.009611551640816, 25.673640791502976', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 140, '-34.00934474317232, 25.674054252086876', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 141, '-34.00950482835401, 25.673822865888496', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 142, '-34.00961822184179, 25.67384941840305', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 143, '-34.00959154103476, 25.67426667220343', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 144, '-34.009173540630144, 25.67459288881082', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 145, '-34.008848921875185, 25.675173250914895', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 146, '-34.00885336871582, 25.67493807150015', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 147, '-34.00922023226678, 25.67499876296199', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 148, '-34.009364753836536, 25.67523014916037', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 149, '-34.00891340104171, 25.675507053955016', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 150, '-34.00908460410837, 25.675643609744156', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 151, '-34.00904680605841, 25.676167073602755', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 152, '-34.008935635225704, 25.67617086681912', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 153, '-34.00919132792332, 25.676167073602755', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 154, '-34.009129072380894, 25.676288456526436', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 155, '-34.00898455041003, 25.67626949044461', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 156, '-34.00898010357626, 25.676633639215652', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 157, '-34.009137966032604, 25.676633639215652', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 158, '-34.008833357931096, 25.676762608572176', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 159, '-34.00883113451028, 25.67695606260679', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 160, '-34.00886670923635, 25.677001581203285', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 161, '-34.00891340104171, 25.677054686232395', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 162, '-34.00918465768881, 25.67705847944876', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 163, '-34.009278040924194, 25.676732262841256', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 164, '-34.009302498421256, 25.676899164361316', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 165, '-34.009244689780495, 25.676971235472365', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 166, '-34.008835581351846, 25.67737710962342', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 167, '-34.00935141339425, 25.67714193020879', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 168, '-34.00939365812097, 25.671106922970466', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 169, '-34.009784976695784, 25.671376241332496', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 170, '-34.009530458683216, 25.670483205467463', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 171, '-34.009329219019556, 25.66929766908288', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 172, '-34.00931664152473, 25.668702218681574', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 173, '-34.009558757972655, 25.66871026530862', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 174, '-34.0095650467024, 25.667913649231195', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 175, '-34.009247465269965, 25.66829452291131', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 176, '-34.00933550776625, 25.668004844337702', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 177, '-34.009165711441675, 25.66807458177209', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 178, '-34.00909339068177, 25.667556915432215', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 179, '-34.008561988426656, 25.667626652866602', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 180, '-34.008351313239274, 25.6673021055758', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 181, '-34.008244403242834, 25.66765883937478', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 182, '-34.0080620270558, 25.66744426265359', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 183, '-34.00761866262286, 25.666931960731745', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 184, '-34.008024294002716, 25.666948053985834', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 185, '-34.007901661464295, 25.666948053985834', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 186, '-34.007885939331175, 25.667272601276636', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 187, '-34.00744257397889, 25.666931960731745', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 188, '-34.007052662110716, 25.666548404842615', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 189, '-34.00866143007791, 25.667893197387457', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 190, '-34.00867086327199, 25.668703224509954', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 191, '-34.0086732714835, 25.669381823390722', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 192, '-34.00855987673387, 25.669400598853827', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 193, '-34.00855987673387, 25.669789519160986', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 194, '-34.009015678239926, 25.669558849185705', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 195, '-34.00901366326914, 25.669880462810397', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 196, '-34.008339757081714, 25.66819628700614', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 197, '-34.00863992010227, 25.66819628700614', 'South Campus', 'admin', 1, 1),
(200, 'N/A', '', 198, '-34.00915509916009, 25.671149399131536', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 199, '-34.00851364323398, 25.670446660369635', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 200, '-34.00837843376848, 25.670304503291845', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 201, '-34.00583004882377, 25.67001599818468', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 202, '-34.00580430320124, 25.673103723675013', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 203, '-34.00586719325781, 25.67255923524499', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 204, '-34.008299823515145, 25.667657162994146', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 205, '-34.00899788001863, 25.66945692524314', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 206, '-34.00899473563282, 25.673378314822912', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 207, '-34.00934251976489, 25.67335250705912', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 208, '-34.008966763073545, 25.672874561797016', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 209, '-34.00870217600331, 25.6730945683463', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 210, '-34.0087132931237, 25.67341319852096', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 211, '-34.00867994175818, 25.67383424553759', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 212, '-34.008862262396406, 25.673959421677637', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 213, '-34.00948704112651, 25.669502392447725', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 214, '-34.008464269278285, 25.66867167806356', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 215, '-34.008479833290025, 25.66800786519957', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 216, '-34.00814854156725, 25.668030624497646', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 217, '-34.008159658760114, 25.668618573034337', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 218, '-34.0089915912469, 25.677618887275457', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 219, '-34.00866882463343, 25.66973051056266', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 220, '-34.00865346910248, 25.66985229961574', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 221, '-34.00855897346626, 25.669828159734607', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 222, '-34.00856564374992, 25.669366819784045', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 223, '-34.00869237903977, 25.66935340873897', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 224, '-34.008996536015516, 25.669251359067857', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 225, '-34.009887736520454, 25.667305290699005', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 226, '-34.00981227202, 25.6677183508873', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 227, '-34.009400360439535, 25.66769689321518', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 228, '-34.0086575772284, 25.669323652982712', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 229, '-34.00866841208385, 25.669342763721943', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 230, '-34.001958818473454, 25.673224925994873', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 231, '-34.00096742700432, 25.673235654830933', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 232, '-34.00057429157478, 25.673954486846924', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 233, '-33.998836825616316, 25.672935247421265', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 234, '-33.9994328078023, 25.67328929901123', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 235, '-34.00063718550403, 25.673230290412903', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 236, '-34.00032900480569, 25.67319005727768', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 237, '-33.9996466498454, 25.6727796792984', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 238, '-33.99887304225828, 25.67227005958557', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 239, '-33.99866548780457, 25.670435428619385', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 240, '-33.99935271838969, 25.673493146896362', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 241, '-34.00593588093821, 25.6670880317688', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 242, '-34.00709928851076, 25.66706657409668', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 243, '-34.005917013941406, 25.66658914089203', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 244, '-34.005898146940396, 25.665763020515442', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 245, '-34.0070741328587, 25.665741562843323', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 246, '-34.007772199437724, 25.66616803407669', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 247, '-34.00803004239861, 25.66632628440857', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 248, '-34.008070919869276, 25.665902495384216', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 249, '-34.008070919869276, 25.665749609470367', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 250, '-34.008891583742994, 25.666248583302718', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 251, '-34.00922509597746, 25.666237203653623', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 252, '-34.009349606875865, 25.666381345875607', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 253, '-34.00934293665379, 25.666571006693857', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 254, '-34.008787082973356, 25.666407898390162', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 255, '-34.00876929559549, 25.666544454179302', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 256, '-34.008907233225074, 25.66667228937149', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 257, '-34.009246826568464, 25.66666692495346', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 258, '-34.00955811927353, 25.666345059871674', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 259, '-34.0109887932934, 25.66640406847', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 260, '-34.01055173279836, 25.666371881961823', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 261, '-34.010796990043815, 25.666374564170837', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 262, '-34.01003606140763, 25.666363835334778', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 263, '-34.00990399871849, 25.66634774208069', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 264, '-34.01039766057677, 25.666358470916748', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 265, '-34.01080013436289, 25.66626727581024', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 266, '-34.01058317607454, 25.666251182556152', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 267, '-34.010180701260076, 25.66618949174881', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 268, '-34.010124103086305, 25.66556990146637', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 269, '-34.00969961558039, 25.66542237997055', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 270, '-34.01003920575488, 25.665473341941833', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 271, '-34.00994801963768, 25.6654492020607', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 272, '-34.00985997777647, 25.665435791015625', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 273, '-34.009611573461626, 25.66614121198654', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 274, '-34.00978451325133, 25.66615730524063', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 275, '-34.00994801963768, 25.666165351867676', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 276, '-34.01011781439797, 25.66617339849472', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 277, '-34.00872705055816, 25.666969294412297', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 278, '-34.00872482713456, 25.667507931136242', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 279, '-34.00863811356874, 25.666973087628662', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 280, '-34.00877818928488, 25.666654457453888', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 281, '-33.99840240728222, 25.653101108036935', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 282, '-33.998390507044654, 25.653019573073834', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 283, '-33.99837688691668, 25.652913961093873', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 284, '-33.99831502301717, 25.653107268735766', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 285, '-33.99832073861101, 25.65313122002408', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 286, '-33.998342975568185, 25.65305745927617', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 287, '-33.99829850164801, 25.65303499577567', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 288, '-33.99833630448165, 25.65298068104312', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 289, '-33.99826208860853, 25.65293977735564', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 290, '-33.99813834322458, 25.65310580190271', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 291, '-33.99818787267056, 25.65314697800204', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 292, '-33.998196489505645, 25.653086963575333', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 293, '-33.9981597984599, 25.653073887806386', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 294, '-33.998196489505645, 25.653017226140946', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 295, '-33.998186482858365, 25.65296659944579', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 296, '-33.99824207532828, 25.65305008320138', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 297, '-33.99823457034695, 25.653090986888856', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 298, '-33.99824402106406, 25.653088975232095', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 299, '-33.99827598671705, 25.65312049118802', 'NMMU-Path-Definition-Enterance-', 'test', 1, 1),
(200, 'N/A', '', 300, '-34.011051777770135, 25.66681981086731', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 301, '-34.01101090173437, 25.667238235473633', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 302, '-34.01102033466745, 25.667868554592133', 'NMMU-Path-Definition-Enterance-', 'admin', 2, 1),
(200, 'N/A', '', 303, '-34.01102853935317, 25.668762736022472', 'NMMU-Path-Definition-Enterance-', 'admin', 2, 1),
(200, 'N/A', '', 304, '-34.001852945487464, 25.671772174537182', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 305, '-34.00147932090329, 25.671755578368902', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 306, '-34.00107994762099, 25.671747531741858', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 307, '-34.00073717692852, 25.671731438487768', 'NMMU-Path-Definition-Enterance-', 'admin', 1, 1),
(200, 'N/A', '', 308, '-34.008313075873, 25.67008654776805', 'South Campus parlkifvsdf', 'admin', 1, NULL),
(200, 'N/A', '', 309, '-34.007903546060085,25.671191727742553', 'parking 2', 'admin', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `username` (`username`),
  ADD KEY `country` (`country`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`country`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `location_ibfk_3` FOREIGN KEY (`location_type`) REFERENCES `location_type` (`location_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
