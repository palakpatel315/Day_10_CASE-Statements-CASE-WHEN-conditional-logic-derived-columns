-- Day_10_P_1. Categorise patients as 'High', 'Medium', or 'Low' satisfaction based on their scores.

SELECT patient_id, name, satisfaction,
CASE WHEN satisfaction >= 90 THEN 'High'
     WHEN satisfaction >= 70 THEN 'Medium'
     ELSE 'Low'
END AS Patient_Satisfaction_Caterogy     
 FROM patients;