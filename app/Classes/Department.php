<?php

namespace Classes;

use Classes\Employee;

class Department
{
    function __construct(private array|Employee $employees, private string $name)
    {

    }

    function __clone()
    {
        $this->employees = clone $this->employees;
    }

    public function setName(string $name)
    {
        $this->name = $name;
    }

    public function setEmployees(array|Employee $employees)
    {
        $this->employees = $employees;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getEmployees(): array|Employee
    {
        return $this->employees;
    }

    public function getTotalSalary(): int
    {
        $result = 0;

        foreach($this->employees as $employee)
        {
            $result += $employee->getSalary();
        }

        return $result;
    }

    public function getEmployeesCount(): int
    {
        return count($this->employees);
    }
}