-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students'
--
-- ---

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  first_name VARCHAR,
  last_name VARCHAR,
  gender VARCHAR,
  birthday DATE,
  email VARCHAR,
  phone VARCHAR NULL DEFAULT NULL
);

-- ---
-- Foreign Keys
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `students` (`id`,`first_name `,`last_name`,`gender`,`birthday`,`email`,`phone`) VALUES
-- ('','','','','','','');
