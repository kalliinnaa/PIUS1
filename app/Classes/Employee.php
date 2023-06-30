<?php

namespace Classes;

use DateTime;

class Employee
{
    function __construct(private int $ID, private string $name,
                         private int $salary, private DateTime $dateOfEmployment)
    {

    }

    public function setID(int $ID)
    {
        $this->ID = $ID;
    }

    public function setname(string $name)
    {
        $this->name = $name;
    }

    public function setSalary(int $salary)
    {
        $this->$salary = $salary;
    }

    public function setDateOfEmployment(DateTime $dateOfEmployment)
    {
        $this->dateOfEmployment = $dateOfEmployment;
    }

    public function getID(): int
    {
        return $this->ID;
    }

    public function getname(): string
    {
        return $this->name;
    }

    public function getSalary(): int
    {
        return $this->salary;
    }

    public function getDateOfEmployment(): DateTime
    {
        return $this->dateOfEmployment;
    }

    public function getExperienceInYears(): int
    {
        $timeNow = new DateTime();

        return $this->dateOfEmployment->diff($timeNow)->format("%y");
    }
}
