CREATE DATABASE IF NOT EXISTS csye6225;
USE csye6225;
CREATE TABLE IF NOT EXISTS user (
  id char(50) NOT NULL, Constraint pk_User_id PRIMARY KEY (id),  # 待优化, 不应该拿非线性数据如字符串做索引
  first_name char(30) NOT NULL,
  last_name char(30) NOT NULL,
  username char(50) NOT NULL unique,
  password char(100) NOT NULL,
  account_created timestamp NOT NULL,
  account_updated timestamp NOT NULL,
  verified boolean NOT NULL DEFAULT false
) default charset=utf8;
CREATE TABLE IF NOT EXISTS image (
  id char(50) NOT NULL, Constraint pk_image_id PRIMARY KEY (id),  # 待优化, 不应该拿非线性数据如字符串做索引
  user_id char(50) NOT NULL,
  url char(100) NOT NULL,
  file_name char(50) NOT NULL,
  upload_date timestamp NOT NULL
) default charset=utf8;
EOF

