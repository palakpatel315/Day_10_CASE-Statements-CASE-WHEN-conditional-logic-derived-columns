-- Day_10_P_3. Create age groups for patients (0-18, 19-40, 41-65, 65+).

SELECT name, age,
CASE WHEN age <= 18 THEN 'Pediatric'
     WHEN age BETWEEN 19 AND 40 THEN 'Adult'
     WHEN age BETWEEN 41 AND 65 THEN 'Middle-Aged'
	 ELSE 'Geriatric'
END AS Age_Category
 FROM patients;