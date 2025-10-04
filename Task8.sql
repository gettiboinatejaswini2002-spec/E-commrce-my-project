use mytables
CREATE TABLE Employees1(
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2),
    Department VARCHAR(50)
)
INSERT INTO Employees1(Name, Salary, Department)VALUES 
('Vyshnavi', 50000, 'HR'),
('Janu', 70000, 'IT'),
('Charlie', 60000, 'Finance')

DELIMITER $$

CREATE PROCEDURE IncreaseSalary(
    IN emp_id INT,
    IN percent_increase DECIMAL(5,2)
)
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * percent_increase / 100)
    WHERE EmpID = emp_id;
END $$

DELIMITER ;
CALL IncreaseSalary(2, 10);
DELIMITER $$

CREATE FUNCTION AnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END $$

DELIMITER ;
SELECT Name, AnnualSalary(Salary) AS Annual_Salary
FROM Employees1;



