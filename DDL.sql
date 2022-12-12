
CREATE TABLE publishers(
  publisher_name    varchar(50),
  address           varchar(100),
  email_address     varchar(20),
  phone_number      varchar(20),
  banking_account   varchar(50),
  PRIMARY KEY       (publisher_name)
);

CREATE TABLE sale(
  book_name         varchar(50),
  publisher_name    varchar(50),
  percentage        int,
  PRIMARY KEY       (book_name)
);

CREATE TABLE book (
  book_name       varchar(50)  NOT NULL,
  author          varchar(50),
  bookstore_id    int,
  isbn            varchar(50)  NOT NULL,
  genre           varchar(50),
  number_pages    int,
  price           numeric(10,2),
  warehouse_id    int,
  quantity        int,
  PRIMARY KEY (book_name)
);


CREATE TABLE bookstore(
  bookstore_id        int NOT NULL,
  bookstore_address   varchar(100),
  bookstore_name      varchar(50),
  PRIMARY KEY (bookstore_id)
);

CREATE TABLE warehouse(
  warehouse_id      int NOT NULL,
  name              varchar(50),
  address           varchar(100),
  PRIMARY KEY       (warehouse_id)
);

CREATE TABLE checkout_basket(
  basket_id       int NOT NULL,
  book_name       varchar(50),
  quantity        int,
  PRIMARY KEY     (basket_id)
);

CREATE TABLE book_order(
  order_number      int NOT NULL,
  account_number    int,
  order_time        date,
  total_price       int,
  address           varchar(100),
  PRIMARY KEY       (order_number)
);

CREATE TABLE book_user(
  account_number    SERIAL PRIMARY KEY,
  password          varchar(50),
  full_name         varchar(50),
  registration_time date
);

ALTER TABLE sale ADD CONSTRAINT sale_bkname FOREIGN KEY (book_name) REFERENCES book (book_name);
ALTER TABLE sale ADD CONSTRAINT sale_pbname FOREIGN KEY (publisher_name) REFERENCES publishers (publisher_name);

ALTER TABLE book ADD CONSTRAINT bk_boostoreid FOREIGN KEY (bookstore_id) REFERENCES bookstore (bookstore_id);
ALTER TABLE book ADD CONSTRAINT bk_warehouseid FOREIGN KEY (warehouse_id) REFERENCES warehouse (warehouse_id);

ALTER TABLE checkout_basket ADD CONSTRAINT cb_bnamae FOREIGN KEY (book_name) REFERENCES book (book_name);

ALTER TABLE book_order ADD CONSTRAINT order_onumber FOREIGN KEY (order_number) REFERENCES checkout_basket (basket_id);
ALTER TABLE book_order ADD CONSTRAINT order_account_number FOREIGN KEY (account_number) REFERENCES book_user (account_number);
