# 📘 21 Days SQL Challenge – Day 10  
### **Topic:** CASE Statements  

---

## 🎯 **Objective**  
The goal for **Day 10** was to understand and apply **conditional logic in SQL** using the `CASE` statement.  
This function helps categorize data, create custom columns, and perform conditional aggregations — making analysis more insightful and flexible.

---

## 🧠 **Key Learnings**
- Learned how to use **CASE WHEN** for conditional logic, similar to if-else statements in programming.  
- Explored **Simple CASE** (based on specific values) and **Searched CASE** (based on logical conditions).  
- Created **custom labels** for numeric ranges (like satisfaction scores or age groups).  
- Applied **CASE** inside `SELECT`, `GROUP BY`, and `ORDER BY` clauses.  
- Discovered how to perform **conditional aggregations** using `SUM(CASE WHEN ...)`.  
- Understood that **CASE is evaluated top-to-bottom**, so order matters.

---

## 🧩 **Daily Challenge**
**Question:**  
Create a service performance report showing service name, total patients admitted, and a performance category based on the following:  
- ‘Excellent’ if avg satisfaction >= 85  
- ‘Good’ if >= 75  
- ‘Fair’ if >= 65  
- Otherwise, ‘Needs Improvement’  
Order by average satisfaction descending.  

**Query Used:**
```sql
SELECT 
    service,
    SUM(patients_admitted) AS Total_Admitted_Patients,
    ROUND(AVG(patient_satisfaction), 2) AS Avg_Satisfaction,
    CASE 
        WHEN AVG(patient_satisfaction) >= 85 THEN 'Excellent'
        WHEN AVG(patient_satisfaction) >= 75 THEN 'Good'
        WHEN AVG(patient_satisfaction) >= 65 THEN 'Fair'
        ELSE 'Needs Improvement'
    END AS Performance_Category
FROM services_weekly
GROUP BY service
ORDER BY Avg_Satisfaction DESC;
```

## 📸 **SQL Queries**

![Check_SQL Query File]()

---
Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

---

## 👩‍💻 **About Me**
**Palak Patel**  
*Aspiring Data Analyst | Skilled in SQL, Power BI, Excel*  
📍 Passionate about turning data into insights and solving real-world business problems.  

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/palak-patel-0711242a0/)

---
