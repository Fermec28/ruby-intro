-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students '
--
-- ---

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students '
--
-- ---

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
  `name` VARCHAR NULL DEFAULT NULL,
  `email` VARCHAR NULL DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `cohort_id` INTEGER NULL DEFAULT NULL
);

-- ---
-- Table 'teachers'
--
-- ---

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
  `name` VARCHAR NULL DEFAULT NULL
);
-- ---
-- Table Properties
-- ---

-- ALTER TABLE `students ` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `teachers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `students ` (`id`,`name`,`email`,`age`,`cohort_id`) VALUES
-- ('','','','','');
-- INSERT INTO `teachers` (`id`,`name`) VALUES
-- ('','');








































-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students'
--
-- ---

-- DROP TABLE IF EXISTS `students`;

-- CREATE TABLE `students` (
--   `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
--   `name` VARCHAR NULL DEFAULT NULL,
--   `email` VARCHAR NULL DEFAULT NULL,
--   `age` INTEGER NULL DEFAULT NULL,
--   `id_cohorts` INTEGER NULL DEFAULT NULL
-- );

-- -- ---
-- -- Table 'cohorts'
-- --
-- -- ---

-- DROP TABLE IF EXISTS `cohorts`;

-- CREATE TABLE `cohorts` (
--   `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
--   `name` VARCHAR NULL DEFAULT NULL
-- );

-- ---
-- Foreign Keys
-- ---

-- Table Properties
-- ---

-- ALTER TABLE `students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `cohorts` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `students` (`id`,`name`,`email`,`age`,`id_cohorts`) VALUES
-- ('','','','','');
-- INSERT INTO `cohorts` (`id`,`name`) VALUES
-- ('','');
