<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240405151219 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE address ADD city_id_id INT DEFAULT NULL, ADD customer_id_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F813CCE3900 FOREIGN KEY (city_id_id) REFERENCES city (id)');
        $this->addSql('ALTER TABLE address ADD CONSTRAINT FK_D4E6F81FA53AB1 FOREIGN KEY (customer_id_id) REFERENCES customer (id)');
        $this->addSql('CREATE INDEX IDX_D4E6F813CCE3900 ON address (city_id_id)');
        $this->addSql('CREATE INDEX IDX_D4E6F81FA53AB1 ON address (customer_id_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F813CCE3900');
        $this->addSql('ALTER TABLE address DROP FOREIGN KEY FK_D4E6F81FA53AB1');
        $this->addSql('DROP INDEX IDX_D4E6F813CCE3900 ON address');
        $this->addSql('DROP INDEX IDX_D4E6F81FA53AB1 ON address');
        $this->addSql('ALTER TABLE address DROP city_id_id, DROP customer_id_id');
    }
}
