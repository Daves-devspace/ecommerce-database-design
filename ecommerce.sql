
CREATE TABLE brand (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE product_category (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE color (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE size_category (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE size_option (
  id INTEGER PRIMARY KEY,
  size_category_id INTEGER,
  label TEXT,
  FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);

CREATE TABLE attribute_type (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE attribute_category (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE product_attribute (
  id INTEGER PRIMARY KEY,
  product_id INTEGER,
  name TEXT,
  value TEXT,
  attribute_type_id INTEGER,
  attribute_category_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id),
  FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(id)
);

CREATE TABLE product (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  brand_id INTEGER,
  category_id INTEGER,
  base_price REAL,
  FOREIGN KEY (brand_id) REFERENCES brand(id),
  FOREIGN KEY (category_id) REFERENCES product_category(id)
);

CREATE TABLE product_variation (
  id INTEGER PRIMARY KEY,
  product_id INTEGER,
  size_option_id INTEGER,
  color_id INTEGER,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (size_option_id) REFERENCES size_option(id),
  FOREIGN KEY (color_id) REFERENCES color(id)
);

CREATE TABLE product_item (
  id INTEGER PRIMARY KEY,
  variation_id INTEGER,
  stock INTEGER,
  price REAL,
  FOREIGN KEY (variation_id) REFERENCES product_variation(id)
);

CREATE TABLE product_image (
  id INTEGER PRIMARY KEY,
  product_id INTEGER,
  image_url TEXT,
  FOREIGN KEY (product_id) REFERENCES product(id)
);
