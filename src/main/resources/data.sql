INSERT INTO Author(Id, firstname, lastname) VALUES (1, 'Jakub', 'Tworek');

INSERT INTO Content(Id, Title, Text) VALUES(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum risus vitae elementum sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;');
INSERT INTO Content(Id, Title, Text) VALUES(2, 'Lorem Dipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum risus vitae elementum sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;');

INSERT INTO Magazine(Id, Name) VALUES (1, 'Newsweek');

INSERT INTO Article(Id, Date, Timestamp, Author_Id, Magazine_Id, Content_Id) VALUES (1, current_date(), CURRENT_TIMESTAMP, 1, 1, 1);
INSERT INTO Article(Id, Date, Timestamp, Author_Id, Magazine_Id, Content_Id) VALUES (2, current_date(), CURRENT_TIMESTAMP, 1, 1, 2);