DROP TABLE IF EXISTS `Notification`;
CREATE TABLE IF NOT EXISTS Notification (
                              Id integer NOT NULL CONSTRAINT Notification_pk PRIMARY KEY,
                              Article_Id integer NOT NULL,
                              Author_Id integer NOT NULL,
                              Timestamp varchar(255) NOT NULL,
                              Type varchar(255) NOT NULL
);

INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1001, 1000, 1000, '2023-12-17 08:32:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1002, 1000, 1001, '2023-12-17 08:35:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1003, 1001, 1000, '2023-12-17 10:17:45.123', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1004, 1001, 1001, '2023-12-17 10:19:45.123', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1005, 1001, 1002, '2023-12-17 10:20:45.123', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1006, 1002, 1000, '2023-12-17 12:03:30.987', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1007, 1003, 1000, '2023-12-17 13:48:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1008, 1003, 1001, '2023-12-17 13:52:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1009, 1003, 1002, '2023-12-17 13:55:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1010, 1003, 1003, '2023-12-17 13:58:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1011, 1004, 1000, '2023-12-17 15:32:00.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1012, 1004, 1001, '2023-12-17 15:35:00.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1013, 1005, 1000, '2023-12-17 17:17:45.456', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1014, 1005, 1001, '2023-12-17 17:18:45.456', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1015, 1006, 1000, '2023-12-17 19:03:30.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1016, 1006, 1001, '2023-12-17 19:04:30.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1017, 1006, 1002, '2023-12-17 19:07:30.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1018, 1007, 1000, '2023-12-17 20:48:15.321', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1019, 1008, 1000, '2023-12-17 22:32:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1020, 1008, 1001, '2023-12-17 22:35:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1021, 1008, 1002, '2023-12-17 22:32:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1022, 1008, 1003, '2023-12-17 22:36:00.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1023, 1009, 1000, '2023-12-17 00:18:45.987', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1024, 1009, 1001, '2023-12-17 00:19:45.987', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1025, 1010, 1000, '2023-12-18 02:01:30.654', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1026, 1010, 1001, '2023-12-18 02:05:30.654', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1027, 1011, 1000, '2023-12-18 03:47:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1028, 1011, 1001, '2023-12-18 03:48:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1029, 1011, 1002, '2023-12-18 03:49:15.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1030, 1012, 1000, '2023-12-18 05:32:00.123', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1031, 1013, 1000, '2023-12-18 07:16:45.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1032, 1013, 1001, '2023-12-18 07:18:45.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1033, 1013, 1002, '2023-12-18 07:19:45.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1034, 1013, 1003, '2023-12-18 07:21:45.789', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1035, 1014, 1000, '2023-12-18 09:02:30.000', 'LIKE');
INSERT INTO `Notification`(`Id`, `Article_Id`, `Author_Id`, `Timestamp`, `Type`) VALUES (1036, 1014, 1001, '2023-12-18 09:05:30.000', 'LIKE');