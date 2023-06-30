<?php

use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Validator\Validation;
use Symfony\Component\Validator\Constraints as Assert;

use Classes\Employee;
use Classes\Department;


require './vendor/autoload.php';


//Validator demonstration from documentary
$validator = Validation::createValidator();
$violations = $validator->validate('Bernhard', [
    new Length(['min' => 10]),
    new NotBlank(),
]);

if (count($violations) != 0) {
    // there are errors, now you can show them
    foreach ($violations as $violation) {
        echo $violation->getMessage().'<br>';
    }
}


//Custom validation of Employee class
$constraint = new Assert\Collection([    
    'name' => [
        new Assert\NotBlank(),
        new Assert\Regex('/^[A-Za-z]+\s[A-Za-z]+$/u')
    ],   	
    'ID' => [
        new Assert\NotBlank(),
        new Assert\Type(['type' => 'int']),
        new Assert\Positive()
    ],
    'salary' => [
        new Assert\NotBlank(),
        new Assert\Type(['type' => 'int']),
        new Assert\Positive()
    ],
    'dateOfEmployment' => [
        new Assert\NotBlank(),
        new Assert\Type(['type' => 'DateTime'])
    ]
]);

$testEmployees = [
    [
        'ID' => -10239842,
        'name' => 'Jack Smith',
        'salary' => 1000,
        'dateOfEmployment' => DateTime::createFromFormat('Y-m-d', '2023-01-01'),
    ],
    [
        'ID' => 19872,
        'name' => 'Jack Smith1',
        'salary' => -10000,
        'dateOfEmployment' => DateTime::createFromFormat('Y-m-d', '2023-01-02'),
    ],
    [
        'ID' => 2923739,
        'name' => 'Jack Smith',
        'salary' => 0,
        'dateOfEmployment' => DateTime::createFromFormat('Y-m-d', '2023-01-03'),
    ],
    [
        'ID' => 319273,
        'name' => 'Jack Smith',
        'salary' => 999,
        'dateOfEmployment' => DateTime::createFromFormat('Y-m-d', '2023-01-04'),
    ],
];

$validatedEmployees = array();
foreach($testEmployees as $employee)
{
    $violations = $validator->validate($employee, $constraint);
    $errors = [];

    if (count($violations) != 0) 
    {
        foreach ($violations as $violation) 
        {
            $errors[] = 
                $violation->getPropertyPath() . ' : ' . $violation->getMessage();

            foreach($errors as $error)
            {
                echo $error.'<br>';
            }
        }
    }
    else
    {
        array_push($validatedEmployees, 
                    new Employee($employee['ID'], $employee['name'],
                                 $employee['salary'],
                                 $employee['dateOfEmployment']));
    }
}

//Department class demonstration
$departments = [
    new Department($validatedEmployees, 'Department 1'),
    new Department([
        new Employee(1, 'Anthony Depths', 999,
                     DateTime::createFromFormat('Y-m-d', '2023-01-04')),
    ],
    'Department 2'
    ),
    new Department([
        new Employee(3, 'Laura Tate', 300,
                     DateTime::createFromFormat('Y-m-d', '2023-01-06')),
        new Employee(4, 'Jessica Chastain', 300,
                     DateTime::createFromFormat('Y-m-d', '2023-01-07')),
        new Employee(5, 'Freya Allan', 300,
                     DateTime::createFromFormat('Y-m-d', '2023-01-08')),
    ],
    'Department 3'
    ),
];

$departmentsSalaries = array();
foreach($departments as $department)
{
    array_push($departmentsSalaries, $department->getTotalSalary());
}

//Search for minimun salary
$minSalary = min($departmentsSalaries);
$minSalaryDeps = array();
foreach($departments as $department)
{
    if($department->getTotalSalary() == $minSalary)
    {
        array_push($minSalaryDeps, $department);
    }
}

//Search for maximum salary
$maxSalary = max($departmentsSalaries);
$maxSalaryDeps = array();
foreach($departments as $department)
{
    if($department->getTotalSalary() == $maxSalary)
    {
        array_push($maxSalaryDeps, $department);
    }
}

if(count($minSalaryDeps) == 1)
{
    echo "Minimum total salary department:
         name -> ".$minSalaryDeps[0]->getName()."; 
         salary -> $minSalary<br>";
}
else
{
    //search for maximum employees count
    $minSalaryMaxEmployees = max(
        array_map(
            function($department)
            {
                return $department->getEmployeesCount();
            },
            $minSalaryDeps)
    );
    
    echo "Minimum total salary maximum employees department:<br>";
    foreach($minSalaryDeps as $department)
    {
        if($department->getEmployeesCount() == $minSalaryMaxEmployees)
        {
            echo "&nbsp&nbsp&nbsp&nbsp
                    name -> ".$department->getName()."; 
                    salary -> $minSalary; employees -> ".
                    $department->getEmployeesCount(). ";<br>";
        }
    }
}

if(count($maxSalaryDeps) == 1)
{
    echo "Maximum total salary department: 
            name -> ".$maxSalaryDeps[0]->getName()."; 
            salary -> $maxSalary<br>";
}
else
{
    //search for maximum employees count
    $maxSalarymaxEmployees = max(
        array_map(
            function($department)
            {
                return $department->getEmployeesCount();
            },
            $maxSalaryDeps)
    );

    echo "Maximum total salary maximum employees department:<br>";
    foreach($maxSalaryDeps as $department)
    {
        if($department->getEmployeesCount() == $maxSalarymaxEmployees)
        {
            echo "&nbsp&nbsp&nbsp&nbsp
                    name -> ".$department->getName()."; 
                    salary -> $maxSalary; employees -> ".
                    $department->getEmployeesCount(). ";<br>";
        }
    }
}
