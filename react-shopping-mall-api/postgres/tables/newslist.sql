BEGIN TRANSACTION;

CREATE TABLE newslist (
	newsid serial PRIMARY KEY,
	newsitem TEXT UNIQUE NOT NULL,
	newsheading varchar(300) NOT NULL,
	newscontent varchar(300) NOT NULL,
	newsimage varchar(300) NOT NULL,
	newsquantity INT NOT NULL
);

INSERT INTO newslist (newsitem, newsheading, newscontent, newsquantity, newsimage)
VALUES ('PS5', 'PS5 is onsale Now!!!', 'get your PS5 asap!!!', 1, 'https://blog.playstation.com/tachyon/2021/04/51111308992_bb62e2ccaf_k.jpg?resize=1088%2C612&crop_strategy=smart');

INSERT INTO newslist (newsitem, newsheading, newscontent, newsquantity, newsimage)
VALUES ('RTX 3080', 'RTX 3080 restock!!!', 'get your display card asap!!!', 1, 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ampere/rtx-3080/images/design/geforce-rtx-3080-4-960.jpg');

INSERT INTO newslist (newsitem, newsheading, newscontent, newsquantity, newsimage)
VALUES ('MNR', 'New 3.0 Update for Monster Hunter!!!', 'get it and join the hunter community asap!!!', 1, 'https://i.ytimg.com/vi/zHNg_Q2Waco/maxresdefault.jpg');

COMMIT;