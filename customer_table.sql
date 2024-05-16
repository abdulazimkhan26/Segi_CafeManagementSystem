CREATE TABLE cart_tempadd(
      id INT NOT NULL PRIMARY KEY IDENTITY,
      item_name varchar(100) NOT NULL,
      item_quantity int NOT NULL,
      item_prize float NOT NULL);

	  INSERT INTO cart_tempadd VALUES('Nasi Lemak', 1, 5.2);