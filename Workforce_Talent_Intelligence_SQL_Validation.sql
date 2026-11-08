SELECT COUNT(*) AS TotalEmployees
FROM Employees;
SELECT COUNT(*) AS ActiveHeadcount
FROM Employees
WHERE EmploymentStatus = 'Active';
SELECT COUNT(*) AS ExitedEmployees
FROM Employees
WHERE EmploymentStatus = 'Exited';
SELECT SUM(AnnualSalaryINR) AS AnnualPayroll
FROM Employees
WHERE EmploymentStatus = 'Active';
SELECT DepartmentID,
       COUNT(*) AS EmployeeCount
FROM Employees
WHERE EmploymentStatus = 'Active'
GROUP BY DepartmentID
ORDER BY EmployeeCount DESC;
SELECT RecruitmentSource,
       COUNT(*) AS Applications
FROM Applications
GROUP BY RecruitmentSource
ORDER BY Applications DESC;
SELECT COUNT(*) AS HiredCandidates
FROM Applications
WHERE Stage = 'Hired';
SELECT
    strftime('%Y-%m', HireDate) AS HiringMonth,
    COUNT(*) AS NewHires
FROM Employees
WHERE HireDate IS NOT NULL
GROUP BY strftime('%Y-%m', HireDate)
ORDER BY HiringMonth;
