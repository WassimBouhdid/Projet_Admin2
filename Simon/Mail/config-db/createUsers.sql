INSERT INTO `maildb`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'l2-6.ephec-ti.be');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', ENCRYPT('pass_Sim', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'simon@l2-6.ephec-ti.be', 'l2-6.ephec-ti.be/simon/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', ENCRYPT('pass_Morg', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'morgan@l2-6.ephec-ti.be', 'l2-6.ephec-ti.be/morgan/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', ENCRYPT('pass_Was', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'wassim@l2-6.ephec-ti.be', 'l2-6.ephec-ti.be/wassim/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', ENCRYPT('pass_B2B', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@l2-6.ephec-ti.be', 'l2-6.ephec-ti.be/b2b/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', ENCRYPT('pass_Contact', CONCAT('$6$', SU