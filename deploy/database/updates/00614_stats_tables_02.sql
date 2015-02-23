DELETE FROM dhs_button;
INSERT INTO dhs_button (dhs_button_id, dhs_button_name, bw_button_id) VALUES
(1, 'ABCGi', (SELECT id FROM button WHERE name='ABCGi')),
(2, 'Abe Caine', (SELECT id FROM button WHERE name='Abe Caine')),
(3, 'Adam Spam', (SELECT id FROM button WHERE name='Adam Spam')),
(4, 'Agatha', (SELECT id FROM button WHERE name='Agatha')),
(5, 'Al-Khwarizmi', (SELECT id FROM button WHERE name='Al-Khwarizmi')),
(6, 'albertel', (SELECT id FROM button WHERE name='albertel')),
(7, 'Aldric', (SELECT id FROM button WHERE name='Aldric')),
(8, 'Alice', (SELECT id FROM button WHERE name='Alice')),
(9, 'Alljazzedup80', (SELECT id FROM button WHERE name='Alljazzedup80')),
(10, 'Amara Wintersword', (SELECT id FROM button WHERE name='Amara Wintersword')),
(11, 'amica', (SELECT id FROM button WHERE name='amica')),
(12, 'Anders', (SELECT id FROM button WHERE name='Anders')),
(13, 'Angel', (SELECT id FROM button WHERE name='Angel')),
(14, 'Anger', (SELECT id FROM button WHERE name='Anger')),
(15, 'Angora', (SELECT id FROM button WHERE name='Angora')),
(16, 'antherem', (SELECT id FROM button WHERE name='antherem')),
(17, 'anthony', (SELECT id FROM button WHERE name='anthony')),
(18, 'Anti-Llama', (SELECT id FROM button WHERE name='Anti-Llama')),
(19, 'Anvil', (SELECT id FROM button WHERE name='Anvil')),
(20, 'Apples', (SELECT id FROM button WHERE name='Apples')),
(21, 'Assailer', (SELECT id FROM button WHERE name='Assailer')),
(22, 'Audrey', (SELECT id FROM button WHERE name='Audrey')),
(23, 'Avis', (SELECT id FROM button WHERE name='Avis')),
(24, 'Ayeka', (SELECT id FROM button WHERE name='Ayeka')),
(25, 'Aylee', (SELECT id FROM button WHERE name='Aylee')),
(26, 'Aysez', (SELECT id FROM button WHERE name='Aysez')),
(27, 'BabyBM', (SELECT id FROM button WHERE name='BabyBM')),
(28, 'Bane', (SELECT id FROM button WHERE name='Bane')),
(29, 'Bang', (SELECT id FROM button WHERE name='Bang')),
(30, 'Bar Mitzvah Boy', (SELECT id FROM button WHERE name='Bar Mitzvah Boy')),
(31, 'barswanian', (SELECT id FROM button WHERE name='barswanian')),
(32, 'Bauer', (SELECT id FROM button WHERE name='Bauer')),
(33, 'Beatnik Turtle', (SELECT id FROM button WHERE name='Beatnik Turtle')),
(34, 'Bennett', (SELECT id FROM button WHERE name='Bennett')),
(35, 'bigevildan', (SELECT id FROM button WHERE name='bigevildan')),
(36, 'Bill', (SELECT id FROM button WHERE name='Bill')),
(37, 'Binder', (SELECT id FROM button WHERE name='Binder')),
(38, 'birdman', (SELECT id FROM button WHERE name='birdman')),
(39, 'Black Jack', (SELECT id FROM button WHERE name='Twenty-One')), # recipe changed on BW
(40, 'BlackOmega', (SELECT id FROM button WHERE name='BlackOmega')),
(41, 'bluebec', (SELECT id FROM button WHERE name='bluebec')),
(42, 'Bluff', (SELECT id FROM button WHERE name='Bluff')),
(43, 'bobby 5150', (SELECT id FROM button WHERE name='bobby 5150')),
(44, 'Bodie', (SELECT id FROM button WHERE name='Bodie')),
(45, 'bonefish', (SELECT id FROM button WHERE name='bonefish')),
(46, 'Boot2daHead', (SELECT id FROM button WHERE name='Boot2daHead')),
(47, 'bowler190', (SELECT id FROM button WHERE name='bowler190')),
(48, 'braincraft', (SELECT id FROM button WHERE name='braincraft')),
(49, 'BrashTech', (SELECT id FROM button WHERE name='BrashTech')),
(50, 'Brigid', (SELECT id FROM button WHERE name='Brigid')),
(51, 'Bruno', (SELECT id FROM button WHERE name='Bruno')),
(52, 'Buck', (SELECT id FROM button WHERE name='Buck')),
(53, 'Buck Godot', (SELECT id FROM button WHERE name='Buck Godot')),
(54, 'Buddy', (SELECT id FROM button WHERE name='Buddy')),
(55, 'BugRoger', (SELECT id FROM button WHERE name='BugRoger')),
(56, 'Bull', (SELECT id FROM button WHERE name='Bull')),
(57, 'Bun-Bun', (SELECT id FROM button WHERE name='Bun-Bun')),
(58, 'Bunnies', (SELECT id FROM button WHERE name='Bunnies')),
(59, 'Bush', (SELECT id FROM button WHERE name='Bush')),
(60, 'Butthead', (SELECT id FROM button WHERE name='Butthead')),
(61, 'Button of Loathing', (SELECT id FROM button WHERE name='Button of Loathing')),
(62, 'CactusJack', (SELECT id FROM button WHERE name='CactusJack')),
(63, 'Caine', (SELECT id FROM button WHERE name='Caine')),
(64, 'Caligari', (SELECT id FROM button WHERE name='Caligari')),
(65, 'Calmon', (SELECT id FROM button WHERE name='Calmon')),
(66, 'Cammy Neko', (SELECT id FROM button WHERE name='Cammy Neko')),
(67, 'Captain Bingo', (SELECT id FROM button WHERE name='Captain Bingo')),
(68, 'Carl Friedrich Gauss', (SELECT id FROM button WHERE name='Carl Friedrich Gauss')),
(69, 'Carson', (SELECT id FROM button WHERE name='Carson')),
(70, 'Carson(p)', (SELECT id FROM button WHERE name='Carson(p)')),
(71, 'Cass', (SELECT id FROM button WHERE name='Cass')),
(72, 'Cassandra', (SELECT id FROM button WHERE name='Cassandra')),
(73, 'Cesare', (SELECT id FROM button WHERE name='Cesare')),
(74, 'CestWhat', (SELECT id FROM button WHERE name='CestWhat')),
(75, 'Chairman Kaga', (SELECT id FROM button WHERE name='Chairman Kaga')),
(76, 'Chang', (SELECT id FROM button WHERE name='Chang')),
(77, 'Changeling', (SELECT id FROM button WHERE name='Changeling')),
(78, 'Charity', (SELECT id FROM button WHERE name='Charity')),
(79, 'chase', (SELECT id FROM button WHERE name='chase')),
(80, 'Chastity', (SELECT id FROM button WHERE name='Chastity')),
(81, 'Cheathem', (SELECT id FROM button WHERE name='Cheathem')),
(82, 'Cheese Weasel', (SELECT id FROM button WHERE name='Cheese Weasel')),
(83, 'Chris', (SELECT id FROM button WHERE name='Chris')),
(84, 'Clare', (SELECT id FROM button WHERE name='Clare')),
(85, 'Coil', (SELECT id FROM button WHERE name='Coil')),
(86, 'ConMan', (SELECT id FROM button WHERE name='ConMan')),
(87, 'Conspyre', (SELECT id FROM button WHERE name='Conspyre')),
(88, 'Count Dracula', (SELECT id FROM button WHERE name='Count Dracula')),
(89, 'Coyote', (SELECT id FROM button WHERE name='Coyote')),
(90, 'Crab', (SELECT id FROM button WHERE name='Crab')),
(91, 'Crane', (SELECT id FROM button WHERE name='Crane')),
(92, 'Craps', (SELECT id FROM button WHERE name='Them Bones')), # recipe changed on BW
(93, 'Craptacualr', (SELECT id FROM button WHERE name='Craptacualr')),
(94, 'Cristofore', (SELECT id FROM button WHERE name='Cristofore')),
(95, 'Crosswords', (SELECT id FROM button WHERE name='Crosswords')),
(96, 'Crusher', (SELECT id FROM button WHERE name='Crusher')),
(97, 'Crysis', (SELECT id FROM button WHERE name='Crysis')),
(98, 'Cthulhu', (SELECT id FROM button WHERE name='Cthulhu')),
(99, 'CynCyn', (SELECT id FROM button WHERE name='CynCyn')),
(100, 'Da Pimp', (SELECT id FROM button WHERE name='Da Pimp')),
(101, 'Daisy', (SELECT id FROM button WHERE name='Daisy')),
(102, 'Darrin', (SELECT id FROM button WHERE name='Darrin')),
(103, 'Darth Maul', (SELECT id FROM button WHERE name='Darth Maul')),
(104, 'Darthcliff', (SELECT id FROM button WHERE name='Darthcliff')),
(105, 'Darwin', (SELECT id FROM button WHERE name='Darwin')),
(106, 'Death', (SELECT id FROM button WHERE name='Death')),
(107, 'Delt', (SELECT id FROM button WHERE name='Delt Rage')), # recipe changed on BW
(108, 'dexx', (SELECT id FROM button WHERE name='dexx')),
(109, 'Diamond', (SELECT id FROM button WHERE name='Prince Diamond')), # name changed on BW
(110, 'Dirgo', (SELECT id FROM button WHERE name='Dirgo')),
(111, 'Discordia', (SELECT id FROM button WHERE name='Discordia')),
(112, 'Dixie', (SELECT id FROM button WHERE name='Dixie')),
(113, 'dmm', (SELECT id FROM button WHERE name='dmm')),
(114, 'DocBlue', (SELECT id FROM button WHERE name='DocBlue')),
(115, 'Downen', (SELECT id FROM button WHERE name='Downen')),
(116, 'Dr. Clay', (SELECT id FROM button WHERE name='Dr. Clay')),
(117, 'Dr. Jekyll', (SELECT id FROM button WHERE name='Dr. Jekyll')),
(118, 'Dr. Speculo', (SELECT id FROM button WHERE name='Dr. Speculo')),
(119, 'Dracha', (SELECT id FROM button WHERE name='Dracha')),
(120, 'Dragon', (SELECT id FROM button WHERE name='Dragon')),
(121, 'Dunkirk', (SELECT id FROM button WHERE name='Dunkirk')),
(122, 'Durak666', (SELECT id FROM button WHERE name='Durak666')),
(123, 'dwelsh', (SELECT id FROM button WHERE name='dwelsh')),
(124, 'Echo', (SELECT id FROM button WHERE name='Echo')),
(125, 'echopapa', (SELECT id FROM button WHERE name='echopapa')),
(126, 'Eiko', (SELECT id FROM button WHERE name='Eiko')),
(127, 'Elihu', (SELECT id FROM button WHERE name='Elihu')),
(128, 'ElihuRoot', (SELECT id FROM button WHERE name='ElihuRoot')),
(129, 'Emerald', (SELECT id FROM button WHERE name='Emerald')),
(130, 'Envy', (SELECT id FROM button WHERE name='Envy')),
(131, 'eon', (SELECT id FROM button WHERE name='eon')),
(132, 'Evil Robot Luke', (SELECT id FROM button WHERE name='Evil Robot Luke')),
(133, 'Faith', (SELECT id FROM button WHERE name='Faith')),
(134, 'Famine', (SELECT id FROM button WHERE name='Famine')),
(135, 'Famous', (SELECT id FROM button WHERE name='Famous')),
(136, 'Fan Chung Graham', (SELECT id FROM button WHERE name='Fan Chung Graham')),
(137, 'Fanaka66', (SELECT id FROM button WHERE name='Fanaka66')),
(138, 'Farrell', (SELECT id FROM button WHERE name='Farrell')),
(139, 'fendrin', (SELECT id FROM button WHERE name='fendrin')),
(140, 'fernworthy', (SELECT id FROM button WHERE name='fernworthy')),
(141, 'Ferretboy', (SELECT id FROM button WHERE name='Ferretboy')),
(142, 'Fingle', (SELECT id FROM button WHERE name='Fingle')),
(143, 'Finngall', (SELECT id FROM button WHERE name='Finngall')),
(144, 'Flaire', (SELECT id FROM button WHERE name='Flaire')),
(145, 'flesh99', (SELECT id FROM button WHERE name='flesh99')),
(146, 'Flint', (SELECT id FROM button WHERE name='Flint')),
(147, 'fnord', (SELECT id FROM button WHERE name='fnord')),
(148, 'fog', (SELECT id FROM button WHERE name='fog')),
(149, 'Foxlady', (SELECT id FROM button WHERE name='Foxlady')),
(150, 'Frankenstein\'s Monster', (SELECT id FROM button WHERE name='Frankenstein\'s Monster')),
(151, 'Frankie', (SELECT id FROM button WHERE name='Frankie')),
(152, 'Frasquito', (SELECT id FROM button WHERE name='Frasquito')),
(153, 'FuzzFace', (SELECT id FROM button WHERE name='FuzzFace')),
(154, 'fxdirect', (SELECT id FROM button WHERE name='fxdirect')),
(155, 'Gawaine', (SELECT id FROM button WHERE name='Gawaine')),
(156, 'gbrume', (SELECT id FROM button WHERE name='gbrume')),
(157, 'ghost walker', (SELECT id FROM button WHERE name='ghost walker')),
(158, 'Giant', (SELECT id FROM button WHERE name='Giant')),
(159, 'Gil', (SELECT id FROM button WHERE name='Gil')),
(160, 'Gilly', (SELECT id FROM button WHERE name='Gilly')),
(161, 'Ginzu', (SELECT id FROM button WHERE name='Ginzu')),
(162, 'Gluttony', (SELECT id FROM button WHERE name='Gluttony')),
(163, 'gman97216', (SELECT id FROM button WHERE name='gman97216')),
(164, 'GoldenOtter', (SELECT id FROM button WHERE name='GoldenOtter')),
(165, 'Golo', (SELECT id FROM button WHERE name='Golo')),
(166, 'Gordo', (SELECT id FROM button WHERE name='Gordo')),
(167, 'Gore', (SELECT id FROM button WHERE name='Gore')),
(168, 'GorgorBey', (SELECT id FROM button WHERE name='GorgorBey')),
(169, 'Gratch', (SELECT id FROM button WHERE name='Gratch')),
(170, 'grayhawk', (SELECT id FROM button WHERE name='grayhawk')),
(171, 'GreatWolf', (SELECT id FROM button WHERE name='GreatWolf')),
(172, 'Greed', (SELECT id FROM button WHERE name='Greed')),
(173, 'Green Apple', (SELECT id FROM button WHERE name='Green Apple')),
(174, 'grend', (SELECT id FROM button WHERE name='grend')),
(175, 'Gripen', (SELECT id FROM button WHERE name='Gripen')),
(176, 'GripTiger', (SELECT id FROM button WHERE name='GripTiger')),
(177, 'Grist', (SELECT id FROM button WHERE name='Grist')),
(178, 'Grivan', (SELECT id FROM button WHERE name='Grivan')),
(179, 'Growf', (SELECT id FROM button WHERE name='Growf')),
(180, 'Grym', (SELECT id FROM button WHERE name='Grym')),
(181, 'Gryphon', (SELECT id FROM button WHERE name='Gryphon')),
(182, 'gslamm', (SELECT id FROM button WHERE name='gslamm')),
(183, 'Guenever', (SELECT id FROM button WHERE name='Guenever')),
(184, 'Guillermo', (SELECT id FROM button WHERE name='Guillermo')),
(185, 'hairlesswonder', (SELECT id FROM button WHERE name='hairlesswonder')),
(186, 'Hale', (SELECT id FROM button WHERE name='Hale')),
(187, 'Hammer', (SELECT id FROM button WHERE name='Hammer')),
(188, 'Hannah', (SELECT id FROM button WHERE name='Hannah')),
(189, 'hansolav', (SELECT id FROM button WHERE name='hansolav')),
(190, 'Harbinger', (SELECT id FROM button WHERE name='Harbinger')),
(191, 'Harry Pudding', (SELECT id FROM button WHERE name='Harry Pudding')),
(192, 'haruspex', (SELECT id FROM button WHERE name='haruspex')),
(193, 'Heath', (SELECT id FROM button WHERE name='Heath')),
(194, 'Heather', (SELECT id FROM button WHERE name='Heather')),
(195, 'Holiday', (SELECT id FROM button WHERE name='Holiday')),
(196, 'Honzo', (SELECT id FROM button WHERE name='Honzo')),
(197, 'Hooloovoo', (SELECT id FROM button WHERE name='Hooloovoo')),
(198, 'Hope', (SELECT id FROM button WHERE name='Hope')),
(199, 'Horde O Ninjas', (SELECT id FROM button WHERE name='Horde O Ninjas')),
(200, 'Howling Wolf', (SELECT id FROM button WHERE name='Howling Wolf')),
(201, 'Hrodgar', (SELECT id FROM button WHERE name='Hrodgar')),
(202, 'Iago', (SELECT id FROM button WHERE name='Iago')),
(203, 'icarus', (SELECT id FROM button WHERE name='icarus')),
(204, 'ifni', (SELECT id FROM button WHERE name='ifni')),
(205, 'Igor', (SELECT id FROM button WHERE name='Igor')),
(206, 'IIconfused', (SELECT id FROM button WHERE name='IIconfused')),
(207, 'inundator', (SELECT id FROM button WHERE name='inundator')),
(208, 'Invisible Man', (SELECT id FROM button WHERE name='Invisible Man')),
(209, 'Iron Chef Chinese', (SELECT id FROM button WHERE name='Iron Chef Chinese')),
(210, 'Iron Chef French', (SELECT id FROM button WHERE name='Iron Chef French')),
(211, 'Iron Chef Italian', (SELECT id FROM button WHERE name='Iron Chef Italian')),
(212, 'Iron Chef Japanese', (SELECT id FROM button WHERE name='Iron Chef Japanese')),
(213, 'itachi', (SELECT id FROM button WHERE name='itachi')),
(214, 'Jasyeman', (SELECT id FROM button WHERE name='Jasyeman')),
(215, 'Jedite', (SELECT id FROM button WHERE name='Jedite')),
(216, 'jeffboyardy', (SELECT id FROM button WHERE name='jeffboyardy')),
(217, 'Jellybean', (SELECT id FROM button WHERE name='Jellybean')),
(218, 'Jennie', (SELECT id FROM button WHERE name='Jennie')),
(219, 'Jenniegirl', (SELECT id FROM button WHERE name='Jenniegirl')),
(220, 'jgenzano', (SELECT id FROM button WHERE name='jgenzano')),
(221, 'Jingjing', (SELECT id FROM button WHERE name='Jingjing')),
(222, 'John Kovalic', (SELECT id FROM button WHERE name='John Kovalic')),
(223, 'Jordan', (SELECT id FROM button WHERE name='Jordan')),
(224, 'Jorgi', (SELECT id FROM button WHERE name='Jorgi')),
(225, 'Jose', (SELECT id FROM button WHERE name='Jose')),
(226, 'Jota', (SELECT id FROM button WHERE name='Jota')),
(227, 'jrbrown78', (SELECT id FROM button WHERE name='jrbrown78')),
(228, 'Judah Maccabee', (SELECT id FROM button WHERE name='Judah Maccabee')),
(229, 'juelki', (SELECT id FROM button WHERE name='juelki')),
(230, 'kaddar', (SELECT id FROM button WHERE name='kaddar')),
(231, 'Kaeriol', (SELECT id FROM button WHERE name='Kaeriol')),
(232, 'Kagato', (SELECT id FROM button WHERE name='Kagato')),
(233, 'KaijuGamer', (SELECT id FROM button WHERE name='KaijuGamer')),
(234, 'Kakita', (SELECT id FROM button WHERE name='Kakita')),
(235, 'Karl', (SELECT id FROM button WHERE name='Karl')),
(236, 'kaufman', (SELECT id FROM button WHERE name='kaufman')),
(237, 'Ken', (SELECT id FROM button WHERE name='Ken')),
(238, 'kestrel', (SELECT id FROM button WHERE name='kestrel')),
(239, 'Kiki', (SELECT id FROM button WHERE name='Kiki')),
(240, 'King Arthur', (SELECT id FROM button WHERE name='King Arthur')),
(241, 'King Endymoin', (SELECT id FROM button WHERE name='King Endymion')), # name changed on BW
(242, 'Kith', (SELECT id FROM button WHERE name='Kith')),
(243, 'Kitty Cat Seven', (SELECT id FROM button WHERE name='Kitty Cat Seven')),
(244, 'Kiyone', (SELECT id FROM button WHERE name='Kiyone')),
(245, 'Klaus', (SELECT id FROM button WHERE name='Klaus')),
(246, 'kleric', (SELECT id FROM button WHERE name='kleric')),
(247, 'Konami', (SELECT id FROM button WHERE name='Konami')),
(248, 'Krosp', (SELECT id FROM button WHERE name='Krosp')),
(249, 'Kublai', (SELECT id FROM button WHERE name='Kublai')),
(250, 'Kurosuke', (SELECT id FROM button WHERE name='Kurosuke')),
(251, 'Lab Rat', (SELECT id FROM button WHERE name='Lab Rat')),
(252, 'lackey', (SELECT id FROM button WHERE name='lackey')),
(253, 'LadyJ', (SELECT id FROM button WHERE name='LadyJ')),
(254, 'Lancelot', (SELECT id FROM button WHERE name='Lancelot')),
(255, 'Lark', (SELECT id FROM button WHERE name='Lark')),
(256, 'Lascivia', (SELECT id FROM button WHERE name='Lascivia')),
(257, 'Leonard Eugene Dickson', (SELECT id FROM button WHERE name='Leonard Eugene Dickson')),
(258, 'Limax', (SELECT id FROM button WHERE name='Limax')),
(259, 'Linnea', (SELECT id FROM button WHERE name='Linnea')),
(260, 'Lion', (SELECT id FROM button WHERE name='Lion')),
(261, 'Lisa', (SELECT id FROM button WHERE name='Lisa')),
(262, 'Lizzie', (SELECT id FROM button WHERE name='Lizzie')),
(263, 'llippen5', (SELECT id FROM button WHERE name='llippen5')),
(264, 'Loki', (SELECT id FROM button WHERE name='Loki')),
(265, 'Lola', (SELECT id FROM button WHERE name='Lola')),
(266, 'Loren', (SELECT id FROM button WHERE name='Loren')),
(267, 'Lorrie', (SELECT id FROM button WHERE name='Lorrie')),
(268, 'Luce', (SELECT id FROM button WHERE name='Luce')),
(269, 'Lucky', (SELECT id FROM button WHERE name='Lucky')),
(270, 'luke ii', (SELECT id FROM button WHERE name='luke ii')),
(271, 'Luna and Artemis', (SELECT id FROM button WHERE name='Luna & Artemis')), # name changed on BW
(272, 'lunatic', (SELECT id FROM button WHERE name='lunatic')),
(273, 'Lust', (SELECT id FROM button WHERE name='Lust')),
(274, 'Mad Hatter', (SELECT id FROM button WHERE name='Mad Hatter')),
(275, 'maga', (SELECT id FROM button WHERE name='maga')),
(276, 'Malachite', (SELECT id FROM button WHERE name='Malachite')),
(277, 'malarson', (SELECT id FROM button WHERE name='malarson')),
(278, 'Mantis', (SELECT id FROM button WHERE name='Mantis')),
(279, 'Marilyn Monroe', (SELECT id FROM button WHERE name='Marilyn Monroe')),
(280, 'Maskin', (SELECT id FROM button WHERE name='Maskin')),
(281, 'Matt', (SELECT id FROM button WHERE name='Matt')),
(282, 'Mau', (SELECT id FROM button WHERE name='Mau')),
(283, 'Max', (SELECT id FROM button WHERE name='Max')),
(284, 'MAX(p)', (SELECT id FROM button WHERE name='MAX(p)')),
(285, 'Maya', (SELECT id FROM button WHERE name='Maya')),
(286, 'McGinty', (SELECT id FROM button WHERE name='McGinty')),
(287, 'Me am Ork', (SELECT id FROM button WHERE name='Me am ORK!')), # name changed on BW
(288, 'Merlin', (SELECT id FROM button WHERE name='Merlin')),
(289, 'mgatten', (SELECT id FROM button WHERE name='mgatten')),
(290, 'Micro', (SELECT id FROM button WHERE name='Micro')),
(291, 'Mihoshi', (SELECT id FROM button WHERE name='Mihoshi')),
(292, 'Mirumoto', (SELECT id FROM button WHERE name='Mirumoto')),
(293, 'Mischa', (SELECT id FROM button WHERE name='Mischa')),
(294, 'Miser', (SELECT id FROM button WHERE name='Miser')),
(295, 'mlvanbie', (SELECT id FROM button WHERE name='mlvanbie')),
(296, 'mneme', (SELECT id FROM button WHERE name='mneme')),
(297, 'moekon', (SELECT id FROM button WHERE name='moekon')),
(298, 'Monty Brown', (SELECT id FROM button WHERE name='Monty Brown')),
(299, 'Moodster', (SELECT id FROM button WHERE name='Moodster')),
(300, 'Mordred', (SELECT id FROM button WHERE name='Mordred')),
(301, 'Morgan', (SELECT id FROM button WHERE name='Morgan')),
(302, 'Morgan Le Fay', (SELECT id FROM button WHERE name='Morgan Le Fay')),
(303, 'MothMan', (SELECT id FROM button WHERE name='MothMan')),
(304, 'moussambani', (SELECT id FROM button WHERE name='moussambani')),
(305, 'Mr. Peach', (SELECT id FROM button WHERE name='Mister Peach')), # name changed on BW
(306, 'MrWhite', (SELECT id FROM button WHERE name='MrWhite')),
(307, 'Mushu', (SELECT id FROM button WHERE name='Mushu')),
(308, 'myxozoa', (SELECT id FROM button WHERE name='myxozoa')),
(309, 'Naga', (SELECT id FROM button WHERE name='Naga')),
(310, 'nelde', (SELECT id FROM button WHERE name='nelde')),
(311, 'NeoVid', (SELECT id FROM button WHERE name='NeoVid')),
(312, 'Nephlite', (SELECT id FROM button WHERE name='Nephlite')),
(313, 'Nerni', (SELECT id FROM button WHERE name='Nerni')),
(314, 'Nethershadow', (SELECT id FROM button WHERE name='Nethershadow')),
(315, 'Ngozi', (SELECT id FROM button WHERE name='Ngozi')),
(316, 'Nickie', (SELECT id FROM button WHERE name='Nickie')),
(317, 'Nihlathak', (SELECT id FROM button WHERE name='Nihlathak')),
(318, 'Nikolai', (SELECT id FROM button WHERE name='Nikolai')),
(319, 'Niles', (SELECT id FROM button WHERE name='Niles')),
(320, 'Nimue', (SELECT id FROM button WHERE name='Nimue')),
(321, 'Noeh', (SELECT id FROM button WHERE name='Noeh')),
(322, 'NoopMan', (SELECT id FROM button WHERE name='NoopMan')),
(323, 'Notorious', (SELECT id FROM button WHERE name='Notorious')),
(324, 'O-Lass', (SELECT id FROM button WHERE name='O-Lass')),
(325, 'Oaktree', (SELECT id FROM button WHERE name='Oaktree')),
(326, 'Octavia', (SELECT id FROM button WHERE name='Octavia')),
(327, 'Ogi', (SELECT id FROM button WHERE name='Ogi')),
(328, 'Okaru', (SELECT id FROM button WHERE name='Okaru')),
(329, 'Oni', (SELECT id FROM button WHERE name='Oni')),
(330, 'opedog', (SELECT id FROM button WHERE name='opedog')),
(331, 'Pain', (SELECT id FROM button WHERE name='Pain')),
(332, 'Pappy', (SELECT id FROM button WHERE name='Pappy')),
(333, 'Patience', (SELECT id FROM button WHERE name='Patience')),
(334, 'Paul Erdos', (SELECT id FROM button WHERE name='Paul Erdos')),
(335, 'Peace', (SELECT id FROM button WHERE name='Peace')),
(336, 'Pearl', (SELECT id FROM button WHERE name='Pearl')),
(337, 'perlmunkee', (SELECT id FROM button WHERE name='perlmunkee')),
(338, 'Pestilence', (SELECT id FROM button WHERE name='Pestilence')),
(339, 'pgolo', (SELECT id FROM button WHERE name='pgolo')),
(340, 'Phil', (SELECT id FROM button WHERE name='Phil')),
(341, 'Phoenix', (SELECT id FROM button WHERE name='Phoenix')),
(342, 'Phuong', (SELECT id FROM button WHERE name='Phuong')),
(343, 'Pikathulhu', (SELECT id FROM button WHERE name='Pikathulhu')),
(344, 'Pjack', (SELECT id FROM button WHERE name='Pjack')),
(345, 'Polonius', (SELECT id FROM button WHERE name='Polonius')),
(346, 'Poly', (SELECT id FROM button WHERE name='Poly')),
(347, 'Pride', (SELECT id FROM button WHERE name='Pride')),
(348, 'Princess Serena', (SELECT id FROM button WHERE name='Princess Serena')),
(349, 'professorbooty', (SELECT id FROM button WHERE name='professorbooty')),
(350, 'Prudence', (SELECT id FROM button WHERE name='Prudence')),
(351, 'Pythagoras', (SELECT id FROM button WHERE name='Pythagoras')),
(352, 'Queen Beryl', (SELECT id FROM button WHERE name='Queen Beryl')),
(353, 'Queen Of Hearts', (SELECT id FROM button WHERE name='Queen Of Hearts')),
(354, 'Queen Serena', (SELECT id FROM button WHERE name='Queen Serenity')), # name changed on BW
(355, 'Qui-Gon Jinn', (SELECT id FROM button WHERE name='Qui-Gon Jinn')),
(356, 'RandomBM', (SELECT id FROM button WHERE name='RandomBM')),
(357, 'randomlife', (SELECT id FROM button WHERE name='randomlife')),
(358, 'Randy', (SELECT id FROM button WHERE name='Randy')),
(359, 'Raupe', (SELECT id FROM button WHERE name='Raupe')),
(360, 'RavenBlack', (SELECT id FROM button WHERE name='RavenBlack')),
(361, 'Reaver', (SELECT id FROM button WHERE name='Reaver')),
(362, 'Reggie', (SELECT id FROM button WHERE name='Reggie Rage')), # recipe changed on BW
(363, 'relsqui', (SELECT id FROM button WHERE name='relsqui')),
(364, 'Riff', (SELECT id FROM button WHERE name='Riff')),
(365, 'Rikachu', (SELECT id FROM button WHERE name='Rikachu')),
(366, 'Rini', (SELECT id FROM button WHERE name='Rini')),
(367, 'Rold', (SELECT id FROM button WHERE name='Rold Rage')), # recipe changed on BW
(368, 'Ron Graham', (SELECT id FROM button WHERE name='Ron Graham')),
(369, 'Ronin', (SELECT id FROM button WHERE name='Ronin')),
(370, 'roujin27', (SELECT id FROM button WHERE name='roujin27')),
(371, 'Rubeus', (SELECT id FROM button WHERE name='Rubeus')),
(372, 'Rumbles', (SELECT id FROM button WHERE name='Rumbles')),
(373, 'Ryo-Ohki', (SELECT id FROM button WHERE name='Ryo-Ohki')),
(374, 'Ryoko', (SELECT id FROM button WHERE name='Ryoko')),
(375, 'Sabathia', (SELECT id FROM button WHERE name='Sabathia')),
(376, 'Sadakuro', (SELECT id FROM button WHERE name='Sadakuro')),
(377, 'Sailor Jupiter', (SELECT id FROM button WHERE name='Sailor Jupiter')),
(378, 'Sailor Man', (SELECT id FROM button WHERE name='Sailor Man')),
(379, 'Sailor Mars', (SELECT id FROM button WHERE name='Sailor Mars')),
(380, 'Sailor Mercury', (SELECT id FROM button WHERE name='Sailor Mercury')),
(381, 'Sailor Moon', (SELECT id FROM button WHERE name='Sailor Moon')),
(382, 'Sailor Venus', (SELECT id FROM button WHERE name='Sailor Venus')),
(383, 'SailorMur', (SELECT id FROM button WHERE name='SailorMur')),
(384, 'sanny', (SELECT id FROM button WHERE name='sanny')),
(385, 'santiago', (SELECT id FROM button WHERE name='santiago')),
(386, 'Sapphire', (SELECT id FROM button WHERE name='Sapphire')),
(387, 'Sasami', (SELECT id FROM button WHERE name='Sasami')),
(388, 'SC(The Deuce)', (SELECT id FROM button WHERE name='SC(The Deuce)')),
(389, 'schwa', (SELECT id FROM button WHERE name='schwa')),
(390, 'Scorpion', (SELECT id FROM button WHERE name='Scorpion')),
(391, 'seeker', (SELECT id FROM button WHERE name='seeker')),
(392, 'Shadow Warriors', (SELECT id FROM button WHERE name='Shadow Warriors')),
(393, 'Shadowkeeper', (SELECT id FROM button WHERE name='Shadowkeeper')),
(394, 'Shamrock', (SELECT id FROM button WHERE name='Lady Luck')), # recipe changed on BW
(395, 'Shepherd', (SELECT id FROM button WHERE name='Shepherd')),
(396, 'Shore', (SELECT id FROM button WHERE name='Shore')),
(397, 'Simon', (SELECT id FROM button WHERE name='Simon')),
(398, 'skapheles', (SELECT id FROM button WHERE name='skapheles')),
(399, 'Skeeve', (SELECT id FROM button WHERE name='Skeeve')),
(400, 'Skomp', (SELECT id FROM button WHERE name='Skomp')),
(401, 'slamkrypare', (SELECT id FROM button WHERE name='slamkrypare')),
(402, 'Sloth', (SELECT id FROM button WHERE name='Sloth')),
(403, 'Sly', (SELECT id FROM button WHERE name='Sly')),
(404, 'smallfrogge', (SELECT id FROM button WHERE name='smallfrogge')),
(405, 'Snuff', (SELECT id FROM button WHERE name='Snuff')),
(406, 'Social Class', (SELECT id FROM button WHERE name='Social Class')),
(407, 'Socrates', (SELECT id FROM button WHERE name='Socrates')),
(408, 'Soja\'s Guardians', (SELECT id FROM button WHERE name='Soja\'s Guardians')),
(409, 'Sonia', (SELECT id FROM button WHERE name='Sonia')),
(410, 'Spencer', (SELECT id FROM button WHERE name='Spencer')),
(411, 'spindisc', (SELECT id FROM button WHERE name='spindisc')),
(412, 'Spite', (SELECT id FROM button WHERE name='Spite')),
(413, 'Spooky', (SELECT id FROM button WHERE name='Spooky')),
(414, 'Squiddhartha', (SELECT id FROM button WHERE name='Squiddhartha')),
(415, 'Starchylde', (SELECT id FROM button WHERE name='Starchylde')),
(416, 'Stark', (SELECT id FROM button WHERE name='Stark')),
(417, 'Stick', (SELECT id FROM button WHERE name='Stick')),
(418, 'stoooooooo', (SELECT id FROM button WHERE name='stoooooooo')),
(419, 'Strik', (SELECT id FROM button WHERE name='Strik')),
(420, 'Super Germ', (SELECT id FROM button WHERE name='Super Germ')),
(421, 'Sven', (SELECT id FROM button WHERE name='Little Sven')), # recipe changed on BW
(422, 'SyberCat', (SELECT id FROM button WHERE name='SyberCat')),
(423, 'Sydney', (SELECT id FROM button WHERE name='Sydney')),
(424, 'Sylvia Branham', (SELECT id FROM button WHERE name='Sylvia Branham')),
(425, 'Synthia', (SELECT id FROM button WHERE name='Synthia')),
(426, 'Talus', (SELECT id FROM button WHERE name='Talus')),
(427, 'Tamiya', (SELECT id FROM button WHERE name='Tamiya')),
(428, 'Tasslehoff B', (SELECT id FROM button WHERE name='Tasslehoff B')),
(429, 'Temperance', (SELECT id FROM button WHERE name='Temperance')),
(430, 'Tenchi', (SELECT id FROM button WHERE name='Tenchi')),
(431, 'Tess', (SELECT id FROM button WHERE name='Tess')),
(432, 'The Effster', (SELECT id FROM button WHERE name='The Effster')),
(433, 'The Fictitious Alan Clark', (SELECT id FROM button WHERE name='The Fictitious Alan Clark')),
(434, 'The Flying Squirrel', (SELECT id FROM button WHERE name='The Flying Squirrel')),
(435, 'The GM', (SELECT id FROM button WHERE name='The GM')),
(436, 'The Jabberwock', (SELECT id FROM button WHERE name='The Jabberwock')),
(437, 'The James Beast', (SELECT id FROM button WHERE name='The James Beast')),
(438, 'The Japanese Beetle', (SELECT id FROM button WHERE name='The Japanese Beetle')),
(439, 'The Tick', (SELECT id FROM button WHERE name='The Tick')),
(440, 'Theano', (SELECT id FROM button WHERE name='Theano')),
(441, 'TheFool', (SELECT id FROM button WHERE name='TheFool')),
(442, 'TheMachine', (SELECT id FROM button WHERE name='TheMachine')),
(443, 'Theophilus', (SELECT id FROM button WHERE name='Theophilus')),
(444, 'Thor', (SELECT id FROM button WHERE name='Thor')),
(445, 'Tiffany', (SELECT id FROM button WHERE name='Tiffany')),
(446, 'Tilili', (SELECT id FROM button WHERE name='Tilili')),
(447, 'Tirade', (SELECT id FROM button WHERE name='Tirade')),
(448, 'Tonase', (SELECT id FROM button WHERE name='Tonase')),
(449, 'Tony', (SELECT id FROM button WHERE name='Tony')),
(450, 'Torch', (SELECT id FROM button WHERE name='Torch')),
(451, 'Torg', (SELECT id FROM button WHERE name='Torg')),
(452, 'Totoro', (SELECT id FROM button WHERE name='Totoro')),
(453, 'trifecta', (SELECT id FROM button WHERE name='trifecta')),
(454, 'Trogdor', (SELECT id FROM button WHERE name='Trogdor')),
(455, 'Trouble', (SELECT id FROM button WHERE name='Trouble')),
(456, 'Tsusuko', (SELECT id FROM button WHERE name='Tsusuko')),
(457, 'Tuxedo Mask', (SELECT id FROM button WHERE name='Tuxedo Mask')),
(458, 'Tweedledum', (SELECT id FROM button WHERE name='Tweedledum')),
(459, 'Tweedledum+dee', (SELECT id FROM button WHERE name='Tweedledum+dee')),
(460, 'TwistedRich', (SELECT id FROM button WHERE name='TwistedRich')),
(461, 'TYFTFB', (SELECT id FROM button WHERE name='TYFTFB')),
(462, 'Tyler Durden', (SELECT id FROM button WHERE name='Tyler Durden')),
(463, 'Ulthar', (SELECT id FROM button WHERE name='Ulthar')),
(464, 'Uncle Scratchy', (SELECT id FROM button WHERE name='Uncle Scratchy')),
(465, 'UncleMilo', (SELECT id FROM button WHERE name='UncleMilo')),
(466, 'Unicorn', (SELECT id FROM button WHERE name='Unicorn')),
(467, 'Urbanmyth', (SELECT id FROM button WHERE name='Urbanmyth')),
(468, 'vhoodoo', (SELECT id FROM button WHERE name='vhoodoo')),
(469, 'Vincent', (SELECT id FROM button WHERE name='Vincent')),
(470, 'Von Pinn', (SELECT id FROM button WHERE name='Von Pinn')),
(471, 'Vysion', (SELECT id FROM button WHERE name='Vysion')),
(472, 'War', (SELECT id FROM button WHERE name='War')),
(473, 'Washu', (SELECT id FROM button WHERE name='Washu')),
(474, 'Wastenott', (SELECT id FROM button WHERE name='Wastenott')),
(475, 'weirdbal', (SELECT id FROM button WHERE name='weirdbal')),
(476, 'wembley-fraggle', (SELECT id FROM button WHERE name='wembley-fraggle')),
(477, 'Werner', (SELECT id FROM button WHERE name='Werner')),
(478, 'Weylan', (SELECT id FROM button WHERE name='Weylan')),
(479, 'White Rabbit', (SELECT id FROM button WHERE name='White Rabbit')),
(480, 'White Tiger', (SELECT id FROM button WHERE name='White Tiger')),
(481, 'Wicked Lady', (SELECT id FROM button WHERE name='Wicked Lady')),
(482, 'WildCard', (SELECT id FROM button WHERE name='WildCard')),
(483, 'Wolfman', (SELECT id FROM button WHERE name='Wolfman')),
(484, 'wranklepig', (SELECT id FROM button WHERE name='wranklepig')),
(485, 'wtrollkin', (SELECT id FROM button WHERE name='wtrollkin')),
(486, 'Wu Lan', (SELECT id FROM button WHERE name='Wu Lan')),
(487, 'Xylene', (SELECT id FROM button WHERE name='Xylene')),
(488, 'Yagharek', (SELECT id FROM button WHERE name='Yagharek')),
(489, 'yakboy', (SELECT id FROM button WHERE name='yakboy')),
(490, 'Yeti', (SELECT id FROM button WHERE name='Yeti')),
(491, 'Yseulte', (SELECT id FROM button WHERE name='Yseulte')),
(492, 'Yuranosuke', (SELECT id FROM button WHERE name='Yuranosuke')),
(493, 'Z-Don', (SELECT id FROM button WHERE name='Z-Don')),
(494, 'zaph', (SELECT id FROM button WHERE name='zaph')),
(495, 'Zegota', (SELECT id FROM button WHERE name='Zegota')),
(496, 'Zeno', (SELECT id FROM button WHERE name='Zeno')),
(497, 'Zeppo', (SELECT id FROM button WHERE name='Zeppo')),
(498, 'Zero', (SELECT id FROM button WHERE name='Zero')),
(499, 'Zoe', (SELECT id FROM button WHERE name='Zoe')),
(500, 'Zomulgustar', (SELECT id FROM button WHERE name='Zomulgustar')),
(501, 'Zophiel', (SELECT id FROM button WHERE name='Zophiel')),
(502, 'Zotmeister', (SELECT id FROM button WHERE name='Zotmeister')),
(503, 'Zoycite', (SELECT id FROM button WHERE name='Zoycite'));
