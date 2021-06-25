BEGIN TRANSACTION;

CREATE TABLE itemlist (
	itemid serial PRIMARY KEY,
	itemname TEXT UNIQUE NOT NULL,
	itemtype varchar(100) NOT NULL,
	itemprice INT NOT NULL,
	itemquantity INT NOT NULL,
	itemdescription varchar(100) NOT NULL,
	itemimage varchar(300) NOT NULL,
	limitedquantity INT NOT NULL,
	itemchecked BOOL NOT NULL
);

INSERT INTO itemlist (itemname, itemtype, itemprice, itemquantity, itemdescription, itemimage, limitedquantity, itemchecked)
VALUES ('MNR', 'Switch Games', 400, 500, 'Monster Hunter Rise JP for Switch', 'https://images-na.ssl-images-amazon.com/images/I/91AqHZOHPhL._AC_SL1500_.jpg', 5, false);

INSERT INTO itemlist (itemname, itemtype, itemprice, itemquantity, itemdescription, itemimage, limitedquantity, itemchecked)
VALUES ('RTX 3080', 'Display Card', 8000, 20, 'Nvidia RTX 3080 Graphics Card', 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ampere/rtx-3080/images/design/geforce-rtx-3080-4-960.jpg', 2, false);

INSERT INTO itemlist (itemname, itemtype, itemprice, itemquantity, itemdescription, itemimage, limitedquantity, itemchecked)
VALUES ('PS5', 'Console', 4000, 10, 'Sony Playstation 5 Console Disk Version', 'https://images-na.ssl-images-amazon.com/images/I/71PMC4DWWFL._AC_SL1500_.jpg', 2, false);

COMMIT;