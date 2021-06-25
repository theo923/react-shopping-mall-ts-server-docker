BEGIN TRANSACTION;

INSERT into users (id, username, joined, orders) values ('9999', '234', '2019-01-01', '{}');
INSERT into login (id, hash, username) values ('9999', '$2a$10$GongGihhwQtY.rv4BePYQuNG8Gxuypu/nMd5saK0jkZtXzu6/9dCG','234');

COMMIT;