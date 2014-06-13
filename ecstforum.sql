-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  PRIMARY KEY (`courseid`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=264 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `course_name`, `major`) VALUES
(6, 'CS120 Introduction to Web Site Development', 'Computer Science'),
(5, 'CS101 Introduction to Higher Education for CS Majors', 'Computer Science'),
(7, 'CS122 Using Relational Databases and SQL', 'Computer Science'),
(8, 'CS160 Introduction to Computers', 'Computer Science'),
(9, 'CS190 BASIC Programming', 'Computer Science'),
(10, 'CS201 Introduction to Programming', 'Computer Science'),
(11, 'CS202 Introduction to Object Oriented Programming', 'Computer Science'),
(12, 'CS203 Programming with Data Structures', 'Computer Science'),
(13, 'CS242 C Programming', 'Computer Science'),
(14, 'CS245 Introduction to Computer Organization', 'Computer Science'),
(15, 'CS290 Introduction to FORTRAN Programming', 'Computer Science'),
(16, 'CS301 Computer Ethics in the Information Age', 'Computer Science'),
(17, 'CS312 Data Structures and Algorithms', 'Computer Science'),
(18, 'CS320 Web and Internet Programming', 'Computer Science'),
(19, 'CS332C Advanced C++ Programming', 'Computer Science'),
(20, 'CS332F Functional Programming', 'Computer Science'),
(21, 'CS332L Logic Programming', 'Computer Science'),
(22, 'CS337 Software Design', 'Computer Science'),
(23, 'CS340 Assembly Language and Systems Programming', 'Computer Science'),
(24, 'CS342 Object Oriented Programming Using C++', 'Computer Science'),
(25, 'CS345 UNIX and Shell Programming', 'Computer Science'),
(26, 'CS370 Parallel and Distributed Programming', 'Computer Science'),
(27, 'CS386 Introduction to Automata Theory', 'Computer Science'),
(28, 'CS398 Cooperative Education', 'Computer Science'),
(29, 'CS422 Principles of Database Systems', 'Computer Science'),
(30, 'CS437 Software Engineering', 'Computer Science'),
(31, 'CS440 Introduction to Operating Systems', 'Computer Science'),
(32, 'CS447 Computer Network Configuration and Management', 'Computer Science'),
(33, 'CS450 Computer Graphics', 'Computer Science'),
(34, 'CS451 Multimedia Software Systems', 'Computer Science'),
(35, 'CS454 Topics in Advanced Computer Science', 'Computer Science'),
(36, 'CS460 Artificial Intelligence', 'Computer Science'),
(37, 'CS461 Machine Learning', 'Computer Science'),
(38, 'CS470 Computer Networking Protocols', 'Computer Science'),
(39, 'CS480 Cryptography and Information Security', 'Computer Science'),
(40, 'CS486 Computability and Intractability', 'Computer Science'),
(41, 'CS488 Compilers', 'Computer Science'),
(42, 'CS490 Computer Science Recapitulation', 'Computer Science'),
(43, 'CS496 Software Design Laboratory', 'Computer Science'),
(44, 'CS499 Undergraduate Directed Study', 'Computer Science'),
(45, 'CS512 Design and Analysis of Algorithms', 'Computer Science'),
(46, 'CS520 Web Programming', 'Computer Science'),
(47, 'CS522 Advanced Database Systems', 'Computer Science'),
(48, 'CS537 Advanced Software Engineering', 'Computer Science'),
(49, 'CS540 Advanced Topics in Operating Systems', 'Computer Science'),
(50, 'CS550 Advanced Computer Graphics', 'Computer Science'),
(51, 'CS560 Advanced Topics in Artificial Intelligence', 'Computer Science'),
(52, 'CS565 Reliable Computing', 'Computer Science'),
(53, 'CS570 Networks and Distributed Processing', 'Computer Science'),
(54, 'CS575 Human Issues in Computing', 'Computer Science'),
(55, 'CS580 Internet Security Protocols', 'Computer Science'),
(56, 'CS581 Computer and Network Security', 'Computer Science'),
(57, 'CS586 Theory of Computing', 'Computer Science'),
(58, 'CS588 Languages and Translators', 'Computer Science'),
(59, 'CS590 Advanced Software Architecture', 'Computer Science'),
(60, 'CS594 Graduate Seminar', 'Computer Science'),
(61, 'CS596 Comprehensive Examination', 'Computer Science'),
(62, 'CS598 Graduate Directed Study', 'Computer Science'),
(63, 'CS599 Thesis or Project', 'Computer Science'),
(64, 'EE 154 Special Topics in Electrical Engineering', 'Electrical and Computer Engineering'),
(65, 'EE 204 Circuit Analysis', 'Electrical and Computer Engineering'),
(66, 'EE 210 Electrical Measurements Laboratory', 'Electrical and Computer Engineering'),
(67, 'EE 211 Electric Circuits Laboratory', 'Electrical and Computer Engineering'),
(68, 'EE 244 Digital Engineering', 'Electrical and Computer Engineering'),
(69, 'EE 246 Digital Logic Laboratory', 'Electrical and Computer Engineering'),
(70, 'EE 290 Electrical Engineering Computing', 'Electrical and Computer Engineering'),
(71, 'EE 304 Electric Machines', 'Electrical and Computer Engineering'),
(72, 'EE 314 Electromagnetic Energy Conversion Laboratory', 'Electrical and Computer Engineering'),
(73, 'EE 317 Electronics Laboratory I', 'Electrical and Computer Engineering'),
(74, 'EE 320 Analog Communication Systems', 'Electrical and Computer Engineering'),
(75, 'EE 321 Communications Laboratory', 'Electrical and Computer Engineering'),
(76, 'EE 330 Writing for Electrical Engineers', 'Electrical and Computer Engineering'),
(77, 'EE 332 Systems Analysis', 'Electrical and Computer Engineering'),
(78, 'EE 334 Probability and Random Processes', 'Electrical and Computer Engineering'),
(79, 'EE 336 Electronics', 'Electrical and Computer Engineering'),
(80, 'EE 340 Electronics Laboratory II', 'Electrical and Computer Engineering'),
(81, 'EE 344 Combinatorial Logic and Design of Sequential Circuits', 'Electrical and Computer Engineering'),
(82, 'EE 345 Microcomputer Programming', 'Electrical and Computer Engineering'),
(83, 'EE 347 Computer Logic Design', 'Electrical and Computer Engineering'),
(84, 'EE 360 Control Systems Theory I', 'Electrical and Computer Engineering'),
(85, 'EE 371 Analog Electronics', 'Electrical and Computer Engineering'),
(86, 'EE 372 Digital Electronics', 'Electrical and Computer Engineering'),
(87, 'EE 412 Antennas', 'Electrical and Computer Engineering'),
(88, 'EE 413 Systems Engineering', 'Electrical and Computer Engineering'),
(89, 'EE 420 Digital Communication Systems', 'Electrical and Computer Engineering'),
(90, 'EE 421 Coding for Communications', 'Electrical and Computer Engineering'),
(91, 'EE 422 Digital Signal Processing', 'Electrical and Computer Engineering'),
(92, 'EE 424 Fiber Optics', 'Electrical and Computer Engineering'),
(93, 'EE 426 Digital Image Processing', 'Electrical and Computer Engineering'),
(94, 'EE 427 Speech Signal Processing', 'Electrical and Computer Engineering'),
(95, 'EE 428 Digital Signal Processing Laboratory', 'Electrical and Computer Engineering'),
(96, 'EE 432 Power Transmission Lines', 'Electrical and Computer Engineering'),
(97, 'EE 433 Electric Power System Analysis', 'Electrical and Computer Engineering'),
(98, 'EE 434 Electromagnetic Energy Conversion', 'Electrical and Computer Engineering'),
(99, 'EE 436 Analog Integrated Circuits', 'Electrical and Computer Engineering'),
(100, 'EE 437 Electric and Magnetic Fields', 'Electrical and Computer Engineering'),
(101, 'EE 439 Digital Integrated Circuits', 'Electrical and Computer Engineering'),
(102, 'EE 440 Data Communications and Networking', 'Electrical and Computer Engineering'),
(103, 'EE 442 Multimedia Networking', 'Electrical and Computer Engineering'),
(104, 'EE 443 Programmable Logic Laboratory', 'Electrical and Computer Engineering'),
(105, 'EE 444 Computer Architecture', 'Electrical and Computer Engineering'),
(106, 'EE 445 Microprocessor Interface Design', 'Electrical and Computer Engineering'),
(107, 'EE 446 Embedded Architectures', 'Electrical and Computer Engineering'),
(108, 'EE 447 Backend Compiler Technology', 'Electrical and Computer Engineering'),
(109, '', 'Electrical and Computer Engineering'),
(110, 'EE 448 HDL Design and Simulation Laboratory', 'Electrical and Computer Engineering'),
(111, 'EE 449 Computer Organization', 'Electrical and Computer Engineering'),
(112, 'EE 454 Special Topics in Electrical Engineering', 'Electrical and Computer Engineering'),
(113, 'EE 460 Control Systems Theory II', 'Electrical and Computer Engineering'),
(114, 'EE 461 Discrete-Time Control Systems', 'Electrical and Computer Engineering'),
(115, 'EE 462 State Space Control Systems', 'Electrical and Computer Engineering'),
(116, 'EE 468 Control Systems Laboratory', 'Electrical and Computer Engineering'),
(117, 'EE 472 Optoelectronics', 'Electrical and Computer Engineering'),
(118, 'EE 481 Introduction to Robotics', 'Electrical and Computer Engineering'),
(119, 'EE 483 Power Electronics', 'Electrical and Computer Engineering'),
(120, 'EE 491 Robotics Laboratory', 'Electrical and Computer Engineering'),
(121, 'EE 496 Senior Design', 'Electrical and Computer Engineering'),
(122, 'EE 498 Cooperative Education', 'Electrical and Computer Engineering'),
(123, 'EE 499 Undergraduate Directed Study', 'Electrical and Computer Engineering'),
(124, 'EE 513 - System Analysis and Design', 'Electrical and Computer Engineering'),
(125, 'EE 514 - Systems Risk Analysis', 'Electrical and Computer Engineering'),
(126, 'EE 515 - Systems Performance Analysis', 'Electrical and Computer Engineering'),
(127, 'EE 516 - Systems Architecture', 'Electrical and Computer Engineering'),
(128, 'EE 520 - Advanced Digital Communications I', 'Electrical and Computer Engineering'),
(129, 'EE 521 - Advanced Digital Communications II', 'Electrical and Computer Engineering'),
(130, 'EE 522 - Principles of Signal Compression', 'Electrical and Computer Engineering'),
(131, 'EE 523 - Wireless Communications', 'Electrical and Computer Engineering'),
(132, 'EE 524 Simulation of Communication Systems', 'Electrical and Computer Engineering'),
(133, 'EE 525 Optical Communications', 'Electrical and Computer Engineering'),
(134, 'EE 533 Computer Method in Power Systems', 'Electrical and Computer Engineering'),
(135, 'EE 534 Power System Stability', 'Electrical and Computer Engineering'),
(136, 'EE 535 Power System Protective Relaying', 'Electrical and Computer Engineering'),
(137, 'EE 537 Faulted Power Systems', 'Electrical and Computer Engineering'),
(138, 'EE 544 Computer Networks and Internets', 'Electrical and Computer Engineering'),
(139, 'EE 545 - Mobile Ad Hoc Networks', 'Electrical and Computer Engineering'),
(140, 'EE 547 - Computer System Architecture', 'Electrical and Computer Engineering'),
(141, 'EE 548 High Performance Computing', 'Electrical and Computer Engineering'),
(142, 'EE 554 Special Topics in Electrical Engineering', 'Electrical and Computer Engineering'),
(143, 'EE 560 - Linear Systems Analysis', 'Electrical and Computer Engineering'),
(144, 'EE 561 Stochastic Systems and Estimation', 'Electrical and Computer Engineering'),
(145, 'EE 562 Advanced Digital Control Systems', 'Electrical and Computer Engineering'),
(146, 'EE 563 Optimal Control Theory', 'Electrical and Computer Engineering'),
(147, 'EE 585 - Neural Computation', 'Electrical and Computer Engineering'),
(148, 'EE 596 Comprehensive Examination', 'Electrical and Computer Engineering'),
(149, 'EE 597 Graduate Research', 'Electrical and Computer Engineering'),
(150, 'EE 598 Graduate Directed Study', 'Electrical and Computer Engineering'),
(151, 'EE 599 Thesis', 'Electrical and Computer Engineering'),
(152, 'EE 900 Graduate Studies', 'Electrical and Computer Engineering'),
(153, 'CE 154 Special Topic in Civil Engineering', 'Civil Engineering'),
(154, 'CE 190 Introduction To CAD', 'Civil Engineering'),
(155, 'CE 195 Civil Engineering Design I', 'Civil Engineering'),
(156, 'CE 201 Statics', 'Civil Engineering'),
(157, 'CE 202 Plane Surveying', 'Civil Engineering'),
(158, 'CE 205 Strength of Materials I', 'Civil Engineering'),
(159, 'CE 208 Statics and Strength of Materials', 'Civil Engineering'),
(160, 'CE 210 Matrix Algebra for Engineers', 'Civil Engineering'),
(161, 'CE 211 Statistics and Probability for Engineers', 'Civil Engineering'),
(162, 'CE 220 Our Oceans and Our Future', 'Civil Engineering'),
(163, 'CE 290 Numerical Methods for Engineers', 'Civil Engineering'),
(164, 'CE 303 Fluid Mechanics I', 'Civil Engineering'),
(165, 'CE 306 Communication for Civil Engineers', 'Civil Engineering'),
(166, 'CE 312 Strength of Materials Laboratory I', 'Civil Engineering'),
(167, 'CE 313 Fluid Mechanics Laboratory I', 'Civil Engineering'),
(168, 'CE 320 Dynamics I', 'Civil Engineering'),
(169, 'CE 352 Technological Aspects of Urban Environment', 'Civil Engineering'),
(170, 'CE 358 Environment, Earth Systems and Technology', 'Civil Engineering'),
(171, 'CE 360 Structural Mechanics I', 'Civil Engineering'),
(172, 'CE 361 Introduction to Structural Design', 'Civil Engineering'),
(173, 'CE 364 Concrete Laboratory', 'Civil Engineering'),
(174, 'CE 365 Specifications and Cost Estimating', 'Civil Engineering'),
(175, 'CE 366 Soil Mechanics I', 'Civil Engineering'),
(176, 'CE 368 Soil Mechanics Laboratory', 'Civil Engineering'),
(177, 'CE 370 Transportation Engineering', 'Civil Engineering'),
(178, 'CE 372 Asphaltic Materials Laboratory', 'Civil Engineering'),
(179, 'CE 381 Computer Aided Design Laboratory', 'Civil Engineering'),
(180, 'CE 382 Computer Aided Structural Analysis, Design and Experimentation Laboratory', 'Civil Engineering'),
(181, 'CE 384 Introduction to Environmental Engineering', 'Civil Engineering'),
(182, 'CE 386 Design of Water Resources Systems', 'Civil Engineering'),
(183, 'CE 387 Hydraulics I', 'Civil Engineering'),
(184, 'CE 398 Cooperative Education', 'Civil Engineering'),
(185, 'CE 402 Strength of Materials II', 'Civil Engineering'),
(186, 'CE 413 Fluid Mechanics Laboratory II', 'Civil Engineering'),
(187, 'CE 454 Special Topics in Civil Engineering', 'Civil Engineering'),
(188, 'CE 460 Structural Mechanics II', 'Civil Engineering'),
(189, 'CE 461 Design of Steel Structures', 'Civil Engineering'),
(190, 'CE 462 Reinforced Concrete Design I', 'Civil Engineering'),
(191, 'CE 463 Timber and Masonry Design', 'Civil Engineering'),
(192, 'CE 465 Seismic Design', 'Civil Engineering'),
(193, 'CE 467 Foundations I', 'Civil Engineering'),
(194, 'CE 471 Highway Engineering', 'Civil Engineering'),
(195, 'CE 472 Highway and Airport Pavement Design', 'Civil Engineering'),
(196, 'CE 473 Pavement Design Laboratory', 'Civil Engineering'),
(197, 'CE 474 Traffic Engineering', 'Civil Engineering'),
(198, 'CE 475 Geomatics', 'Civil Engineering'),
(199, 'CE 483 Hydrology I', 'Civil Engineering'),
(200, 'CE 484 Sewerage and Sewage Treatment', 'Civil Engineering'),
(201, 'CE 485 Water Supply', 'Civil Engineering'),
(202, 'CE 486 Groundwater Contamination and Remediation', 'Civil Engineering'),
(203, 'CE 495 Civil Engineering Design Project', 'Civil Engineering'),
(204, 'CE 496 Civil Engineering Design Project ', 'Civil Engineering'),
(205, 'CE 499 Undergraduate Directed Study', 'Civil Engineering'),
(206, 'CE 554 Advanced Topics in Civil Engineering', 'Civil Engineering'),
(207, 'CE 560 Structural Mechanics III', 'Civil Engineering'),
(208, 'CE 561 Advanced Steel Design', 'Civil Engineering'),
(209, 'CE 562 Reinforced Concrete Design II', 'Civil Engineering'),
(210, 'CE 563 Matrix Computer Analysis of Structures', 'Civil Engineering'),
(211, 'CE 564 Numerical Methods in Structural Analysis', 'Civil Engineering'),
(212, 'CE 565 Dynamics of Structures', 'Civil Engineering'),
(213, 'CE 566 Soil Mechanics II', 'Civil Engineering'),
(214, 'CE 567 Foundations II', 'Civil Engineering'),
(215, 'CE 569 Earth Structures', 'Civil Engineering'),
(216, 'CE 570 Soil Dynamics', 'Civil Engineering'),
(217, 'CE 571 Highway Design', 'Civil Engineering'),
(218, 'CE 572 Plates and Shells', 'Civil Engineering'),
(219, 'CE 574 Traffic Flow Analysis', 'Civil Engineering'),
(220, 'CE 575 Urban Transportation Planning', 'Civil Engineering'),
(221, 'CE 577 Bridge Engineering', 'Civil Engineering'),
(222, 'CE 579 Environmental Mass Transfer', 'Civil Engineering'),
(223, 'CE 580 Environmental Transport', 'Civil Engineering'),
(224, 'CE 581 Modeling Techniques in Hydraulic Engineering', 'Civil Engineering'),
(225, 'CE 582 Statistical Hydrology', 'Civil Engineering'),
(226, 'CE 583 Hydrology II', 'Civil Engineering'),
(227, 'CE 586 Open Channel Hydraulics', 'Civil Engineering'),
(228, 'CE 587 Hydraulics II', 'Civil Engineering'),
(229, 'CE 588 Hydraulic Structures', 'Civil Engineering'),
(230, 'CE 589 Coastal Engineering', 'Civil Engineering'),
(231, 'CE 596 Comprehensive Examination', 'Civil Engineering'),
(232, 'CE 597 Graduate Research', 'Civil Engineering'),
(233, 'CE 598 Graduate Directed Study', 'Civil Engineering'),
(234, 'CE 599 Thesis', 'Civil Engineering'),
(235, 'ME 103 Introduction to Mechanical Design', 'Mechanical Engineering'),
(236, 'ME 201 Statics', 'Mechanical Engineering'),
(237, 'ME 204 Mechanical Engineering Measurements and Instrumentation', 'Mechanical Engineering'),
(238, 'ME 205 Strength of Materials I ', 'Mechanical Engineering'),
(239, 'ME 210 Matrix Algebra for Engineers ', 'Mechanical Engineering'),
(240, 'ME 211 Statistics and Probability for Engineers ', 'Mechanical Engineering'),
(241, 'ME 303 Fluid Mechanics I ', 'Mechanical Engineering'),
(242, 'ME 306 Heat Transfer I', 'Mechanical Engineering'),
(243, 'ME 310 Mechanical Engr. Writing Laboratory', 'Mechanical Engineering'),
(244, 'ME 312 Strength of Materials Laboratory I', 'Mechanical Engineering'),
(245, 'ME 313 Fluid Mechanics Laboratory I', 'Mechanical Engineering'),
(246, 'ME 315 Thermal Systems Laboratory I', 'Mechanical Engineering'),
(247, 'ME 320 Dynamics I', 'Mechanical Engineering'),
(248, 'ME 321 Kinematics of Mechanisms', 'Mechanical Engineering'),
(249, 'ME 323 Machine Design I', 'Mechanical Engineering'),
(250, 'ME 326 Thermodynamics', 'Mechanical Engineering'),
(251, 'ME 327 Manufacturing Processes', 'Mechanical Engineering'),
(252, 'ME 421 Dynamics of Mechanisms', 'Mechanical Engineering'),
(253, 'ME 497 Mechanical Engineering Senior Project', 'Mechanical Engineering'),
(254, 'TECH 150 Introduction to Higher Education in Technology', 'Technology'),
(255, 'TECH 301 Transition to Cal State L.A. for Technology Majors', 'Technology'),
(256, 'TECH 384   Foundations of'' Technology Education', 'Technology'),
(257, 'TECH 491  Technology Education in the Middle Grades', 'Technology'),
(258, 'TECH 492 Technology Education in the High School', 'Technology'),
(259, 'TECH 493 Technology Education Facilities: Planning, Construction, Equipment, and Maintenance', 'Technology'),
(260, 'TECH 494  Industrial and Technology Education Curriculum', 'Technology'),
(261, 'TECH 100  Introduction to Automotive Mechanisms', 'Technology'),
(262, 'TECH 370 Power, Energy and Transportation', 'Technology'),
(263, 'TECH 405  Engine Design and Performance', 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `courseid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`questionid`),
  KEY `courseid` (`courseid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionid`, `question`, `courseid`, `userid`) VALUES
(30, 'How do i boost up a speed of emulator?', 60, 16);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `reply` varchar(255) NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `question_id` (`question_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`replyid`, `question_id`, `user_id`, `course_id`, `reply`) VALUES
(23, 30, 17, 60, 'Make sure you check "host gpu" option while creating it.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fullname`, `username`, `email`, `major`, `password`) VALUES
(17, 'Yakun', 'yzhu', 'yakunzhu@email.com', 'Computer Science', 'abcd'),
(16, 'Ashish', 'apatel', 'ashishpatel@email.com', 'Computer Science', 'abcd'),
(15, 'Gaurav', 'gshah', 'gauravshah@email.com', 'Computer Science', 'abcd');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
