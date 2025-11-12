-- Day_10_P_2. Label staff roles as 'Medical' or 'Support' based on role type.

SELECT staff_name, role,
 CASE WHEN role = 'doctor' THEN 'Medical'
      ELSE 'Support'
 END AS Staff_Lable     
 
 FROM staff;