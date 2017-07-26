#
# SQL Export
# Created by Querious (1068)
# Created: July 26, 2017 at 12:00:32 AM EDT
# Encoding: Unicode (UTF-8)
#


SET @PREVIOUS_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `T32demo_mentors_mentees`;
DROP TABLE IF EXISTS `T32demo_mentors`;
DROP TABLE IF EXISTS `T32demo_mentees`;
DROP TABLE IF EXISTS `T32demo_grants`;
DROP TABLE IF EXISTS `T32demo_citation`;


CREATE TABLE `T32demo_citation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personID` varchar(15) DEFAULT NULL,
  `authorListEtAl` varchar(1200) DEFAULT NULL,
  `citation` varchar(500) DEFAULT NULL,
  `pmid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_pk` (`personID`,`pmid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;


CREATE TABLE `T32demo_grants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_personID` varchar(128) DEFAULT NULL,
  `grant_ID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE `T32demo_mentees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(128) DEFAULT NULL,
  `firstName` varchar(128) DEFAULT NULL,
  `middleName` varchar(128) DEFAULT NULL,
  `mentee_personID` varchar(128) DEFAULT NULL,
  `pastCurrent` varchar(128) DEFAULT NULL,
  `years` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


CREATE TABLE `T32demo_mentors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(128) DEFAULT NULL,
  `firstName` varchar(128) DEFAULT NULL,
  `middleName` varchar(128) DEFAULT NULL,
  `mentor_personID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE `T32demo_mentors_mentees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mentor_personID` varchar(128) DEFAULT NULL,
  `mentee_personID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;




SET FOREIGN_KEY_CHECKS = @PREVIOUS_FOREIGN_KEY_CHECKS;


SET @PREVIOUS_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;


LOCK TABLES `T32demo_citation` WRITE;
ALTER TABLE `T32demo_citation` DISABLE KEYS;
INSERT INTO `T32demo_citation` (`id`, `personID`, `authorListEtAl`, `citation`, `pmid`) VALUES 
	(1,'szc2009','{Cloonan SM}, Keating JJ, Corrigan D, O&apos;Brien JE, Kavanagh PV, Williams DC, Meegan MJ,','2010, Synthesis and in vitro toxicity of 4-MTA, its characteristic clandestine synthesis byproducts and related sulfur substituted α-alkylthioamphetamines, Bioorganic and Medicinal Chemistry, 18:4009-31, PMID:20466553.',20466553),
	(2,'szc2009','Elmes RBP, Orange KN, {Cloonan SM}, Williams DC, Gunnlaugsson T,','2011, Luminescent ruthenium(II) polypyridyl functionalized gold nanoparticles; Their DNA binding abilities and application as cellular imaging agents, Journal of the American Chemical Society, 133:15862-5, PMID:21923121.',21923121),
	(3,'szc2009','{Cloonan SM}, Drozgowska A, Fayne D, Williams DC,','2010, The antidepressants maprotiline and fluoxetine have potent selective antiproliferative effects against burkitt lymphoma independently of the norepinephrine and serotonin transporters, Leukemia and Lymphoma, 51:523-39, PMID:20141432.',20141432),
	(4,'szc2009','{Cloonan SM}, Keating JJ, Butler SG, Knox AJS, Jørgensen AM, Peters GH, et al.','2009, Synthesis and serotonin transporter activity of sulphur-substituted α-alkyl phenethylamines as a new class of anticancer agents, European Journal of Medicinal Chemistry, 44:4862-88, PMID:19717215.',19717215),
	(5,'szc2009','McNamara YM, {Cloonan SM}, Knox AJS, Keating JJ, Butler SG, Peters GH, et al.','2011, Synthesis and serotonin transporter activity of 1,3-bis(aryl)-2-nitro-1- propenes as a new class of anticancer agents, Bioorganic and Medicinal Chemistry, 19:1328-48, PMID:21227702.',21227702),
	(7,'szc2009','{Cloonan SM}, Williams DC,','2011, The antidepressants maprotiline and fluoxetine induce Type II autophagic cell death in drug-resistant Burkitt\'s lymphoma, International Journal of Cancer, 128:1712-23, PMID:20503272.',20503272),
	(8,'szc2009','Elmes RBP, Erby M, {Cloonan SM}, Quinn SJ, Williams DC, Gunnlaugsson T,','2011, Quaternarized pdppz: Synthesis, DNA-binding and biological studies of a novel dppz derivative that causes cellular death upon light irradiation, Chemical Communications, 47:686-8, PMID:21103542.',21103542),
	(24,'amc2056','Schumacker PT, Gillespie MN, Nakahira K, {Choi AMK}, Crouser ED, Piantadosi CA, Bhattacharya J,','2014, Mitochondria in lung biology and pathology: More than just a powerhouse, American Journal of Physiology - Lung Cellular and Molecular Physiology, 306:L962-74, PMID:24748601, PMCID:PMC4042189.',24748601),
	(25,'amc2056','Ryter SW, Koo JK, {Choi AMK},','2014, Molecular regulation of autophagy and its implications for metabolic diseases, Current Opinion in Clinical Nutrition and Metabolic Care, 17:329-37, PMID:24848530, PMCID:PMC4858436.',24848530),
	(26,'amc2056','Siempos II, Lam HC, Ding Y, Choi ME, {Choi AMK}, Ryter SW,','2014, Cecal ligation and puncture-induced sepsis as a model to study autophagy in mice., Journal of visualized experiments : JoVEe51066, PMID:24561344, PMCID:PMC4122027.',24561344),
	(27,'szc2009','Mulligan JM, Greene LM, {Cloonan S}, Mc Gee MM, Onnis V, Campiani G, et al.','2006, Identification of tubulin as the molecular target of proapoptotic pyrrolo-1,5-benzoxazepines, Molecular Pharmacology, 70:60-70, PMID:16571652.',16571652),
	(28,'str2020','Constantin M, Choi AJS, Cloonan SM, {Ryter SW},','2012, Therapeutic potential of heme oxygenase-1/carbon monoxide in lung disease, International Journal of Hypertension, 2012:859235, PMID:22518295, PMCID:PMC3296197.',22518295),
	(29,'str2020','{Ryter SW}, Choi AMK, Kim HP,','2014, Profibrogenic phenotype in caveolin-1 deficiency via differential regulation of STAT-1/3 proteins, Biochemistry and Cell Biology, 92:370-8, PMID:25263949.',25263949),
	(30,'str2020','Wang X, {Ryter SW}, Dai C, Tang ZL, Watkins SC, Yin XM, et al.','2003, Necrotic cell death in response to oxidant stress involves the activation of the apoptogenic caspase-8/bid pathway, Journal of Biological Chemistry, 278:29184-91, PMID:12754217.',12754217),
	(31,'str2020','Choi AJS, {Ryter SW},','2014, Inflammasomes: Molecular regulation and implications for metabolic and cognitive diseases, Molecules and Cells, 37:441-8, PMID:24850149, PMCID:PMC4086337.',24850149),
	(33,'str2020','Lam HC, Cloonan SM, Bhashyam AR, Haspel JA, Singh A, Sathirapongsasuti JF, et al.','2013, Histone deacetylase 6-mediated selective autophagy regulates copd-associated cilia dysfunction, Journal of Clinical Investigation, 123:5212-30, PMID:24200693, PMCID:PMC3859407.',24200693),
	(34,'str2020','{Ryter SW}, Koo JK, Choi AMK,','2014, Molecular regulation of autophagy and its implications for metabolic diseases, Current Opinion in Clinical Nutrition and Metabolic Care, 17:329-37, PMID:24848530, PMCID:PMC4858436.',24848530),
	(35,'str2020','{Ryter SW}, Choi AMK,','2015, Autophagy in lung disease pathogenesis and therapeutics, Redox Biology, 4:215-25, PMID:25617802.',25617802),
	(36,'str2020','Sureshbabu A, {Ryter SW}, Choi ME,','2015, Oxidative stress and autophagy: Crucial modulators of kidney injury, Redox Biology, 4:208-14, PMID:25613291.',25613291),
	(37,'str2020','Siempos II, Lam HC, Ding Y, Choi ME, Choi AMK, {Ryter SW},','2014, Cecal ligation and puncture-induced sepsis as a model to study autophagy in mice., Journal of visualized experiments : JoVEe51066, PMID:24561344, PMCID:PMC4122027.',24561344),
	(39,'jsa7002','{Ancker JS}, Shih S, Singh MP, Snyder A, Edwards A, Kaushal R, HITEC investigators ,','2011, Root causes underlying challenges to secondary use of data., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2011:57-62, PMID:22195055, PMCID:PMC3243274.',22195055),
	(40,'jsa7002','{Ancker JS}, Barrón Y, Rockoff ML, Hauser D, Pichardo M, Szerencsy A, Calman N,','2011, Use of an electronic patient portal among disadvantaged populations, Journal of General Internal Medicine, 26:1117-23, PMID:21647748, PMCID:PMC3181304.',21647748),
	(41,'jsa7002','Kandula S, {Ancker JS}, Kaufman DR, Currie LM, Zeng-Treitler Q,','2011, A new adaptive testing algorithm for shortening health literacy assessments, BMC Medical Informatics and Decision Making, 11:52, PMID:21819614, PMCID:PMC3178473.',21819614),
	(42,'jsa7002','{Ancker JS}, Silver M, Kaushal R,','2014, Rapid growth in use of personal health records in New York, 2012-2013, Journal of General Internal Medicine, 29:850-4, PMID:24519102, PMCID:PMC4026516.',24519102),
	(43,'jsa7002','Zhou Y, {Ancker JS}, Upadhye M, McGeorge NM, Guarrera TK, Hegde S, et al.','2013, The impact of interoperability of electronic health records on ambulatory physician practices: A discrete-event simulation study, Informatics in Primary Care, 21:21-9, PMID:24629653.',24629653),
	(44,'jsa7002','Campion TR, Vest JR, {Ancker JS}, Kaushal R, HITEC Investigators ,','2013, Patient encounters and care transitions in one community supported by automated query-based health information exchange., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2013:175-84, PMID:24551330, PMCID:PMC3900171.',24551330),
	(45,'jsa7002','{Ancker JS}, Osorio SN, Cheriff A, Cole CL, Silver M, Kaushal R,','2015, Patient activation and use of an electronic patient portal, Informatics for Health and Social Care, 40:254-66, PMID:24786648.',24786648),
	(46,'jsa7002','Tmanova LL, {Ancker JS}, Johnson SB,','2015, Integrating an Informationist Into Graduate Education: Case Study With Preliminary Results, Medical Reference Services Quarterly, 34:296-310, PMID:26211791.',26211791),
	(47,'jsa7002','Low AFH, Phillips AB, {Ancker JS}, Patel AR, Kern LM, Kaushal R,','2013, Financial effects of health information technology: a systematic review, The American journal of managed care, 19:SP369-76, PMID:24511891.',24511891),
	(48,'jsa7002','Vest JR, Kern LM, Abramson E, {Ancker JS}, Kaushal R,','2014, Effect of a state-based incentive programme on the use of electronic health records, Journal of Evaluation in Clinical Practice, 20:657-63, PMID:24943902.',24943902),
	(49,'jsa7002','{Ancker JS}, Kern LM, Edwards A, Nosal S, Stein DM, Hauser D, Kaushal R,','2014, How is the electronic health record being used? Use of EHR data to assess physician-level variability in technology use, Journal of the American Medical Informatics Association : JAMIA, 21:1001-8, PMID:24914013, PMCID:PMC4215048.',24914013),
	(50,'jsa7002','{Ancker JS}, Kern LM, Edwards A, Nosal S, Stein DM, Hauser D, Kaushal R,','2015, Associations between healthcare quality and use of electronic health record functions in ambulatory care, Journal of the American Medical Informatics Association, 22:864-71, PMID:25896648.',25896648),
	(52,'jsa7002','Vest JR, Kern LM, Jung HY, {Ancker JS}, Richardson JE, Silver MD, Kaushal R,','2015, Patient-Centered Medical Homes: Observable Types Derived from National Recognition Assessment Scores, Journal of Ambulatory Care Management, 38:144-52, PMID:25748263.',25748263),
	(53,'jsa7002','{Ancker JS}, Witteman HO, Hafeez B, Provencher T, Van De Graaf M, Wei E,','2015, The invisible work of personal health information management among people with multiple chronic conditions: Qualitative interview study among patients and providers, Journal of Medical Internet Research, 17:e137, PMID:26043709, PMCID:PMC4526906.',26043709),
	(54,'jsa7002','{Ancker JS}, Witteman HO, Hafeez B, Provencher T, Van De Graaf M, Wei E,','2015, "You get reminded you\'re a sick person": Personal data tracking and patients with multiple chronic conditions, Journal of Medical Internet Research, 17:e202, PMID:26290186, PMCID:PMC4642375.',26290186),
	(62,'johnsos','Hyun S, Shapiro JS, Melton G, Schlegel C, Stetson PD, {Johnson SB}, Bakken S,','2009, Iterative Evaluation of the Health Level 7-Logical Observation Identifiers Names and Codes Clinical Document Ontology for Representing Clinical Document Names: A Case Report, Journal of the American Medical Informatics Association, 16:395-9, PMID:19261945, PMCID:PMC2732231.',19261945),
	(73,'johnsos','Chase HS, Kaufman DR, {Johnson SB}, Mendonca EA,','2009, Voice Capture of Medical Residents\' Clinical Information Needs During an Inpatient Rotation, Journal of the American Medical Informatics Association, 16:387-94, PMID:19261939, PMCID:PMC2732238.',19261939),
	(76,'johnsos','Hyun S, {Johnson SB}, Bakken S,','2009, Exploring the ability of natural language processing to extract data from nursing narratives, CIN - Computers Informatics Nursing, 27:215-23; quiz 224-5, PMID:19574746, PMCID:PMC4415266.',19574746),
	(82,'johnsos','Bernstam EV, Hersh WR, {Johnson SB}, Chute CG, Nguyen H, Sim I, et al.','2009, Synergies and Distinctions between Computational Disciplines in Biomedical Research: Perspective from the Clinical and Translational Science Award Programs, Academic Medicine, 84:964-70, PMID:19550198, PMCID:PMC2884382.',19550198),
	(118,'meb7002','{Bales ME}, Lussier YA, Johnson SB,','2007, Topological Analysis of Large-scale Biomedical Terminology Structures, Journal of the American Medical Informatics Association, 14:788-97, PMID:17712094, PMCID:PMC2213477.',17712094),
	(119,'meb7002','{Bales ME}, Johnson SB, Keeling JW, Carley KM, Kunkel F, Merrill JA,','2011, Evolution of coauthorship in public health services and systems research, American Journal of Preventive Medicine, 41:112-7, PMID:21665073, PMCID:PMC3677523.',21665073),
	(120,'meb7002','{Bales ME}, Johnson SB,','2006, Graph theoretic modeling of large-scale semantic networks, Journal of Biomedical Informatics, 39:451-64, PMID:16442849.',16442849),
	(121,'meb7002','{Bales ME}, Kaufman DR, Johnson SB,','2009, Evaluation of a prototype search and visualization system for exploring scientific communities., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2009:24-8, PMID:20351816, PMCID:PMC2815483.',20351816),
	(122,'meb7002','{Bales ME}, Dine DC, Merrill JA, Johnson SB, Bakken S, Weng C,','2014, Associating co-authorship patterns with publications in high-impact journals, Journal of Biomedical Informatics, 52:311-8, PMID:25046832, PMCID:PMC4260991.',25046832),
	(123,'meb7002','{Bales ME}, Kukafka R, Burkhardt A, Friedman C,','2006, Qualitative assessment of the International Classification of Functioning, Disability, and Health with respect to the desiderata for controlled medical vocabularies, International Journal of Medical Informatics, 75:384-95, PMID:16122973.',16122973),
	(124,'meb7002','Weng C, Gallagher D, {Bales ME}, Bakken S, Ginsberg HN,','2008, Understanding interdisciplinary health sciences collaborations: a campus-wide survey of obesity experts., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium798-802, PMID:18999235, PMCID:PMC2656079.',18999235),
	(126,'meb7002','Kukafka R, {Bales ME}, Burkhardt A, Friedman C,','2006, Human and Automated Coding of Rehabilitation Discharge Summaries According to the International Classification of Functioning, Disability, and Health, Journal of the American Medical Informatics Association, 13:508-15, PMID:16799117, PMCID:PMC1561799.',16799117),
	(130,'johnsos','Kukafka R, Allegrante JP, Khan S, Bigger JT, {Johnson SB},','2013, Understanding facilitators and barriers to reengineering the clinical research enterprise in community-based practice settings, Contemporary Clinical Trials, 36:166-74, PMID:23806363.',23806363),
	(134,'meb7002','{Bales M}, Johnson SB, Weng C,','2008, Social network analysis of interdisciplinarity in obesity research., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium870, PMID:18999104.',18999104),
	(135,'meb7002','{Bales M}, Kukafka R, Burkhardt A, Friedman C,','2005, Extending a medical language processing system to the functional status domain., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium888, PMID:16779175, PMCID:PMC1560823.',16779175),
	(136,'kin2007','Schumacker PT, Gillespie MN, {Nakahira K}, Choi AMK, Crouser ED, Piantadosi CA, Bhattacharya J,','2014, Mitochondria in lung biology and pathology: More than just a powerhouse, American Journal of Physiology - Lung Cellular and Molecular Physiology, 306:L962-74, PMID:24748601, PMCID:PMC4042189.',24748601),
	(137,'amc2056','Ryter SW, {Choi AMK}, Kim HP,','2014, Profibrogenic phenotype in caveolin-1 deficiency via differential regulation of STAT-1/3 proteins, Biochemistry and Cell Biology, 92:370-8, PMID:25263949.',25263949),
	(138,'amc2056','Ryter SW, {Choi AMK},','2015, Autophagy in lung disease pathogenesis and therapeutics, Redox Biology, 4:215-25, PMID:25617802.',25617802),
	(153,'str2020','Spassov S, Pfeifer D, Strosing K, {Ryter S}, Hummel M, Faller S, Hoetzel A,','2014, Genetic targets of hydrogen sulfide in ventilator-induced lung injury - A microarray study, PLoS ONE, 9:e102401, PMID:25025333, PMCID:PMC4099342.',25025333),
	(154,'thc2015','Kaushal R, Hripcsak G, Ascheim DD, Bloom T, {Campion TR}, Caplan AL, et al.','2014, Changing the research landscape: The New York City clinical data research network, Journal of the American Medical Informatics Association, 21:587-90, PMID:24821739, PMCID:PMC4078297.',24821739),
	(155,'thc2015','{Campion TR}, Ancker JS, Edwards AM, Patel VN, Kaushal R, HITEC Investigators ,','2012, Push and pull: physician usage of and satisfaction with health information exchange., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2012:77-84, PMID:23304275, PMCID:PMC3540571.',23304275),
	(156,'thc2015','Vest JR, {Campion TR}, Kaushal R,','2013, Challenges, alternatives, and paths to sustainability for health information exchange efforts, Journal of Medical Systems, 37:9987, PMID:24141531.',24141531),
	(157,'thc2015','{Campion TR}, Johnson SB, Paxton EW, Mushlin AI, Sedrakyan A,','2014, Implementing unique device identification in electronic health record systems: Organizational, workflow, and technological challenges, Medical Care, 52:26-31, PMID:24322986.',24322986),
	(159,'thc2015','{Campion TR}, Vest JR, Ancker JS, Kaushal R, HITEC Investigators ,','2013, Patient encounters and care transitions in one community supported by automated query-based health information exchange., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2013:175-84, PMID:24551330, PMCID:PMC3900171.',24551330),
	(160,'thc2015','Vest JR, Grinspan ZM, Kern LM, {Campion TR}, Kaushal R, HITEC Investigators ,','2013, Using a health information exchange system for imaging information: patterns and predictors., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2013:1402-11, PMID:24551416, PMCID:PMC3900154.',24551416),
	(162,'szc2009','Nakahira K, {Cloonan SM}, Mizumura K, Choi AMK, Ryter SW,','2014, Autophagy: A crucial moderator of redox balance, inflammation, and apoptosis in lung disease, Antioxidants and Redox Signaling, 20:474-94, PMID:23879400, PMCID:PMC3894710.',23879400),
	(163,'szc2009','Lam HC, {Cloonan SM}, Bhashyam AR, Haspel JA, Singh A, Sathirapongsasuti JF, et al.','2013, Histone deacetylase 6-mediated selective autophagy regulates copd-associated cilia dysfunction, Journal of Clinical Investigation, 123:5212-30, PMID:24200693, PMCID:PMC3859407.',24200693),
	(164,'jiy2013','Roper J, Sinnamon MJ, Coffee EM, Belmont P, Keung L, Georgeon-Richard L, Wang WV, Faber AC, {Yun J}, Yilmaz OH, Bronson RT, Martin ES, Tsichlis PN, Hung KE,','2014, Combination PI3K/MEK inhibition promotes tumor apoptosis and regression in PIK3CA wild-type, KRAS mutant colorectal cancer, Cancer Letters, 347:204-11, PMID:24576621, PMCID:PMC4118771.',24576621),
	(165,'thc2015','Vest JR, Kern LM, {Campion TR}, Silver MD, Kaushal R,','2014, Association between use of a health information exchange system and hospital admissions, Applied Clinical Informatics, 5:219-31, PMID:24734135, PMCID:PMC3974257.',24734135),
	(166,'amc2056','Siempos II, Ntaidou TK, Filippidis FT, {Choi AMK},','2015, Effect of early versus late or no tracheostomy on mortality and pneumonia of critically ill patients receiving mechanical ventilation: A systematic review and meta-analysis, The Lancet Respiratory Medicine, 3:150-8, PMID:25680911.',25680911),
	(167,'amc2056','Patel AS, Song JW, Chu SG, Mizumura K, Osorio JC, Shi Y, et al.','2015, Epithelial cell mitochondrial dysfunction and PINK1 are induced by transforming growth factor- beta1 in pulmonary fibrosis, PLoS ONE, 10:e0121246, PMID:25785991, PMCID:PMC4364993.',25785991),
	(181,'johnsos','Bales ME, Kaufman DR, {Johnson SB},','2009, Evaluation of a prototype search and visualization system for exploring scientific communities., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2009:24-8, PMID:20351816, PMCID:PMC2815483.',20351816),
	(184,'johnsos','Bales ME, {Johnson SB}, Keeling JW, Carley KM, Kunkel F, Merrill JA,','2011, Evolution of coauthorship in public health services and systems research, American Journal of Preventive Medicine, 41:112-7, PMID:21665073, PMCID:PMC3677523.',21665073),
	(186,'johnsos','{Johnson SB}, Whitney G, McAuliffe M, Wang H, McCreedy E, Rozenblit L, Evans CC,','2010, Using global unique identifiers to link autism collections, Journal of the American Medical Informatics Association, 17:689-95, PMID:20962132, PMCID:PMC3000750.',20962132),
	(187,'thc2015','{Campion TR}, Edwards AM, Johnson SB, Kaushal R,','2013, Health information exchange system usage patterns in three communities: Practice sites, users, patients, and data, International Journal of Medical Informatics, 82:810-20, PMID:23743323.',23743323),
	(188,'johnsos','Bales ME, Dine DC, Merrill JA, {Johnson SB}, Bakken S, Weng C,','2014, Associating co-authorship patterns with publications in high-impact journals, Journal of Biomedical Informatics, 52:311-8, PMID:25046832, PMCID:PMC4260991.',25046832),
	(189,'johnsos','{Johnson SB}, Bales ME, Dine D, Bakken S, Albert PJ, Weng C,','2014, Automatic generation of investigator bibliographies for institutional research networking systems, Journal of Biomedical Informatics, 51:8-14, PMID:24694772, PMCID:PMC4180817.',24694772),
	(191,'johnsos','Campion TR, Edwards AM, {Johnson SB}, Kaushal R,','2013, Health information exchange system usage patterns in three communities: Practice sites, users, patients, and data, International Journal of Medical Informatics, 82:810-20, PMID:23743323.',23743323),
	(192,'johnsos','Campion TR, {Johnson SB}, Paxton EW, Mushlin AI, Sedrakyan A,','2014, Implementing unique device identification in electronic health record systems: Organizational, workflow, and technological challenges, Medical Care, 52:26-31, PMID:24322986.',24322986),
	(193,'johnsos','Shivade C, Raghavan P, Fosler-Lussier E, Embi PJ, Elhadad N, {Johnson SB}, Lai AM,','2014, A review of approaches to identifying patient phenotype cohorts using electronic health records, Journal of the American Medical Informatics Association, 21:221-30, PMID:24201027, PMCID:PMC3932460.',24201027),
	(195,'johnsos','Roman LC, Ancker JS, {Johnson SB}, Senathirajah Y,','2017, Navigation in the electronic health record: A review of the safety and usability literature, Journal of Biomedical Informatics, 67:69-79, PMID:28088527.',28088527),
	(200,'meb7002','Johnson SB, {Bales ME}, Dine D, Bakken S, Albert PJ, Weng C,','2014, Automatic generation of investigator bibliographies for institutional research networking systems, Journal of Biomedical Informatics, 51:8-14, PMID:24694772, PMCID:PMC4180817.',24694772),
	(209,'amc2056','Chen ZH, Cao JF, Zhou JS, Liu H, Che LQ, Mizumura K, Li W, {Choi AMK}, Shen HH,','2014, Interaction of caveolin-1 with ATG12-ATG5 system suppresses autophagy in lung epithelial cells, American Journal of Physiology - Lung Cellular and Molecular Physiology, 306:L1016-25, PMID:24727585, PMCID:PMC4747911.',24727585),
	(252,'kin2007','{Nakahira K}, Choi AMK,','2013, Autophagy: A potential therapeutic target in lung diseases, American Journal of Physiology - Lung Cellular and Molecular Physiology, 305:L93-107, PMID:23709618, PMCID:PMC3726950.',23709618),
	(253,'kin2007','Ryter SW, {Nakahira K}, Haspel JA, Choi AMK,','2012, Autophagy in pulmonary diseases, Annual Review of Physiology, 74:377-401, PMID:22035347.',22035347),
	(255,'kin2007','Lee SJ, Ryter SW, Xu JF, {Nakahira K}, Kim HP, Choi AMK, Kim YS,','2011, Carbon monoxide activates autophagy via mitochondrial reactive oxygen species formation, American Journal of Respiratory Cell and Molecular Biology, 45:867-73, PMID:21441382, PMCID:PMC3208612.',21441382),
	(257,'kin2007','Dolinay T, Kim YS, Howrylak J, Hunninghake GM, An CH, Fredenburgh L, Massaro AF, Rogers A, Gazourian L, {Nakahira K}, Haspel JA, Landazury R, Eppanapally S, Christie JD, Meyer NJ, Ware LB, Christiani DC, Ryter SW, Baron RM, Choi AMK,','2012, Inflammasome-regulated cytokines are critical mediators of acute lung injury, American Journal of Respiratory and Critical Care Medicine, 185:1225-34, PMID:22461369, PMCID:PMC3373064.',22461369),
	(258,'kin2007','{Nakahira K}, Haspel JA, Rathinam VAK, Lee SJ, Dolinay T, Lam HC, et al.','2011, Autophagy proteins regulate innate immune responses by inhibiting the release of mitochondrial DNA mediated by the NALP3 inflammasome, Nature Immunology, 12:222-30, PMID:21151103, PMCID:PMC3079381.',21151103),
	(259,'str2020','{Ryter SW}, Choi AMK,','2010, Heme oxygenase-1/carbon monoxide: Novel therapeutic strategies in critical care medicine, Current Drug Targets, 11:1485-94, PMID:20704552.',20704552),
	(260,'str2020','Choi AMK, {Ryter SW}, Levine B,','2013, Mechanisms of disease: Autophagy in human health and disease, New England Journal of Medicine, 368:651-62, PMID:23406030.',23406030),
	(261,'str2020','{Ryter SW}, Choi AMK,','2009, Heme oxygenase-1/carbon monoxide: From metabolism to molecular therapy, American Journal of Respiratory Cell and Molecular Biology, 41:251-60, PMID:19617398, PMCID:PMC2742746.',19617398),
	(262,'str2020','{Ryter SW}, Lee SJ, Smith A, Choi AMK,','2010, Autophagy in vascular disease, Proceedings of the American Thoracic Society, 7:40-7, PMID:20160147, PMCID:PMC3137148.',20160147),
	(265,'str2020','{Ryter SW}, Cloonan SM, Choi AMK,','2013, Autophagy: A critical regulator of cellular metabolism and homeostasis, Molecules and Cells, 36:7-16, PMID:23708729, PMCID:PMC3887921.',23708729),
	(266,'str2020','Hong PK, Wang X, Chen ZH, Lee SJ, Huang MH, Wang Y, {Ryter SW}, Choi AMK,','2008, Autophagic proteins regulate cigarette smoke-induced apoptosis:Protective role of heme oxygenase-1, Autophagy, 4:887-95, PMID:18769149.',18769149),
	(268,'str2020','{Ryter SW}, Choi AMK,','2011, Gaseous therapeutics in acute lung injury, Comprehensive Physiology, 1:105-21, PMID:23737181.',23737181),
	(269,'str2020','Mitchell LA, Channell MM, Royer CM, {Ryter SW}, Choi AMK, McDonald JD,','2010, Evaluation of inhaled carbon monoxide as an anti-inflammatory therapy in a nonhuman primate model of lung inflammation, American Journal of Physiology - Lung Cellular and Molecular Physiology, 299:L891-7, PMID:20729385.',20729385),
	(271,'str2020','{Ryter SW}, Choi AMK,','2010, Autophagy in the lung, Proceedings of the American Thoracic Society, 7:13-21, PMID:20160144, PMCID:PMC3137145.',20160144),
	(272,'str2020','Lee SJ, Smith A, Guo L, Alastalo TP, Li M, Sawada H, et al.','2011, Autophagic protein LC3B confers resistance against hypoxia-induced pulmonary hypertension, American Journal of Respiratory and Critical Care Medicine, 183:649-58, PMID:20889906, PMCID:PMC3081281.',20889906),
	(273,'str2020','Lam HC, Choi AMK, {Ryter SW},','2011, Isolation of mouse respiratory epithelial cells and exposure to experimental cigarette smoke at air liquid interface, Journal of Visualized Experiments, PMID:21372793, PMCID:PMC3197407.',21372793),
	(274,'str2020','{Ryter SW}, Nakahira K, Haspel JA, Choi AMK,','2012, Autophagy in pulmonary diseases, Annual Review of Physiology, 74:377-401, PMID:22035347.',22035347),
	(275,'str2020','Chen ZH, Lam HC, Jin Y, Kim HP, Cao J, Lee SJ, Ifedigbo E, Parameswaran H, {Ryter SW}, Choi AMK,','2010, Autophagy protein microtubule-associated protein 1 light chain-3B (LC3B) activates extrinsic apoptosis during cigarette smoke-induced emphysema, Proceedings of the National Academy of Sciences of the United States of America, 107:18880-5, PMID:20956295, PMCID:PMC2973911.',20956295),
	(277,'str2020','An CH, Wang XM, Lam HC, Ifedigbo E, Washko GR, {Ryter SW}, Choi AMK,','2012, TLR4 deficiency promotes autophagy during cigarette smoke-induced pulmonary emphysema, American Journal of Physiology - Lung Cellular and Molecular Physiology, 303:L748-57, PMID:22983353, PMCID:PMC3517684.',22983353),
	(278,'str2020','Tanaka A, Jin Y, Lee SJ, Zhang M, Kim HP, Stolz DB, {Ryter SW}, Choi AMK,','2012, Hyperoxia-induced LC3B interacts with the Fas apoptotic pathway in epithelial cell death, American Journal of Respiratory Cell and Molecular Biology, 46:507-14, PMID:22095627, PMCID:PMC3359946.',22095627),
	(279,'str2020','Lee SJ, {Ryter SW}, Xu JF, Nakahira K, Kim HP, Choi AMK, Kim YS,','2011, Carbon monoxide activates autophagy via mitochondrial reactive oxygen species formation, American Journal of Respiratory Cell and Molecular Biology, 45:867-73, PMID:21441382, PMCID:PMC3208612.',21441382),
	(280,'str2020','Faller S, {Ryter SW}, Choi AMK, Loop T, Schmidt R, Hoetzel A,','2010, Inhaled hydrogen sulfide protects against ventilator-induced lung injury, Anesthesiology, 113:104-15, PMID:20574227.',20574227),
	(282,'str2020','{Ryter SW}, Lee SJ, Choi AMK,','2010, Autophagy in cigarette smoke-induced chronic obstructive pulmonary disease, Expert Review of Respiratory Medicine, 4:573-84, PMID:20923337, PMCID:PMC3081520.',20923337),
	(283,'str2020','Morse D, Lin L, Choi AMK, {Ryter SW},','2009, Heme oxygenase-1, a critical arbitrator of cell death pathways in lung injury and disease, Free Radical Biology and Medicine, 47:1-12, PMID:19362144, PMCID:PMC3078523.',19362144),
	(284,'str2020','Dolinay T, Kim YS, Howrylak J, Hunninghake GM, An CH, Fredenburgh L, et al.','2012, Inflammasome-regulated cytokines are critical mediators of acute lung injury, American Journal of Respiratory and Critical Care Medicine, 185:1225-34, PMID:22461369, PMCID:PMC3373064.',22461369),
	(285,'str2020','Nakahira K, Haspel JA, Rathinam VAK, Lee SJ, Dolinay T, Lam HC, et al.','2011, Autophagy proteins regulate innate immune responses by inhibiting the release of mitochondrial DNA mediated by the NALP3 inflammasome, Nature Immunology, 12:222-30, PMID:21151103, PMCID:PMC3079381.',21151103),
	(286,'kin2007','Diebold I, Hennigs JK, Miyagawa K, Li CG, Nickel NP, Kaschwich M, et al.','2015, BMPR2 preserves mitochondrial function and DNA during reoxygenation to promote endothelial cell survival and reverse pulmonary hypertension, Cell Metabolism, 21:596-608, PMID:25863249, PMCID:PMC4394191.',25863249),
	(287,'str2020','Mizumura K, Cloonan SM, Nakahira K, Bhashyam AR, Cervo M, Kitada T, et al.','2014, Mitophagy-dependent necroptosis contributes to the pathogenesis of COPD, Journal of Clinical Investigation, 124:3987-4003, PMID:25083992, PMCID:PMC4151233.',25083992),
	(288,'str2020','Kim S, Joe Y, Kim HJ, Kim YS, Jeong SO, Pae HO, Ryter SW, {Surh YJ}, Chung HT,','2015, Endoplasmic reticulum stress - Induced IRE1α activation mediates cross-talk of GSK-3β and XBP-1 to regulate inflammatory cytokine production, Journal of Immunology, 194:4498-506, PMID:25821218, PMCID:PMC4400814.',25821218),
	(289,'str2020','Kim HJ, Joe Y, Yu JK, Chen Y, Jeong SO, Mani N, Cho GJ, Pae HO, {Ryter SW}, Chung HT,','2015, Carbon monoxide protects against hepatic ischemia/reperfusion injury by modulating the miR-34a/SIRT1 pathway, Biochimica et Biophysica Acta - Molecular Basis of Disease, 1852:1550-9, PMID:25916635.',25916635),
	(290,'str2020','Uddin MJ, Joe Y, Kim SK, Jeong SO, {Ryter SW}, Pae HO, Chung HT,','2016, IRG1 induced by heme oxygenase-1/carbon monoxide inhibits LPS-mediated sepsis and pro-inflammatory cytokine production, Cellular and Molecular Immunology, 13:170-9, PMID:25640654.',25640654),
	(291,'str2020','Mizumura K, Cloonan S, Choi ME, Hashimoto S, Nakahira K, {Ryter SW}, Choi AMK,','2016, Autophagy: Friend or foe in lung disease?, Annals of the American Thoracic Society, 13:S40-7, PMID:27027951.',27027951),
	(292,'amc2056','Jeon JY, Lee H, Park J, Lee M, Park SW, Kim JS, Cho B, Kim K, Choi AMK, {Kim CK}, Yun M,','2015, The regulation of glucose-6-phosphatase and phosphoenolpyruvate carboxykinase by autophagy in low-glycolytic hepatocellular carcinoma cells, Biochemical and Biophysical Research Communications, 463:440-6, PMID:26036577.',26036577),
	(294,'kin2007','Lee S, Lee SJ, Coronata AA, Fredenburgh LE, Chung SW, Perrella MA, {Nakahira K}, Ryter SW, Choi AMK,','2014, Carbon monoxide confers protection in sepsis by enhancing Beclin 1-dependent autophagy and phagocytosis, Antioxidants and Redox Signaling, 20:432-42, PMID:23971531, PMCID:PMC3894711.',23971531),
	(295,'kin2007','Xu JF, Washko GR, {Nakahira K}, Hatabu H, Patel AS, Fernandez IE, et al.','2012, Statins and pulmonary fibrosis the potential role of NLRP3 inflammasome activation, American Journal of Respiratory and Critical Care Medicine, 185:547-56, PMID:22246178, PMCID:PMC3297101.',22246178),
	(297,'str2020','Lee S, Lee SJ, Coronata AA, Fredenburgh LE, Chung SW, Perrella MA, Nakahira K, {Ryter SW}, Choi AMK,','2014, Carbon monoxide confers protection in sepsis by enhancing Beclin 1-dependent autophagy and phagocytosis, Antioxidants and Redox Signaling, 20:432-42, PMID:23971531, PMCID:PMC3894711.',23971531),
	(298,'str2020','Contreras AU, Mebratu Y, Delgado M, Montano G, Hu CaA, {Ryter SW}, et al.','2013, Deacetylation of p53 induces autophagy by suppressing bmf expression, Journal of Cell Biology, 201:427-37, PMID:23629966, PMCID:PMC3639396.',23629966),
	(299,'str2020','Xu JF, Washko GR, Nakahira K, Hatabu H, Patel AS, Fernandez IE, et al.','2012, Statins and pulmonary fibrosis the potential role of NLRP3 inflammasome activation, American Journal of Respiratory and Critical Care Medicine, 185:547-56, PMID:22246178, PMCID:PMC3297101.',22246178),
	(300,'str2020','{Ryter SW}, Choi AMK,','2013, Carbon monoxide in exhaled breath testing and therapeutics, Journal of Breath Research, 7:017111, PMID:23446063, PMCID:PMC3651886.',23446063),
	(301,'str2020','{Ryter SW}, Choi AMK,','2013, Carbon monoxide: Present and future indications for a medical gas, Korean Journal of Internal Medicine, 28:123-40, PMID:23525151, PMCID:PMC3604600.',23525151),
	(302,'szc2009','{Cloonan SM}, Choi AMK,','2013, Mitochondria: Sensors and mediators of innate immune receptor signaling, Current Opinion in Microbiology, 16:327-38, PMID:23757367.',23757367),
	(303,'szc2009','Mizumura K, {Cloonan SM}, Haspel JA, Choi AMK,','2012, The emerging importance of autophagy in pulmonary diseases, Chest, 142:1289-99, PMID:23131937, PMCID:PMC3494477.',23131937),
	(304,'szc2009','{Cloonan SM}, Choi AMK,','2012, Mitochondria: Commanders of innate immunity and disease?, Current Opinion in Immunology, 24:32-40, PMID:22138315.',22138315),
	(305,'szc2009','Constantin M, Choi AJS, {Cloonan SM}, Ryter SW,','2012, Therapeutic potential of heme oxygenase-1/carbon monoxide in lung disease, International Journal of Hypertension, 2012:859235, PMID:22518295, PMCID:PMC3296197.',22518295),
	(306,'szc2009','Breen JM, Clérac R, Zhang L, {Cloonan SM}, Kennedy E, Feeney M, et al.','2012, Self-assembly of hybrid organic-inorganic polyoxovanadates: Functionalised mixed-valent clusters and molecular cages, Dalton Transactions, 41:2918-26, PMID:22266646.',22266646),
	(307,'jsa7002','{Ancker JS}, Kern LM, Abramson E, Kaushal R,','2012, The triangle Model for evaluating the effect of health information technology on healthcare quality and safety, Journal of the American Medical Informatics Association, 19:61-5, PMID:21857023, PMCID:PMC3240765.',21857023),
	(308,'jsa7002','Kern LM, {Ancker JS}, Abramson E, Patel V, Dhopeshwarkar RV, Kaushal R,','2011, Evaluating health information technology in community-based settings: Lessons learned, Journal of the American Medical Informatics Association, 18:749-53, PMID:21807649, PMCID:PMC3198001.',21807649),
	(309,'jsa7002','{Ancker JS}, Miller MC, Patel V, Kaushal R,','2014, Sociotechnical challenges to developing technologies for patient access to health information exchange data, Journal of the American Medical Informatics Association, 21:664-70, PMID:24064443, PMCID:PMC4078272.',24064443),
	(310,'jsa7002','{Ancker JS}, Edwards AM, Miller MC, Kaushal R,','2012, Consumer perceptions of electronic health information exchange, American Journal of Preventive Medicine, 43:76-80, PMID:22704751.',22704751),
	(311,'jsa7002','{Ancker JS}, Silver M, Miller MC, Kaushal R,','2013, Consumer experience with and attitudes toward health information technology: A nationwide survey, Journal of the American Medical Informatics Association, 20:152-6, PMID:22847306, PMCID:PMC3555333.',22847306),
	(335,'str2020','Kim HP, {Ryter SW}, Choi AMK,','2006, CO as a cellular signaling molecule, Annual Review of Pharmacology and Toxicology, 46:411-49, PMID:16402911.',16402911),
	(336,'str2020','Kim HP, Wang X, Galbiati F, {Ryter SW}, Choi AMK,','2004, Caveolae compartmentalization of hemeoxygenase-1 in endothelial cells, FASEB Journal, 18:1080-9, PMID:15226268.',15226268),
	(338,'str2020','Jin Y, Hong PK, Chi M, Ifedigbo E, {Ryter SW}, Choi AMK,','2008, Deletion of caveolin-1 protects against oxidative lung injury via up-regulation of heme oxygenase-1, American Journal of Respiratory Cell and Molecular Biology, 39:171-9, PMID:18323531, PMCID:PMC2542454.',18323531),
	(340,'str2020','{Ryter SW}, Morse D, Choi AMK,','2007, Carbon monoxide and bilirubin: Potential therapies for pulmonary/vascular injury and disease, American Journal of Respiratory Cell and Molecular Biology, 36:175-82, PMID:16980550, PMCID:PMC2176112.',16980550),
	(341,'str2020','Nakahira K, Hong PK, Xue HG, Nakao A, Wang X, Murase N, et al.','2006, Carbon monoxide differentially inhibits TLR signaling pathways by regulating ROS-induced trafficking of TLRs to lipid rafts, Journal of Experimental Medicine, 203:2377-89, PMID:17000866, PMCID:PMC2118097.',17000866),
	(342,'str2020','Rodway GW, Sethi JM, Hoffman LA, Conley YP, Choi AMK, Sereika SM, Zullo TG, {Ryter SW}, Sanders MH,','2007, Hemodynamic and molecular response to intermittent hypoxia (IH) versus continuous hypoxia (CH) in normal humans, Translational Research, 149:76-84, PMID:17240318.',17240318),
	(343,'str2020','Kim HP, Wang X, Zhang J, Suh GY, Benjamin IJ, {Ryter SW}, Choi AMK,','2005, Heat shock protein-70 mediates the cytoprotective effect of carbon monoxide: Involvement of p38β MAPK and heat shock factor-1, Journal of Immunology, 175:2622-9, PMID:16081837.',16081837),
	(344,'str2020','Kim HP, Wang X, Nakao A, Kim SI, Murase N, Choi ME, {Ryter SW}, Choi AMK,','2005, Caveolin-1 expression by means of p38β mitogen-activated protein kinase mediates the antiproliferative effect of carbon monoxide, Proceedings of the National Academy of Sciences of the United States of America, 102:11319-24, PMID:16051704, PMCID:PMC1183544.',16051704),
	(345,'str2020','Dolinay T, Wu W, Kaminski N, Ifedigbo E, Kaynar AM, Szilasi M, Watkins SC, {Ryter SW}, Hoetzel A, Choi AMK,','2008, Mitogen-activated protein kinases regulate susceptibility to ventilator-induced lung injury, PLoS ONE, 3:e1601, PMID:18270588, PMCID:PMC2223071.',18270588),
	(363,'str2020','{Ryter SW}, Alam J, Choi AMK,','2006, Heme oxygenase-1/carbon monoxide: From basic science to therapeutic applications, Physiological Reviews, 86:583-650, PMID:16601269.',16601269),
	(364,'str2020','{Ryter SW}, Xi S, Hartsfield CL, Choi AMK,','2002, Mitogen activated protein kinase (MAPK) pathway regulates heme oxygenase-1 gene expression by hypoxia in vascular cells, Antioxidants and Redox Signaling, 4:587-92, PMID:12230870.',12230870),
	(365,'str2020','Wang X, Wang Y, Zhang J, Kim HP, {Ryter SW}, Choi AMK,','2005, FLIP protects against hypoxia/reoxygenation-induced endothelial cell apoptosis by inhibiting bax activation, Molecular and Cellular Biology, 25:4742-51, PMID:15899875, PMCID:PMC1140634.',15899875),
	(366,'str2020','{Ryter SW}, Choi AMK,','2002, Heme oxygenase-1: Molecular mechanisms of gene expression in oxygen-related stress, Antioxidants and Redox Signaling, 4:625-32, PMID:12230874.',12230874),
	(367,'str2020','Hoetzel A, Dolinay T, Vallbracht S, Zhang Y, Hong PK, Ifedigbo E, Alber S, Kaynar AM, Schmidt R, {Ryter SW}, Choi AMK,','2008, Carbon monoxide protects against ventilator-induced lung injury via PPAR-γ and inhibition of Egr-1, American Journal of Respiratory and Critical Care Medicine, 177:1223-32, PMID:18356564, PMCID:PMC2408440.',18356564),
	(368,'str2020','Wang X, Zhou Y, Kim HP, Song R, Zarnegar R, {Ryter SW}, Choi AMK,','2004, Hepatocyte Growth Factor Protects against Hypoxia/Reoxygenation-induced Apoptosis in Endothelial Cells, Journal of Biological Chemistry, 279:5237-43, PMID:14625309.',14625309),
	(370,'str2020','Park JW, Kim HP, Lee SJ, Wang X, Wang Y, Ifedigbo E, Watkins SC, Ohba M, {Ryter SW}, Vyas YM, Choi AMK,','2008, Protein kinase cα and ζ differentially regulate death-inducing signaling complex formation in cigarette smoke extract-induced apoptosis, Journal of Immunology, 180:4668-78, PMID:18354190.',18354190),
	(371,'str2020','Wang X, Wang Y, Kim HP, Nakahira K, {Ryter SW}, Choi AMK,','2007, Carbon monoxide protects against hyperoxia-induced endothelial cell apoptosis by inhibiting reactive oxygen species formation, Journal of Biological Chemistry, 282:1718-26, PMID:17135272.',17135272),
	(372,'str2020','Wang X, Zhang J, Hong PK, Wang Y, Choi AMK, {Ryter SW},','2004, Bcl-XL disrupts death-inducing signal complex formation in plasma membrane induced by hypoxia/reoxygenation, FASEB Journal, 18:1826-33, PMID:15576486.',15576486),
	(373,'str2020','Wang X, Wang Y, Kim HP, Choi AMK, {Ryter SW},','2007, FLIP inhibits endothelial cell apoptosis during hyperoxia by suppressing Bax, Free Radical Biology and Medicine, 42:1599-609, PMID:17448907.',17448907),
	(382,'amc2056','{Choi AMK}, Fargnoli J, Carlson SG, Holbrook NJ,','1992, Cell growth inhibition by prostaglandin A2 results in elevated expression of gadd153 mRNA, Experimental Cell Research, 199:85-9, PMID:1735464.',1735464),
	(383,'amc2056','Mizumura K, {Choi AMK}, Ryter SW,','2014, Emerging role of selective autophagy in human diseases, Frontiers in Pharmacology, 5:244, PMID:25414669, PMCID:PMC4220655.',25414669),
	(384,'str2020','Mizumura K, Choi AMK, {Ryter SW},','2014, Emerging role of selective autophagy in human diseases, Frontiers in Pharmacology, 5:244, PMID:25414669, PMCID:PMC4220655.',25414669),
	(425,'str2020','Wu W, Dave NB, Yu G, Strollo PJ, Kovkarova-Naumovski E, {Ryter SW}, et al.','2008, Network analysis of temporal effects of intermittent and sustained hypoxia on rat lungs, Physiological Genomics, 36:24-34, PMID:18826996, PMCID:PMC2604785.',18826996),
	(426,'str2020','Chen ZH, Kim HP, Sciurba FC, Lee SJ, Feghali-Bostwick C, Stolz DB, et al.','2008, Egr-1 regulates autophagy in cigarette smoke-induced chronic obstructive pulmonary disease, PLoS ONE, 3:e3316, PMID:18830406, PMCID:PMC2552992.',18830406),
	(427,'str2020','Wang XM, Kim HP, Nakahira K, {Ryter SW}, Choi AMK,','2009, The heme oxygenase-1/carbon monoxide pathway suppresses TLR4 signaling by regulating the interaction of TLR4 with caveolin-1, Journal of Immunology, 182:3809-18, PMID:19265160.',19265160),
	(438,'str2020','Chen ZH, Kim HP, {Ryter SW}, Choi AMK,','2008, Identifying targets for COPD treatment through gene expression analyses, International Journal of COPD, 3:359-70, PMID:18990963, PMCID:PMC2629979.',18990963),
	(439,'str2020','Hoetzel A, Welle A, Schmidt R, Loop T, Humar M, {Ryter SW}, et al.','2008, Nitric oxide-deficiency regulates hepatic heme oxygenase-1, Nitric Oxide - Biology and Chemistry, 18:61-9, PMID:17999922.',17999922),
	(466,'str2020','{Ryter SW}, Hong PK, Hoetzel A, Park JW, Nakahira K, Wang X, Choi AMK,','2007, Mechanisms of cell death in oxidative stress, Antioxidants and Redox Signaling, 9:49-89, PMID:17115887.',17115887),
	(467,'str2020','Park JW, {Ryter SW}, Choi AMK,','2007, Functional significance of apoptosis in chronic obstructive pulmonary disease, COPD: Journal of Chronic Obstructive Pulmonary Disease, 4:347-53, PMID:18027162.',18027162),
	(468,'str2020','{Ryter SW}, Kim HP, Nakahira K, Zuckerbraun BS, Morse D, Choi AMK,','2007, Protective functions of heme oxygenase-1 and carbon monoxide in the respiratory system, Antioxidants and Redox Signaling, 9:2157-73, PMID:17845132.',17845132),
	(469,'str2020','Hoetzel A, Dolinay T, Schmidt R, Choi AMK, {Ryter SW},','2007, Carbon monoxide in sepsis, Antioxidants and Redox Signaling, 9:2013-26, PMID:17822362.',17822362),
	(470,'str2020','{Ryter SW}, Choi AMK,','2007, Cytoprotective and anti-inflammatory actions of carbon monoxide in organ injury and sepsis models, Novartis Foundation Symposium, 280:165-75; discussion 175-81, PMID:17380794.',17380794),
	(471,'str2020','{Ryter SW}, Choi AM,','2006, Therapeutic applications of carbon monoxide in lung disease, Current Opinion in Pharmacology, 6:257-62, PMID:16580257.',16580257),
	(472,'str2020','Slebos DJ, {Ryter SW}, Choi AMK,','2003, Heme oxygenase-1 and carbon monoxide in pulmonary medicine, Respiratory Research, 4:7, PMID:12964953, PMCID:PMC193681.',12964953),
	(473,'kin2007','Ryter SW, Hong PK, Hoetzel A, Park JW, {Nakahira K}, Wang X, Choi AMK,','2007, Mechanisms of cell death in oxidative stress, Antioxidants and Redox Signaling, 9:49-89, PMID:17115887.',17115887),
	(474,'kin2007','Ryter SW, Kim HP, {Nakahira K}, Zuckerbraun BS, Morse D, Choi AMK,','2007, Protective functions of heme oxygenase-1 and carbon monoxide in the respiratory system, Antioxidants and Redox Signaling, 9:2157-73, PMID:17845132.',17845132),
	(484,'str2020','{Ryter SW}, Morse D, Choi AMK,','2004, Carbon monoxide: to boldly go where NO has gone before., Science\'s STKE : signal transduction knowledge environment, 2004:RE6, PMID:15114002.',15114002),
	(485,'str2020','Slebos DJ, {Ryter SW}, Van Der Toorn M, Liu F, Guo F, Baty CJ, et al.','2007, Mitochondrial localization and function of heme oxygenase-1 in cigarette smoke-induced cell death, American Journal of Respiratory Cell and Molecular Biology, 36:409-17, PMID:17079780, PMCID:PMC1899328.',17079780),
	(487,'str2020','Lam HC, Choi AMK, {Ryter SW},','2011, Isolation of mouse respiratory epithelial cells and exposure to experimental cigarette smoke at air liquid interface., Journal of visualized experiments : JoVE, PMID:21372793, PMCID:PMC3197407.',21372793),
	(505,'str2020','{Ryter SW}, Choi AMK,','2005, Heme oxygenase-1: Redox regulation of a stress protein in lung and cell culture models, Antioxidants and Redox Signaling, 7:80-91, PMID:15650398.',15650398),
	(506,'szc2009','Ryter SW, {Cloonan SM}, Choi AMK,','2013, Autophagy: A critical regulator of cellular metabolism and homeostasis, Molecules and Cells, 36:7-16, PMID:23708729, PMCID:PMC3887921.',23708729),
	(508,'kin2007','Chen ZH, Kim HP, Sciurba FC, Lee SJ, Feghali-Bostwick C, Stolz DB, et al.','2008, Egr-1 regulates autophagy in cigarette smoke-induced chronic obstructive pulmonary disease, PLoS ONE, 3:e3316, PMID:18830406, PMCID:PMC2552992.',18830406),
	(509,'kin2007','Wang XM, Kim HP, {Nakahira K}, Ryter SW, Choi AMK,','2009, The heme oxygenase-1/carbon monoxide pathway suppresses TLR4 signaling by regulating the interaction of TLR4 with caveolin-1, Journal of Immunology, 182:3809-18, PMID:19265160.',19265160),
	(511,'kin2007','Nakao A, Toyokawa H, Abe M, Kiyomoto T, {Nakahira K}, Choi AMK, et al.','2006, Heart allograft protection with low-dose carbon monoxide inhalation: Effects on inflammatory mediators and alloreactive T-cell responses, Transplantation, 81:220-30, PMID:16436966.',16436966),
	(512,'kin2007','Wang X, Wang Y, Kim HP, {Nakahira K}, Ryter SW, Choi AMK,','2007, Carbon monoxide protects against hyperoxia-induced endothelial cell apoptosis by inhibiting reactive oxygen species formation, Journal of Biological Chemistry, 282:1718-26, PMID:17135272.',17135272),
	(526,'kin2007','Wong SW, Kwon MJ, Choi AMK, Kim HP, {Nakahira K}, Hwang DH,','2009, Fatty acids modulate toll-like receptor 4 activation through regulation of receptor dimerization and recruitment into lipid rafts in a reactive oxygen species-dependent manner, Journal of Biological Chemistry, 284:27384-92, PMID:19648648, PMCID:PMC2785667.',19648648),
	(529,'str2020','Hoetzel A, Schmidt R, Vallbracht S, Goebel U, Dolinay T, Kim HP, Ifedigbo E, {Ryter SW}, Choi AMK,','2009, Carbon monoxide prevents ventilator-induced lung injury via caveolin-1, Critical Care Medicine, 37:1708-15, PMID:19325477, PMCID:PMC3086639.',19325477),
	(544,'kin2007','Nakao A, Faleo G, Shimizu H, {Nakahira K}, Kohmoto J, Sugimoto R, et al.','2008, Ex vivo carbon monoxide prevents cytochrome P450 degradation and ischemia/reperfusion injury of kidney grafts, Kidney International, 74:1009-16, PMID:18633343.',18633343),
	(545,'kin2007','{Nakahira K}, Hong PK, Xue HG, Nakao A, Wang X, Murase N, et al.','2006, Carbon monoxide differentially inhibits TLR signaling pathways by regulating ROS-induced trafficking of TLRs to lipid rafts, Journal of Experimental Medicine, 203:2377-89, PMID:17000866, PMCID:PMC2118097.',17000866),
	(549,'thc2015','Lorenzi NM, Smith JB, Conner SR, {Campion TR},','2004, The Success Factor Profile for clinical computer innovation., Medinfo. MEDINFO, 11:1077-80, PMID:15360978.',15360978),
	(550,'thc2015','Kauffmann RM, Hayes RM, Buske BD, Norris PR, {Campion TR}, Dortch M, et al.','2011, Increasing blood glucose variability heralds hypoglycemia in the Critically Ill, Journal of Surgical Research, 170:257-64, PMID:21543086, PMCID:PMC3154465.',21543086),
	(551,'thc2015','Weiss JB, {Campion TR},','2007, Blogs, wikis, and discussion forums: attributes and implications for clinical information systems., Medinfo. MEDINFO, 12:157-61, PMID:17911698.',17911698),
	(553,'thc2015','{Campion TR}, Denny JC, Weinberg ST, Lorenzi NM, Waitman LR,','2007, Analysis of a computerized sign-out tool: identification of unanticipated uses and contradictory content., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium99-104, PMID:18693806, PMCID:PMC2655840.',18693806),
	(555,'jsa7002','Geromanos K, Sunkle SN, Mauer MB, Carp D, {Ancker J}, Zhang W, et al.','2004, Successful techniques for retaining a cohort of infants and children born to HIV-infected women: The prospective P2C2 HIV study, Journal of the Association of Nurses in AIDS Care, 15:48-57, PMID:15296658, PMCID:PMC4417743.',15296658),
	(556,'thc2015','{Campion TR}, Gadd CS,','2009, Peers, regulators, and professions: The influence of organizations in intensive insulin therapy adoption, Quality Management in Health Care, 18:115-9, PMID:19369854, PMCID:PMC3052903.',19369854),
	(557,'thc2015','{Campion TR}, Weinberg ST, Lorenzi NM, Waitman LR,','2010, Evaluation of computerized free text sign-out notes: Baseline understanding and recommendations, Applied Clinical Informatics, 1:304-317, PMID:21258575, PMCID:PMC3024596.',21258575),
	(558,'thc2015','{Campion TR}, Waitman LR, May AK, Ozdas A, Lorenzi NM, Gadd CS,','2010, Social, organizational, and contextual characteristics of clinical decision support systems for intensive insulin therapy: A literature review and case study, International Journal of Medical Informatics, 79:31-43, PMID:19815452, PMCID:PMC2818499.',19815452),
	(559,'thc2015','{Campion TR}, May AK, Waitman LR, Ozdas A, Gadd CS,','2010, Effects of blood glucose transcription mismatches on a computer-based intensive insulin therapy protocol, Intensive Care Medicine, 36:1566-70, PMID:20352190, PMCID:PMC2916042.',20352190),
	(560,'jsa7002','{Ancker JS}, Weber EU, Kukafka R,','2011, Effects of game-like interactive graphics on risk perceptions and decisions, Medical Decision Making, 31:130-42, PMID:20393103.',20393103),
	(561,'jsa7002','{Ancker JS}, Weber EU, Kukafka R,','2011, Effect of arrangement of stick figures on estimates of proportion in risk graphics, Medical Decision Making, 31:143-50, PMID:20671209.',20671209),
	(562,'thc2015','{Campion TR}, Waitman LR, Lorenzi NM, May AK, Gadd CS,','2011, Barriers and facilitators to the use of computer-based intensive insulin therapy, International Journal of Medical Informatics, 80:863-71, PMID:22019280, PMCID:PMC3226863.',22019280),
	(563,'thc2015','{Campion TR}, May AK, Waitman LR, Ozdas A, Lorenzi NM, Gadd CS,','2011, Characteristics and effects of nurse dosing over-rides on computer-based intensive insulin therapy protocol performance, Journal of the American Medical Informatics Association, 18:251-8, PMID:21402737, PMCID:PMC3078667.',21402737),
	(564,'thc2015','{Campion TR}, Vest JR, Kern LM, Kaushal R,','2014, Adoption of clinical data exchange in community settings: a comparison of two approaches, AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2014:359-65, PMID:25954339, PMCID:PMC4419957.',25954339),
	(568,'jsa7002','Campion TR, {Ancker JS}, Edwards AM, Patel VN, Kaushal R, HITEC Investigators ,','2012, Push and pull: physician usage of and satisfaction with health information exchange., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2012:77-84, PMID:23304275, PMCID:PMC3540571.',23304275),
	(569,'jsa7002','Morrison F, Zimmerman J, Hall M, Chase H, Kaushal R, {Ancker JS},','2011, Developing an online and in-person HIT workforce training program using a team-based learning approach., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2011:63-71, PMID:22195056, PMCID:PMC3243269.',22195056),
	(570,'jsa7002','Khan SA, {Ancker JS}, Li J, Kaufman D, Hutchinson C, Cohall A, Kukafka R,','2009, GetHealthyHarlem.org: developing a web platform for health promotion and wellness driven by and for the Harlem community., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2009:317-21, PMID:20351872, PMCID:PMC2815482.',20351872),
	(572,'jsa7002','{Ancker JS}, Singh MP, Thomas R, Edwards A, Snyder A, Kashyap A, Kaushal R,','2013, Predictors of success for electronic health record implementation in small physician practices, Applied Clinical Informatics, 4:12-24, PMID:23650484, PMCID:PMC3644811.',23650484),
	(574,'amc2056','Mizumura K, Cloonan SM, Nakahira K, Bhashyam AR, Cervo M, Kitada T, et al.','2014, Mitophagy-dependent necroptosis contributes to the pathogenesis of COPD, Journal of Clinical Investigation, 124:3987-4003, PMID:25083992, PMCID:PMC4151233.',25083992),
	(575,'amc2056','Lee S, Lee SJ, Coronata AA, Fredenburgh LE, Chung SW, Perrella MA, Nakahira K, Ryter SW, {Choi AMK},','2014, Carbon monoxide confers protection in sepsis by enhancing Beclin 1-dependent autophagy and phagocytosis, Antioxidants and Redox Signaling, 20:432-42, PMID:23971531, PMCID:PMC3894711.',23971531),
	(576,'kin2007','{Nakahira K}, Cloonan SM, Mizumura K, Choi AMK, Ryter SW,','2014, Autophagy: A crucial moderator of redox balance, inflammation, and apoptosis in lung disease, Antioxidants and Redox Signaling, 20:474-94, PMID:23879400, PMCID:PMC3894710.',23879400),
	(577,'amc2056','Nakahira K, Cloonan SM, Mizumura K, {Choi AMK}, Ryter SW,','2014, Autophagy: A crucial moderator of redox balance, inflammation, and apoptosis in lung disease, Antioxidants and Redox Signaling, 20:474-94, PMID:23879400, PMCID:PMC3894710.',23879400),
	(578,'str2020','Nakahira K, Cloonan SM, Mizumura K, Choi AMK, {Ryter SW},','2014, Autophagy: A crucial moderator of redox balance, inflammation, and apoptosis in lung disease, Antioxidants and Redox Signaling, 20:474-94, PMID:23879400, PMCID:PMC3894710.',23879400),
	(579,'jiy2013','Parkhitko AA, Priolo C, Coloff JL, {Yun J}, Wu JJ, Mizumura K, et al.','2014, Autophagy-dependent metabolic reprogramming sensitizes tsc2-deficient cells to the antimetabolite 6-aminonicotinamide, Molecular Cancer Research, 12:48-57, PMID:24296756, PMCID:PMC4030750.',24296756),
	(580,'amc2056','Parkhitko AA, Priolo C, Coloff JL, Yun J, Wu JJ, Mizumura K, et al.','2014, Autophagy-dependent metabolic reprogramming sensitizes tsc2-deficient cells to the antimetabolite 6-aminonicotinamide, Molecular Cancer Research, 12:48-57, PMID:24296756, PMCID:PMC4030750.',24296756),
	(581,'amc2056','Sanada F, Kim J, Czarna A, Chan NYK, Signore S, Ogórek B, et al.','2014, C-kit-positive cardiac stem cells nested in hypoxic niches are activated by stem cell factor reversing the aging myopathy, Circulation Research, 114:41-55, PMID:24170267, PMCID:PMC3959163.',24170267),
	(582,'kin2007','{Nakahira K}, Kyung SY, Rogers AJ, Gazourian L, Youn S, Massaro AF, et al.','2013, Circulating Mitochondrial DNA in Patients in the ICU as a Marker of Mortality: Derivation and Validation, PLoS Medicine, 10:e1001577; discussion e1001577, PMID:24391478, PMCID:PMC3876981.',24391478),
	(583,'kin2007','Rogers AJ, McGeachie M, Baron RM, Gazourian L, Haspel JA, {Nakahira K}, et al.','2014, Metabolomic derangements are associated with mortality in critically ill adult patients, PLoS ONE, 9:e87538, PMID:24498130, PMCID:PMC3907548.',24498130),
	(586,'amc2056','Jung SS, Moon JS, Xu JF, Ifedigbo E, Ryter SW, {Choi AMK}, Nakahira K,','2015, Carbon monoxide negatively regulates NLRP3 inflammasome activation in macrophages, American Journal of Physiology - Lung Cellular and Molecular Physiology, 308:L1058-67, PMID:25770182, PMCID:PMC4437010.',25770182),
	(587,'amc2056','Nakahira K, {Choi AMK},','2015, Carbon monoxide in the treatment of sepsis, American Journal of Physiology - Lung Cellular and Molecular Physiology, 309:L1387-93, PMID:26498251, PMCID:PMC4683310.',26498251),
	(588,'amc2056','Nakahira K, Hisata S, {Choi AMK},','2015, The Roles of Mitochondrial Damage-Associated Molecular Patterns in Diseases, Antioxidants and Redox Signaling, 23:1329-50, PMID:26067258, PMCID:PMC4685486.',26067258),
	(589,'amc2056','Moon JS, Hisata S, Park MA, DeNicola GM, Ryter SW, Nakahira K, {Choi AMK},','2015, MTORC1-Induced HK1-Dependent Glycolysis Regulates NLRP3 Inflammasome Activation, Cell Reports, 12:102-15, PMID:26119735.',26119735),
	(590,'str2020','{Ryter SW}, Mizumura K, Choi AMK,','2014, The impact of autophagy on cell death modalities, International Journal of Cell Biology502676, PMID:24639873, PMCID:PMC3932252.',24639873),
	(591,'amc2056','Ryter SW, Mizumura K, {Choi AMK},','2014, The impact of autophagy on cell death modalities, International Journal of Cell Biology502676, PMID:24639873, PMCID:PMC3932252.',24639873),
	(592,'szc2009','{Cloonan SM}, Lam HC, Ryter SW, Choi AM,','2014, Ciliophagy : The consumption of cilia components by autophagy, Autophagy, 10:532-4, PMID:24401596, PMCID:PMC4077895.',24401596),
	(593,'str2020','Cloonan SM, Lam HC, {Ryter SW}, Choi AM,','2014, Ciliophagy : The consumption of cilia components by autophagy, Autophagy, 10:532-4, PMID:24401596, PMCID:PMC4077895.',24401596),
	(594,'amc2056','Cloonan SM, Lam HC, Ryter SW, {Choi AM},','2014, Ciliophagy : The consumption of cilia components by autophagy, Autophagy, 10:532-4, PMID:24401596, PMCID:PMC4077895.',24401596),
	(595,'amc2056','Rogers AJ, McGeachie M, Baron RM, Gazourian L, Haspel JA, Nakahira K, et al.','2014, Metabolomic derangements are associated with mortality in critically ill adult patients, PLoS ONE, 9:e87538, PMID:24498130, PMCID:PMC3907548.',24498130),
	(596,'jsa7002','{Ancker JS}, Carpenter KM, Greene P, Hoffman R, Kukafka R, Marlow LAV, et al.','2009, Peer-to-peer communication, cancer prevention, and the Internet, Journal of Health Communication, 14:38-46, PMID:19449267, PMCID:PMC3645318.',19449267),
	(597,'jsa7002','{Ancker JS}, Kukafka R,','2007, A combined qualitative method for testing an interactive risk communication tool., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium16-20, PMID:18693789, PMCID:PMC2655853.',18693789),
	(598,'jsa7002','{Ancker JS}, Senathirajah Y, Weber EU, Kukafka R,','2006, Risk and experience: effects of experiential learning and patient characteristics in interpretation of dynamic risk graphics., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium844, PMID:17238464, PMCID:PMC1839486.',17238464),
	(599,'jsa7002','Khan SA, McFarlane DJ, Li J, {Ancker JS}, Hutchinson C, Cohall A, Kukafka R,','2007, Healthy Harlem: empowering health consumers through social networking, tailoring and web 2.0 technologies., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium1007, PMID:18694106.',18694106),
	(601,'jsa7002','Kukafka R, Khan SA, Hutchinson C, McFarlane DJ, Li J, {Ancker JS}, Cohall A,','2007, Digital partnerships for health: steps to develop a community-specific health portal aimed at promoting health and well-being., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium428-32, PMID:18693872, PMCID:PMC2655847.',18693872),
	(602,'jsa7002','{Ancker JS}, Flanagin A,','2007, A comparison of conflict of interest policies at peer-reviewed journals in different scientific disciplines, Science and Engineering Ethics, 13:147-57, PMID:17717729.',17717729),
	(603,'jsa7002','McFarlane DJ, {Ancker JS}, Kukafka R,','2008, A vector space method to quantify agreement in qualitative data., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium455-9, PMID:18999026, PMCID:PMC2655941.',18999026),
	(605,'szc2009','Mizumura K, {Cloonan SM}, Nakahira K, Bhashyam AR, Cervo M, Kitada T, et al.','2014, Mitophagy-dependent necroptosis contributes to the pathogenesis of COPD, Journal of Clinical Investigation, 124:3987-4003, PMID:25083992, PMCID:PMC4151233.',25083992),
	(606,'kin2007','Mizumura K, Cloonan SM, {Nakahira K}, Bhashyam AR, Cervo M, Kitada T, et al.','2014, Mitophagy-dependent necroptosis contributes to the pathogenesis of COPD, Journal of Clinical Investigation, 124:3987-4003, PMID:25083992, PMCID:PMC4151233.',25083992),
	(608,'jsa7002','{Ancker JS}, Chan C, Kukafka R,','2009, Interactive graphics for expressing health risks: Development and qualitative evaluation, Journal of Health Communication, 14:461-75, PMID:19657926, PMCID:PMC4423614.',19657926),
	(609,'jsa7002','{Ancker JS}, Kaufman D,','2007, Rethinking Health Numeracy: A Multidisciplinary Literature Review, Journal of the American Medical Informatics Association, 14:713-21, PMID:17712082, PMCID:PMC2213486.',17712082),
	(611,'jsa7002','Kukafka R, {Ancker JS}, Chan C, Chelico J, Khan S, Mortoti S, et al.','2007, Redesigning electronic health record systems to support public health, Journal of Biomedical Informatics, 40:398-409, PMID:17632039.',17632039),
	(612,'jsa7002','{Ancker JS}, Senathirajah Y, Kukafka R, Starren JB,','2006, Design Features of Graphs in Health Risk Communication: A Systematic Review, Journal of the American Medical Informatics Association, 13:608-18, PMID:16929039, PMCID:PMC1656964.',16929039),
	(613,'johnsos','Tmanova LL, Ancker JS, {Johnson SB},','2015, Integrating an Informationist Into Graduate Education: Case Study With Preliminary Results, Medical Reference Services Quarterly, 34:296-310, PMID:26211791.',26211791),
	(615,'jsa7002','Quillin JM, Tracy K, {Ancker JS}, Mustian KM, Ellington L, Viswanath V, Miller SM,','2009, Health care system approaches for cancer patient communication., Journal of health communication, 14 Suppl 1:85-94, PMID:19449272, PMCID:PMC2805414.',19449272),
	(617,'jsa7002','Malhotra S, Cheriff AD, Gossey JT, Cole CL, Kaushal R, {Ancker JS},','2016, Effects of an e-Prescribing interface redesign on rates of generic drug prescribing: Exploiting default options, Journal of the American Medical Informatics Association, 23:891-8, PMID:26911828.',26911828),
	(618,'jsa7002','Roman LC, {Ancker JS}, Johnson SB, Senathirajah Y,','2017, Navigation in the electronic health record: A review of the safety and usability literature, Journal of Biomedical Informatics, 67:69-79, PMID:28088527.',28088527),
	(619,'str2020','Jung SS, Moon JS, Xu JF, Ifedigbo E, {Ryter SW}, Choi AMK, Nakahira K,','2015, Carbon monoxide negatively regulates NLRP3 inflammasome activation in macrophages, American Journal of Physiology - Lung Cellular and Molecular Physiology, 308:L1058-67, PMID:25770182, PMCID:PMC4437010.',25770182),
	(620,'str2020','Moon JS, Hisata S, Park MA, DeNicola GM, {Ryter SW}, Nakahira K, Choi AMK,','2015, MTORC1-Induced HK1-Dependent Glycolysis Regulates NLRP3 Inflammasome Activation, Cell Reports, 12:102-15, PMID:26119735.',26119735),
	(621,'kin2007','Moon JS, Hisata S, Park MA, DeNicola GM, Ryter SW, {Nakahira K}, Choi AMK,','2015, MTORC1-Induced HK1-Dependent Glycolysis Regulates NLRP3 Inflammasome Activation, Cell Reports, 12:102-15, PMID:26119735.',26119735),
	(622,'str2020','Koo MJ, Rooney KT, Choi ME, {Ryter SW}, Choi AMK, Moon JS,','2015, Impaired oxidative phosphorylation regulates necroptosis in human lung epithelial cells, Biochemical and Biophysical Research Communications, 464:875-80, PMID:26187663.',26187663),
	(623,'amc2056','Koo MJ, Rooney KT, Choi ME, Ryter SW, {Choi AMK}, Moon JS,','2015, Impaired oxidative phosphorylation regulates necroptosis in human lung epithelial cells, Biochemical and Biophysical Research Communications, 464:875-80, PMID:26187663.',26187663),
	(624,'str2020','Joe Y, Zheng M, Kim HJ, Uddin MJ, Kim SK, Chen Y, Park J, Cho GJ, {Ryter SW}, Chung HT,','2015, Cilostazol attenuates murine hepatic ischemia and reperfusion injury via heme oxygenase-dependent activation of mitochondrial biogenesis, American Journal of Physiology - Gastrointestinal and Liver Physiology, 309:G21-9, PMID:25951827.',25951827),
	(626,'str2020','{Ryter SW}, Choi AMK,','2016, Targeting heme oxygenase-1 and carbon monoxide for therapeutic modulation of inflammation, Translational Research, 167:7-34, PMID:26166253, PMCID:PMC4857893.',26166253),
	(629,'str2020','Lee S, Suh GY, {Ryter SW}, Choi AMK,','2016, Regulation and function of the nucleotide binding domain leucine-rich repeat-containing receptor, pyrin domain-containing-3 inflammasome in lung disease, American Journal of Respiratory Cell and Molecular Biology, 54:151-60, PMID:26418144, PMCID:PMC4821045.',26418144),
	(630,'str2020','Chen Y, Pandiri I, Joe Y, Kim HJ, Kim SK, Park J, Ryu J, Cho GJ, Park JW, {Ryter SW}, Chung HT,','2016, Synergistic Effects of Cilostazol and Probucol on ER Stress-Induced Hepatic Steatosis via Heme Oxygenase-1-Dependent Activation of Mitochondrial Biogenesis, Oxidative Medicine and Cellular Longevity, 2016:3949813, PMID:27057275, PMCID:PMC4736599.',27057275),
	(631,'str2020','Kim MJ, Bae SH, Ryu JC, Kwon Y, Oh JH, Kwon J, et al.','2016, SESN2/sestrin2 suppresses sepsis by inducing mitophagy and inhibiting NLRP3 activation in macrophages, Autophagy1-20, PMID:27337507.',27337507),
	(632,'str2020','Moon JS, Nakahira K, Chung KP, DeNicola GM, Koo MJ, Pabón MA, Rooney KT, Yoon JH, {Ryter SW}, Stout-Delgado H, Choi AMK,','2016, NOX4-dependent fatty acid oxidation promotes NLRP3 inflammasome activation in macrophages, Nature Medicine, PMID:27455510.',27455510),
	(633,'str2020','Moon JS, Lee S, Park MA, Siempos II, Haslip M, Lee PJ, Yun M, Kim CK, Howrylak J, {Ryter SW}, Nakahira K, Choi AMK,','2015, UCP2-induced fatty acid synthase promotes NLRP3 inflammasome activation during sepsis, Journal of Clinical Investigation, 125:665-80, PMID:25574840, PMCID:PMC4319445.',25574840),
	(634,'str2020','Stout-Delgado HW, Cho SJ, Chu SG, Mitzel DN, Villalba J, El-Chemaly S, {Ryter SW}, Choi AMK, Rosas IO,','2016, Age-dependent susceptibility to pulmonary fibrosis is associated with NLRP3 inflammasome activation, American Journal of Respiratory Cell and Molecular Biology, 55:252-63, PMID:26933834, PMCID:PMC4979364.',26933834),
	(635,'amc2056','Doyle TJ, Patel AS, Hatabu H, Nishino M, Wu G, Osorio JC, et al.','2015, Detection of rheumatoid arthritis-interstitial lung disease is enhanced by serum biomarkers, American Journal of Respiratory and Critical Care Medicine, 191:1403-12, PMID:25822095, PMCID:PMC4476561.',25822095),
	(636,'kin2007','Jung SS, Moon JS, Xu JF, Ifedigbo E, Ryter SW, Choi AMK, {Nakahira K},','2015, Carbon monoxide negatively regulates NLRP3 inflammasome activation in macrophages, American Journal of Physiology - Lung Cellular and Molecular Physiology, 308:L1058-67, PMID:25770182, PMCID:PMC4437010.',25770182),
	(637,'kin2007','{Nakahira K}, Choi AMK,','2015, Carbon monoxide in the treatment of sepsis, American Journal of Physiology - Lung Cellular and Molecular Physiology, 309:L1387-93, PMID:26498251, PMCID:PMC4683310.',26498251),
	(638,'kin2007','{Nakahira K}, Hisata S, Choi AMK,','2015, The Roles of Mitochondrial Damage-Associated Molecular Patterns in Diseases, Antioxidants and Redox Signaling, 23:1329-50, PMID:26067258, PMCID:PMC4685486.',26067258),
	(641,'kin2007','Moon JS, {Nakahira K}, Chung KP, DeNicola GM, Koo MJ, Pabón MA, et al.','2016, NOX4-dependent fatty acid oxidation promotes NLRP3 inflammasome activation in macrophages, Nature Medicine, PMID:27455510.',27455510),
	(643,'amc2056','Lee S, Suh GY, Ryter SW, {Choi AMK},','2016, Regulation and function of the nucleotide binding domain leucine-rich repeat-containing receptor, pyrin domain-containing-3 inflammasome in lung disease, American Journal of Respiratory Cell and Molecular Biology, 54:151-60, PMID:26418144, PMCID:PMC4821045.',26418144),
	(644,'amc2056','Dalli J, Kraft BD, Colas RA, Shinohara M, Fredenburgh LE, Hess DR, Chiang N, Welty-Wolf K, {Choi AM}, Piantadosi CA, Serhan CN,','2015, The regulation of proresolving lipid mediator profiles in baboon pneumonia by inhaled carbon monoxide, American Journal of Respiratory Cell and Molecular Biology, 53:314-25, PMID:25568926.',25568926),
	(645,'amc2056','Fredenburgh LE, Kraft BD, Hess DR, Harris RS, Wolf MA, Suliman HB, et al.','2015, Effects of inhaled CO administration on acute lung injury in baboons with pneumococcal pneumonia, American Journal of Physiology - Lung Cellular and Molecular Physiology, 309:L834-46, PMID:26320156, PMCID:PMC4609940.',26320156),
	(646,'meb7002','{Bales ME}, Dannenberg AL, Brachman PS, Kaufmann AF, Klatsky PC, Ashford DA,','2002, Epidemiologic response to anthrax outbreaks: Field investigations, 1950-2001, Emerging Infectious Diseases, 8:1163-74, PMID:12396934, PMCID:PMC2730298.',12396934),
	(647,'meb7002','Ashford DA, Kaiser RM, {Bales ME}, Shutt K, Patrawalla A, McShan A, et al.','2003, Planning against biological terrorism: Lessons from outbreak investigations, Emerging Infectious Diseases, 9:515-9, PMID:12737732, PMCID:PMC2972753.',12737732),
	(648,'meb7002','Kumar A, Swanwick CC, Johnson N, Menashe I, Basu SN, {Bales ME}, Banerjee-Basu S,','2011, A brain region-specific predictive gene map for autism derived by profiling a reference gene set, PLoS ONE, 6:e28431, PMID:22174805, PMCID:PMC3235126.',22174805),
	(649,'meb7002','Arcia A, {Bales ME}, Brown W, Co MC, Gilmore M, Lee YJ, et al.','2013, Method for the development of data visualizations for community members with varying levels of health literacy., AMIA ... Annual Symposium proceedings / AMIA Symposium. AMIA Symposium, 2013:51-60, PMID:24551322, PMCID:PMC3900122.',24551322),
	(650,'jiy2013','{Yun J}, Mullarky E, Lu C, Bosch KN, Kavalier A, Rivera K, et al.','2015, Vitamin C selectively kills KRAS and BRAF mutant colorectal cancer cells by targeting GAPDH, Science, 350:1391-6, PMID:26541605.',26541605),
	(651,'jiy2013','Shim H, Wu C, Ramsamooj S, Bosch KN, Chen Z, Emerling BM, {Yun J}, Liu H, Choo-Wing R, Yang Z, Wulf GM, Kuchroo VK, Cantley LC,','2016, Deletion of the gene Pip4k2c, a novel phosphatidylinositol kinase, results in hyperactivation of the immune system, Proceedings of the National Academy of Sciences of the United States of America, 113:7596-601, PMID:27313209.',27313209),
	(652,'szc2009','{Cloonan SM}, Glass K, Laucho-Contreras ME, Bhashyam AR, Cervo M, Pabón MA, et al.','2016, Mitochondrial iron chelation ameliorates cigarette smoke-induced bronchitis and emphysema in mice, Nature Medicine, 22:163-74, PMID:26752519, PMCID:PMC4742374.',26752519),
	(653,'amc2056','Cloonan SM, Glass K, Laucho-Contreras ME, Bhashyam AR, Cervo M, Pabón MA, et al.','2016, Mitochondrial iron chelation ameliorates cigarette smoke-induced bronchitis and emphysema in mice, Nature Medicine, 22:163-74, PMID:26752519, PMCID:PMC4742374.',26752519),
	(654,'amc2056','Ryter SW, {Choi AMK},','2016, Targeting heme oxygenase-1 and carbon monoxide for therapeutic modulation of inflammation, Translational Research, 167:7-34, PMID:26166253, PMCID:PMC4857893.',26166253),
	(655,'amc2056','Tam JM, Mansour MK, Khan NS, Seward M, Puranam S, Tanne A, et al.','2014, Dectin-1-dependent LC3 recruitment to phagosomes enhances fungicidal activity in macrophages, Journal of Infectious Diseases, 210:1844-54, PMID:24842831, PMCID:PMC4271056.',24842831),
	(656,'amc2056','Li MH, Fan LC, Mao B, Yang JW, {Choi AMK}, Cao WJ, Xu JF,','2016, Short-term exposure to ambient fine particulate matter increases hospitalizations and mortality in COPD: A systematic review and meta-analysis, Chest, 149:, PMID:26111257.',26111257),
	(657,'szc2009','{Cloonan SM}, Choi AMK,','2016, Mitochondria in lung disease, Journal of Clinical Investigation, 126:809-20, PMID:26928034, PMCID:PMC4767339.',26928034),
	(658,'amc2056','Cloonan SM, {Choi AMK},','2016, Mitochondria in lung disease, Journal of Clinical Investigation, 126:809-20, PMID:26928034, PMCID:PMC4767339.',26928034),
	(659,'szc2009','Mizumura K, {Cloonan S}, Choi ME, Hashimoto S, Nakahira K, Ryter SW, Choi AMK,','2016, Autophagy: Friend or foe in lung disease?, Annals of the American Thoracic Society, 13:S40-7, PMID:27027951.',27027951),
	(660,'kin2007','Mizumura K, Cloonan S, Choi ME, Hashimoto S, {Nakahira K}, Ryter SW, Choi AMK,','2016, Autophagy: Friend or foe in lung disease?, Annals of the American Thoracic Society, 13:S40-7, PMID:27027951.',27027951),
	(661,'kin2007','Moon JS, Lee S, Park MA, Siempos II, Haslip M, Lee PJ, et al.','2015, UCP2-induced fatty acid synthase promotes NLRP3 inflammasome activation during sepsis, Journal of Clinical Investigation, 125:665-80, PMID:25574840, PMCID:PMC4319445.',25574840),
	(662,'kin2007','Zhang R, {Nakahira K}, Guo X, Choi AMK, Gu Z,','2016, Very Short Mitochondrial DNA Fragments and Heteroplasmy in Human Plasma, Scientific Reports, 6:36097, PMID:27811968, PMCID:PMC5095883.',27811968),
	(663,'kin2007','{Nakahira K}, Porras MAP, Choi AMK,','2016, Autophagy in pulmonary diseases, American Journal of Respiratory and Critical Care Medicine, 194:1196-1207, PMID:27579514, PMCID:PMC5114440.',27579514),
	(664,'kin2007','Howrylak JA, {Nakahira K},','2017, Inflammasomes: Key Mediators of Lung Immunity, Annual Review of Physiology, 79:471-494, PMID:28192059.',28192059),
	(665,'amc2056','Mizumura K, Cloonan S, Choi ME, Hashimoto S, Nakahira K, Ryter SW, {Choi AMK},','2016, Autophagy: Friend or foe in lung disease?, Annals of the American Thoracic Society, 13:S40-7, PMID:27027951.',27027951),
	(666,'amc2056','Kim MJ, Bae SH, Ryu JC, Kwon Y, Oh JH, Kwon J, et al.','2016, SESN2/sestrin2 suppresses sepsis by inducing mitophagy and inhibiting NLRP3 activation in macrophages, Autophagy1-20, PMID:27337507.',27337507),
	(667,'amc2056','Moon JS, Nakahira K, Chung KP, DeNicola GM, Koo MJ, Pabón MA, et al.','2016, NOX4-dependent fatty acid oxidation promotes NLRP3 inflammasome activation in macrophages, Nature Medicine, PMID:27455510.',27455510),
	(668,'amc2056','Moon JS, Lee S, Park MA, Siempos II, Haslip M, Lee PJ, et al.','2015, UCP2-induced fatty acid synthase promotes NLRP3 inflammasome activation during sepsis, Journal of Clinical Investigation, 125:665-80, PMID:25574840, PMCID:PMC4319445.',25574840),
	(669,'amc2056','Stout-Delgado HW, Cho SJ, Chu SG, Mitzel DN, Villalba J, El-Chemaly S, Ryter SW, {Choi AMK}, Rosas IO,','2016, Age-dependent susceptibility to pulmonary fibrosis is associated with NLRP3 inflammasome activation, American Journal of Respiratory Cell and Molecular Biology, 55:252-63, PMID:26933834, PMCID:PMC4979364.',26933834),
	(670,'amc2056','Pabon MA, Ma KC, {Choi AMK},','2016, Autophagy and obesity-related lung disease, American Journal of Respiratory Cell and Molecular Biology, 54:636-46, PMID:26900794.',26900794),
	(671,'amc2056','Mizumura K, Maruoka S, Gon Y, {Choi AMK}, Hashimoto S,','2016, The role of necroptosis in pulmonary diseases, Respiratory Investigation, 54:407-412, PMID:27886851.',27886851),
	(672,'amc2056','Nakahira K, Porras MAP, {Choi AMK},','2016, Autophagy in pulmonary diseases, American Journal of Respiratory and Critical Care Medicine, 194:1196-1207, PMID:27579514, PMCID:PMC5114440.',27579514),
	(673,'amc2056','Tsoyi K, Hall SRR, Dalli J, Colas RA, Ghanta S, Ith B, Coronata A, Fredenburgh LE, Baron RM, {Choi AMK}, Serhan CN, Liu X, Perrella MA,','2016, Carbon Monoxide Improves Efficacy of Mesenchymal Stromal Cells During Sepsis by Production of Specialized Proresolving Lipid Mediators, Critical Care Medicine, PMID:27513357.',27513357),
	(674,'amc2056','Shinohara M, Kibi M, Riley IR, Chiang N, Dalli J, Kraft BD, Piantadosi CA, {Choi AMK}, Serhan CN,','2014, Cell-Cell interactions and bronchoconstrictor eicosanoid reduction with inhaled carbon monoxide and resolvin D1, American Journal of Physiology - Lung Cellular and Molecular Physiology, 307:L746-57, PMID:25217660, PMCID:PMC4233292.',25217660),
	(676,'amc2056','Haspel JA, Chettimada S, Shaik RS, Chu JH, Raby BA, Cernadas M, et al.','2014, Circadian rhythm reprogramming during lung inflammation, Nature Communications, 5:4753, PMID:25208554, PMCID:PMC4162491.',25208554),
	(677,'amc2056','Jiang Z, Lao T, Qiu W, Polverino F, Gupta K, Guo F, et al.','2016, A chronic obstructive pulmonary disease susceptibility gene, FAM13A, regulates protein stability of β-catenin, American Journal of Respiratory and Critical Care Medicine, 194:185-97, PMID:26862784, PMCID:PMC5003213.',26862784),
	(678,'amc2056','Dalvi P, Sharma H, Chinnappan M, Sanderson M, Allen J, Zeng R, {Choi A}, O\'Brien-Ladner A, Dhillon NK,','2016, Enhanced autophagy in pulmonary endothelial cells on exposure to HIV-Tat and morphine: Role in HIV-related pulmonary arterial hypertension, Autophagy1-19, PMID:27723373, PMCID:PMC5173268.',27723373),
	(679,'jiy2013','{Yun J}, Mullarky E, Lu C, Bosch KN, Kavalier A, Rivera K, et al.','2015, Vitamin C selectively kills KRAS and BRAF mutant colorectal cancer cells by targeting GAPDH, Science (New York, N.Y.), 350:1391-6.',26541605),
	(680,'jiy2013','{Yun J}, Johnson JL, Hanigan CL, Locasale JW','2012, Interactions between epigenetics and metabolism in cancers, Frontiers in oncology, 2:163.',23162793),
	(681,'jiy2013','Ko S, Kim H, {Yun J}, Yee A, Arrowsmith CH, Cheong C, Lee W','2011, Solution structure of MTH1821, a putative structure homologue to RNA polymerase alpha subunit from Methanobacterium thermoautotrophicum, Proteins, 79:1347-51.',21387412),
	(682,'amc2056','Siempos II, Ntaidou TK, Filippidis FT, {Choi AMK},','2014, RETRACTED: Effect of early versus late or no tracheostomy on mortality of critically ill patients receiving mechanical ventilation: a systematic review and meta-analysis, The Lancet. Respiratory medicine, PMID:24981963.',24981963),
	(683,'jsa7002','Vest JR, {Ancker JS},','2017, Health information exchange in the wild: The association between organizational capability and perceived utility of clinical event notifications in ambulatory and community care, Journal of the American Medical Informatics Association, 24:39-46, PMID:27107436.',27107436),
	(685,'jsa7002','{Ancker JS}, Brenner S, Richardson JE, Silver M, Kaushal R,','2015, Trends in public perceptions of electronic health records during early years of meaningful use, The American journal of managed care, 21:e487-93, PMID:26625503.',26625503),
	(686,'amc2056','Ash SY, Harmouche R, Ross JC, Diaz AA, Hunninghake GM, Putman RK, Onieva J, Martinez FJ, {Choi AM}, Lynch DA, Hatabu H, Rosas IO, Estepar RSJ, Washko GR,','2016, The Objective Identification and Quantification of Interstitial Lung Abnormalities in Smokers, Academic Radiology, PMID:27989445.',27989445),
	(687,'amc2056','Ghanta S, Tsoyi K, Liu X, Nakahira K, Ith B, Coronata AA, Fredenburgh LE, Englert JA, Piantadosi CA, {Choi AMK}, Perrella MA,','2017, Mesenchymal stromal cells deficient in autophagy proteins are susceptible to oxidative injury and mitochondrial dysfunction, American Journal of Respiratory Cell and Molecular Biology, 56:300-309, PMID:27636016.',27636016),
	(688,'szc2009','Morrow JD, Zhou X, Lao T, Jiang Z, Demeo DL, Cho MH, Qiu W, {Cloonan S}, Pinto-Plata V, Celli B, Marchetti N, Criner GJ, Bueno R, Washko GR, Glass K, Quackenbush J, Choi AMK, Silverman EK, Hersh CP,','2017, Functional interactors of three genome-wide association study genes are differentially expressed in severe chronic obstructive pulmonary disease lung tissue, Scientific Reports, 7:44232, PMID:28287180, PMCID:PMC5347019.',28287180),
	(689,'kin2007','Ghanta S, Tsoyi K, Liu X, {Nakahira K}, Ith B, Coronata AA, et al.','2017, Mesenchymal stromal cells deficient in autophagy proteins are susceptible to oxidative injury and mitochondrial dysfunction, American Journal of Respiratory Cell and Molecular Biology, 56:300-309, PMID:27636016.',27636016),
	(690,'kin2007','{Nakahira K}, Kyung SY, Rogers AJ, Gazourian L, Youn S, Massaro AF, et al.','2013, Circulating mitochondrial DNA in patients in the ICU as a marker of mortality: derivation and validation., PLoS medicine, 10:e1001577; discussion e1001577, PMID:24391478, PMCID:PMC3876981.',24391478),
	(692,'amc2056','Morrow JD, Zhou X, Lao T, Jiang Z, Demeo DL, Cho MH, et al.','2017, Functional interactors of three genome-wide association study genes are differentially expressed in severe chronic obstructive pulmonary disease lung tissue, Scientific Reports, 7:44232, PMID:28287180, PMCID:PMC5347019.',28287180),
	(695,'amc2056','Klionsky DJ, Abeliovich H, Agostinis P, Agrawal DK, Aliev G, Askew DS, et al.','2016, Erratum to: Guidelines for the use and interpretation of assays for monitoring autophagy (3rd edition) (Autophagy, 12, 1, 1-222, 10.1080/15548627.2015.1100356, Autophagy, 12:443, PMID:26902590, PMCID:PMC4835955.',26902590),
	(696,'jsa7002','{Ancker JS}, Edwards A, Nosal S, Hauser D, Mauer E, Kaushal R,','2017, Effects of workload, work complexity, and repeated alerts on alert fatigue in a clinical decision support system, BMC Medical Informatics and Decision Making, 17:36, PMID:28395667, PMCID:PMC5387195.',28395667),
	(697,'str2020','Jeong Kim H, Joe Y, Kim SK, Park SU, Park J, Chen Y, et al.','2017, Carbon monoxide protects against hepatic steatosis in mice by inducing sestrin-2 via the PERK-eIF2α-ATF4 pathway, Free Radical Biology and Medicine, 110:81-91, PMID:28578014.',28578014),
	(698,'str2020','Kim SK, Joe Y, Chen Y, Ryu J, Lee JH, Cho GJ, {Ryter SW}, Chung HT,','2017, Carbon monoxide decreases interleukin-1β levels in the lung through the induction of pyrin, Cellular and Molecular Immunology, 14:349-359, PMID:26435068, PMCID:PMC5380940.',26435068),
	(699,'str2020','Klionsky DJ, Abdelmohsen K, Abe A, Abedin MJ, Abeliovich H, Arozena AA, et al.','2016, Guidelines for the use and interpretation of assays for monitoring autophagy (3rd edition), Autophagy, 12:1-222, PMID:26799652, PMCID:PMC4835977.',26799652),
	(700,'kin2007','Finkelsztein EJ, Jones DS, Ma KC, Pabón MA, Delgado T, {Nakahira K}, et al.','2017, Comparison of qSOFA and SIRS for predicting adverse outcomes of patients with suspicion of sepsis outside the intensive care unit, Critical Care, 21:73, PMID:28342442, PMCID:PMC5366240.',28342442),
	(701,'kin2007','Harrington JS, Choi AMK, {Nakahira K},','2017, Mitochondrial DNA in Sepsis, Current Opinion in Critical Care284-290, PMID:28562385.',28562385),
	(702,'amc2056','Morrow JD, Cho MH, Hersh CP, Pinto-Plata V, Celli B, Marchetti N, et al.','2016, DNA methylation profiling in human lung tissue identifies genes associated with COPD, Epigenetics, 11:1-10, PMID:27564456, PMCID:PMC5094634.',27564456),
	(703,'amc2056','Finkelsztein EJ, Jones DS, Ma KC, Pabón MA, Delgado T, Nakahira K, Arbo JE, Berlin DA, Schenck EJ, {Choi AMK}, Siempos II,','2017, Comparison of qSOFA and SIRS for predicting adverse outcomes of patients with suspicion of sepsis outside the intensive care unit, Critical Care, 21:73, PMID:28342442, PMCID:PMC5366240.',28342442);
ALTER TABLE `T32demo_citation` ENABLE KEYS;
UNLOCK TABLES;


LOCK TABLES `T32demo_grants` WRITE;
ALTER TABLE `T32demo_grants` DISABLE KEYS;
INSERT INTO `T32demo_grants` (`id`, `mentor_personID`, `grant_ID`) VALUES 
	(1,'johnsos','1'),
	(2,'amc2056','1');
ALTER TABLE `T32demo_grants` ENABLE KEYS;
UNLOCK TABLES;


LOCK TABLES `T32demo_mentees` WRITE;
ALTER TABLE `T32demo_mentees` DISABLE KEYS;
INSERT INTO `T32demo_mentees` (`id`, `lastName`, `firstName`, `middleName`, `mentee_personID`, `pastCurrent`, `years`) VALUES 
	(1,'Nakahira','Kiichi',NULL,'kin2007','Current','2010-Present'),
	(2,'Ryter','Stefan','W.','str2020','Current','2014-Present'),
	(3,'Yun','Jihye',NULL,'jiy2013','Past','2010-2015'),
	(4,'Cloonan','Suzanne',NULL,'szc2009','Current','2013-Present'),
	(5,'Ancker','Jessica','S.','jsa7002','Current','2012-Present'),
	(6,'Bales','Michael',NULL,'meb7002','Past','2009-2015'),
	(7,'Campion','Thomas',NULL,'thc2015','Past','2011-2016');
ALTER TABLE `T32demo_mentees` ENABLE KEYS;
UNLOCK TABLES;


LOCK TABLES `T32demo_mentors` WRITE;
ALTER TABLE `T32demo_mentors` DISABLE KEYS;
INSERT INTO `T32demo_mentors` (`id`, `lastName`, `firstName`, `middleName`, `mentor_personID`) VALUES 
	(1,'Johnson','Stephen','B.','johnsos'),
	(2,'Choi','Augustine','M.K.','amc2056');
ALTER TABLE `T32demo_mentors` ENABLE KEYS;
UNLOCK TABLES;


LOCK TABLES `T32demo_mentors_mentees` WRITE;
ALTER TABLE `T32demo_mentors_mentees` DISABLE KEYS;
INSERT INTO `T32demo_mentors_mentees` (`id`, `mentor_personID`, `mentee_personID`) VALUES 
	(1,'amc2056','kin2007'),
	(2,'amc2056','str2020'),
	(3,'amc2056','jiy2013'),
	(4,'amc2056','szc2009'),
	(5,'johnsos','jsa7002'),
	(6,'johnsos','meb7002'),
	(7,'johnsos','thc2015');
ALTER TABLE `T32demo_mentors_mentees` ENABLE KEYS;
UNLOCK TABLES;




SET FOREIGN_KEY_CHECKS = @PREVIOUS_FOREIGN_KEY_CHECKS;


