<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240406175844 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F813CCE3900');
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F81FA53AB1');
        $this->addSql('DROP INDEX IDX_D4E6F81FA53AB1 ON address');
        $this->addSql('DROP INDEX IDX_D4E6F813CCE3900 ON address');
        $this->addSql('ALTER TABLE address ADD city_id INT DEFAULT NULL, ADD customer_id INT DEFAULT NULL, DROP city_id_id, DROP customer_id_id');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F818BAC62AF FOREIGN KEY (city_id) REFERENCES city (id)');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F8160B71152 FOREIGN KEY (customer_id) REFERENCES customer (id)');
        $this->addSql('CREATE INDEX IDX_D4E6F818BAC62AF ON address (city_id)');
        $this->addSql('CREATE INDEX IDX_D4E6F8160B71152 ON address (customer_id)');
        $this->addSql('ALTER TABLE purchase DROP FOREIGN KEY FK_6117D13BFA53AB1');
        $this->addSql('ALTER TABLE purchase DROP FOREIGN KEY FK_6117D13BFCDAEAAA');
        $this->addSql('DROP INDEX IDX_6117D13BFA53AB1 ON purchase');
        $this->addSql('DROP INDEX UNIQ_6117D13BFCDAEAAA ON purchase');
        $this->addSql('ALTER TABLE purchase CHANGE customer_id_id customer_id INT DEFAULT NULL, CHANGE order_id_id order_id INT NOT NULL');
        $this->addSql('ALTER TABLE purchase ADD CONSTRAINT FK_6117D13B60B71152 FOREIGN KEY (customer_id) REFERENCES customer (id)');
        $this->addSql('ALTER TABLE purchase ADD CONSTRAINT FK_6117D13B8D9F6D38 FOREIGN KEY (order_id) REFERENCES `order` (id)');
        $this->addSql('CREATE INDEX IDX_6117D13B60B71152 ON purchase (customer_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6117D13B8D9F6D38 ON purchase (order_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F818BAC62AF');
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F8160B71152');
        $this->addSql('DROP INDEX IDX_D4E6F818BAC62AF ON address');
        $this->addSql('DROP INDEX IDX_D4E6F8160B71152 ON address');
        $this->addSql('ALTER TABLE address ADD city_id_id INT DEFAULT NULL, ADD customer_id_id INT DEFAULT NULL, DROP city_id, DROP customer_id');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F813CCE3900 FOREIGN KEY (city_id_id) REFERENCES city (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F81FA53AB1 FOREIGN KEY (customer_id_id) REFERENCES customer (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_D4E6F81FA53AB1 ON address (customer_id_id)');
        $this->addSql('CREATE INDEX IDX_D4E6F813CCE3900 ON address (city_id_id)');
        $this->addSql('ALTER TABLE purchase DROP FOREIGN KEY FK_6117D13B60B71152');
        $this->addSql('ALTER TABLE purchase DROP FOREIGN KEY FK_6117D13B8D9F6D38');
        $this->addSql('DROP INDEX IDX_6117D13B60B71152 ON purchase');
        $this->addSql('DROP INDEX UNIQ_6117D13B8D9F6D38 ON purchase');
        $this->addSql('ALTER TABLE purchase CHANGE customer_id customer_id_id INT DEFAULT NULL, CHANGE order_id order_id_id INT NOT NULL');
        $this->addSql('ALTER TABLE purchase ADD CONSTRAINT FK_6117D13BFA53AB1 FOREIGN KEY (customer_id_id) REFERENCES customer (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE purchase ADD CONSTRAINT FK_6117D13BFCDAEAAA FOREIGN KEY (order_id_id) REFERENCES `order` (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_6117D13BFA53AB1 ON purchase (customer_id_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_6117D13BFCDAEAAA ON purchase (order_id_id)');
    }
}
