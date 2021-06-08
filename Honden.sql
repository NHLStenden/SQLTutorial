CREATE TABLE cursus (
    cursus_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE group (
    groupid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    start DATE,
    cursus_id INT NOT NULL,-- FK cursus
    CONSTRAINT FK_group_cursus_cursus_id FOREIGN KEY (cursus_id) REFERENCES cursus (cursus_id)
);

CREATE TABLE hond (
    hondid INT NOT NULL,
    groupid INT NOT NULL,
    CONSTRAINT PK_hond PRIMARY KEY (hondid, groupid),
    CONSTRAINT FK_group_cursus_cursus_id FOREIGN KEY (groupid) REFERENCES group (groupid)
   -- hond fk toevoegen
)

