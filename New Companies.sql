SELECT C.company_code, C.founder,
(SELECT COUNT(DISTINCT lead_manager_code) FROM LEAD_MANAGER WHERE company_code = C.company_code),
(SELECT COUNT(DISTINCT senior_manager_code) FROM SENIOR_MANAGER WHERE company_code = C.company_code),
(SELECT COUNT(DISTINCT manager_code) FROM MANAGER WHERE company_code = C.company_code),
(SELECT COUNT(DISTINCT employee_code) FROM EMPLOYEE WHERE company_code = C.company_code)
FROM COMPANY AS C
ORDER BY C.company_code;