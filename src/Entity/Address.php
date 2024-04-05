<?php

namespace App\Entity;

use App\Repository\AddressRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AddressRepository::class)]
class Address
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $full_address = null;

    #[ORM\Column(length: 50)]
    private ?string $zipcode = null;

    #[ORM\ManyToOne(inversedBy: 'addresses')]
    private ?City $city_id = null;

    #[ORM\ManyToOne(inversedBy: 'addresses')]
    private ?Costumer $costumer_id = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFullAddress(): ?string
    {
        return $this->full_address;
    }

    public function setFullAddress(string $full_address): static
    {
        $this->full_address = $full_address;

        return $this;
    }

    public function getZipcode(): ?string
    {
        return $this->zipcode;
    }

    public function setZipcode(string $zipcode): static
    {
        $this->zipcode = $zipcode;

        return $this;
    }

    public function getCityId(): ?City
    {
        return $this->city_id;
    }

    public function setCityId(?City $city_id): static
    {
        $this->city_id = $city_id;

        return $this;
    }

    public function getCostumerId(): ?Costumer
    {
        return $this->costumer_id;
    }

    public function setCostumerId(?Costumer $costumer_id): static
    {
        $this->costumer_id = $costumer_id;

        return $this;
    }
}
