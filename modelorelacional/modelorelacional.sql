-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- tabela de usuarios da arquitetura tutores
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR NULL DEFAULT NULL,
  `id_adm_forms` INTEGER NULL DEFAULT NULL,
  `id_adm_forms` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'tabela de usuarios da arquitetura tutores';

-- ---
-- Table 'general_forms'
-- Tabela de formulario geral da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `general_forms`;
		
CREATE TABLE `general_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `age` INTEGER NULL DEFAULT NULL,
  `gender` VARCHAR(30) NULL DEFAULT NULL,
  ` education` VARCHAR(30) NULL DEFAULT NULL,
  `type_of_housing` VARCHAR(30) NULL DEFAULT NULL,
  `family_constitution` VARCHAR(50) NULL DEFAULT NULL,
  ` income` DECIMAL NULL DEFAULT NULL,
  `live_in_the_house` INTEGER NULL DEFAULT NULL,
  `address` VARCHAR(30) NULL DEFAULT NULL,
  `choice_of_form` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de formulario geral da arquitetura formularios';

-- ---
-- Table 'user_forms'
-- tabela para salvar os dados do usuario na arquitetura formularios
-- ---

DROP TABLE IF EXISTS `user_forms`;
		
CREATE TABLE `user_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `social name` VARCHAR(30) NULL DEFAULT NULL,
  `cellphone` INTEGER NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `first name` VARCHAR(30) NULL DEFAULT NULL,
  `last name` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'tabela para salvar os dados do usuario na arquitetura formul';

-- ---
-- Table 'have_forms'
-- Tabela de quem tem cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `have_forms`;
		
CREATE TABLE `have_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `time_with_dog` VARCHAR(30) NULL DEFAULT NULL,
  `first_dog` VARCHAR(10) NULL DEFAULT NULL,
  ` other_pets` VARCHAR(10) NULL DEFAULT NULL,
  `dogs_age` VARCHAR(10) NULL DEFAULT NULL,
  `breed` VARCHAR(10) NULL DEFAULT NULL,
  `where_get` VARCHAR(30) NULL DEFAULT NULL,
  `paid_to_acquire` VARCHAR(5) NULL DEFAULT NULL,
  `age_reached` VARCHAR(30) NULL DEFAULT NULL,
  `dog_personality` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `why_do_have` VARCHAR(100) NULL DEFAULT NULL,
  `others` VARCHAR(50) NULL DEFAULT NULL,
  `characteristics` VARCHAR(50) NULL DEFAULT NULL,
  `decision` VARCHAR(30) NULL DEFAULT NULL,
  `couldnt_keep` VARCHAR(30) NULL DEFAULT NULL,
  `how_vet` VARCHAR(10) NULL DEFAULT NULL,
  `say_about` VARCHAR(50) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem tem cao da arquitetura formularios';

-- ---
-- Table 'had_forms'
-- Tabela de quem teve cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `had_forms`;
		
CREATE TABLE `had_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dogs_name` VARCHAR(30) NULL DEFAULT NULL,
  `dogs_personality` VARCHAR(30) NULL DEFAULT NULL,
  `time_with_you` INTEGER NULL DEFAULT NULL,
  `first_dog` VARCHAR(30) NULL DEFAULT NULL,
  `other_pets` VARCHAR(30) NULL DEFAULT NULL,
  `pet_age` INTEGER NULL DEFAULT NULL,
  `castrated` VARCHAR(30) NULL DEFAULT NULL,
  `breed` VARCHAR(30) NULL DEFAULT NULL,
  `where_came_from` VARCHAR(30) NULL DEFAULT NULL,
  `pet_price` VARCHAR(30) NULL DEFAULT NULL,
  `why` VARCHAR(30) NULL DEFAULT NULL,
  `characteristics` VARCHAR(30) NULL DEFAULT NULL,
  `name_decision` VARCHAR(30) NULL DEFAULT NULL,
  `most_like` VARCHAR(30) NULL DEFAULT NULL,
  `dont_like` VARCHAR(30) NULL DEFAULT NULL,
  `veterinary` VARCHAR(30) NULL DEFAULT NULL,
  `stopped_living ` VARCHAR(30) NULL DEFAULT NULL,
  `belonged_to_you` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem teve cao da arquitetura formularios';

-- ---
-- Table 'want_forms'
-- Tabela de quem quer ter cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `want_forms`;
		
CREATE TABLE `want_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `characteristics` VARCHAR(100) NULL DEFAULT NULL,
  `live_with_dog` VARCHAR(30) NULL DEFAULT NULL,
  `nickname` VARCHAR(30) NULL DEFAULT NULL,
  `pretend` VARCHAR(30) NULL DEFAULT NULL,
  `include` VARCHAR(30) NULL DEFAULT NULL,
  `what_personality` VARCHAR(30) NULL DEFAULT NULL,
  `research_expenses` VARCHAR(30) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem quer ter cao da arquitetura formularios';

