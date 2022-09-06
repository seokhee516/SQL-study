https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 
![image](https://user-images.githubusercontent.com/86893209/188647362-5108e01d-8e9d-4fb1-b7ae-88e9308b7393.png)

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
Input Format

The following tables contain company data:

Company: The company_code is the code of the company and founder is the founder of the company. 

![image](https://user-images.githubusercontent.com/86893209/188647406-4d4a53e5-6481-4be0-8011-9fc5d740e553.png)

Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company. 

![image](https://user-images.githubusercontent.com/86893209/188647416-fcc43cab-158e-4b63-a0bc-12679dedf5b1.png)

Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 

![image](https://user-images.githubusercontent.com/86893209/188647438-c045bcbb-599a-4313-8c1c-522f0a18ac59.png)

Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 

![image](https://user-images.githubusercontent.com/86893209/188647448-4bf59c26-2585-4a95-b71a-0f023af935cb.png)

Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 

![image](https://user-images.githubusercontent.com/86893209/188647465-4562d679-7859-432c-9e82-157306bbe2f8.png)

Sample Input

Company Table:  
![image](https://user-images.githubusercontent.com/86893209/188647582-14860d8c-39a5-40cb-ad93-4b385d3b5c87.png)

Lead_Manager Table: 

![image](https://user-images.githubusercontent.com/86893209/188647609-972356dc-9fb7-4d1b-918a-b1d84dc391e9.png)

Senior_Manager Table:  
![image](https://user-images.githubusercontent.com/86893209/188647623-b31096bb-8e91-4adc-9a92-35fb2fe59698.png)

Manager Table:  
![image](https://user-images.githubusercontent.com/86893209/188647645-0f1262d0-4065-471f-948c-0ab92089df15.png)

Employee Table: 
![image](https://user-images.githubusercontent.com/86893209/188647667-8d3fb43c-8f3a-4fec-aa7e-5f6fb4e58da0.png)


Sample Output

C1 Monika 1 2 1 2
C2 Samantha 1 1 2 2
Explanation

In company C1, the only lead manager is LM1. There are two senior managers, SM1 and SM2, under LM1. There is one manager, M1, under senior manager SM1. There are two employees, E1 and E2, under manager M1.

In company C2, the only lead manager is LM2. There is one senior manager, SM3, under LM2. There are two managers, M2 and M3, under senior manager SM3. There is one employee, E3, under manager M2, and another employee, E4, under manager, M3.