-- ---
-- Table 'null_forms'
-- Tabela de quem nao quer ter cao da arquitetura formularios
-- ---

DROP TABLE IF EXISTS `null_forms`;
		
CREATE TABLE `null_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dont_want` VARCHAR(100) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  `id_adm_forms` INTEGER NULL DEFAULT NULL,
  `id_adm_forms` INTEGER NULL DEFAULT NULL,
  `id_choose_forms` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela de quem nao quer ter cao da arquitetura formularios';

-- ---
-- Table 'adm_forms'
-- 
-- ---

DROP TABLE IF EXISTS `adm_forms`;
		
CREATE TABLE `adm_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `view_stats` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'choose_forms'
-- 
-- ---

DROP TABLE IF EXISTS `choose_forms`;
		
CREATE TABLE `choose_forms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `had` INTEGER NULL DEFAULT NULL,
  `general` INTEGER NULL DEFAULT NULL,
  `want` INTEGER NULL DEFAULT NULL,
  `have` INTEGER NULL DEFAULT NULL,
  `null` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `users` ADD FOREIGN KEY (id_adm_forms) REFERENCES `adm_forms` (`id`);
ALTER TABLE `users` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `general_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `general_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `user_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `user_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `have_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `have_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `have_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `had_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `had_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `want_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `want_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);
ALTER TABLE `null_forms` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `null_forms` ADD FOREIGN KEY (id_adm_forms) REFERENCES `adm_forms` (`id`);
ALTER TABLE `null_forms` ADD FOREIGN KEY (id_choose_forms) REFERENCES `choose_forms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `general_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `have_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `had_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `want_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `null_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `adm_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `choose_forms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`name`,`email`,`password`,`id_adm_forms`,`id_adm_forms`,`id_choose_forms`) VALUES
-- ('','','','','','','');
-- INSERT INTO `general_forms` (`id`,`age`,`gender`,` education`,`type_of_housing`,`family_constitution`,` income`,`live_in_the_house`,`address`,`choice_of_form`,`id_users`,`id_choose_forms`) VALUES
-- ('','','','','','','','','','','','');
-- INSERT INTO `user_forms` (`id`,`social name`,`cellphone`,`email`,`first name`,`last name`,`id_users`,`id_choose_forms`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `have_forms` (`id`,`time_with_dog`,`first_dog`,` other_pets`,`dogs_age`,`breed`,`where_get`,`paid_to_acquire`,`age_reached`,`dog_personality`,`why_do_have`,`others`,`characteristics`,`decision`,`couldnt_keep`,`how_vet`,`say_about`,`id_users`,`id_choose_forms`,`id_choose_forms`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `had_forms` (`id`,`dogs_name`,`dogs_personality`,`time_with_you`,`first_dog`,`other_pets`,`pet_age`,`castrated`,`breed`,`where_came_from`,`pet_price`,`why`,`characteristics`,`name_decision`,`most_like`,`dont_like`,`veterinary`,`stopped_living `,`belonged_to_you`,`id_users`,`id_choose_forms`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `want_forms` (`id`,`characteristics`,`live_with_dog`,`nickname`,`pretend`,`include`,`what_personality`,`research_expenses`,`id_users`,`id_choose_forms`) VALUES
-- ('','','','','','','','','','');
-- INSERT INTO `null_forms` (`id`,`dont_want`,`id_users`,`id_adm_forms`,`id_adm_forms`,`id_choose_forms`) VALUES
-- ('','','','','','');
-- INSERT INTO `adm_forms` (`id`,`view_stats`) VALUES
-- ('','');
-- INSERT INTO `choose_forms` (`id`,`had`,`general`,`want`,`have`,`null`) VALUES
-- ('','','','','','');
