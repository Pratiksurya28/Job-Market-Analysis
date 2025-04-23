# 📊 Job Market Analysis Dashboard

An in-depth data analytics project to uncover patterns in the job market for data-related roles. This interactive dashboard provides insights into job demand, salaries, industries, company metrics, skills, and education preferences using real-world job listing data.

---

## 🎯 Project Objective

The goal of this project is to analyze job trends in the U.S. for data-related positions using a rich dataset containing information about:

- Salaries (lower, upper, and average)
- Company ratings and sizes
- Job titles and responsibilities
- Required skills and degrees
- Location-based employment trends

The insights are visualized in an interactive dashboard built using **Power BI** and supported with exploratory SQL analysis and documentation.

---

## 🧠 Key Questions Answered

- Which **states** have the most job opportunities?
- What are the **average salaries** (min, max, and mean) in different states?
- What are the **top industries** hiring for data science roles?
- Which **companies** have the highest number of job openings?
- What are the most in-demand **job titles** and their salary ranges?
- What **skills** are most frequently required by companies?
- How does **education** (Master’s vs. PhD) affect job title distribution?
- What is the relationship between **company rating** and **salary offered**?

---

## 💾 SQL-Based Analysis

The following queries were executed to derive meaningful business insights from the job market:

### 1. **States with Most Number of Jobs**
```sql
SELECT Job_Location, COUNT(*) AS job_count 
FROM Market 
GROUP BY Job_Location 
ORDER BY job_count DESC;
```
📍 **California** has the most number of jobs; **South Carolina** has the least.

---

### 2. **Average Minimal and Maximal Salaries in Different States**
```sql
SELECT Job_Location, AVG(Lower_Salary) AS Avg_Minimal_salary, AVG(Upper_Salary) AS Avg_Maximal_Salary 
FROM Market 
GROUP BY Job_Location 
ORDER BY Avg_Maximal_salary DESC;
```
💸 **California** leads with Avg Max Salary = $154.59K; **Nebraska** has one of the lowest = $69.25K.

---

### 3. **Average Salary in Different States**
```sql
SELECT Job_Location, AVG(Avg_SalaryK) AS avg_salary 
FROM Market 
GROUP BY Job_Location 
ORDER BY avg_salary ASC;
```
📈 Highest Avg Salary: **California ($123.5K)**  
📉 Lowest Avg Salary: **Nebraska ($54.25K)**

---

### 4. **Top 5 Industries for Data Science-Related Jobs**
```sql
SELECT Industry, COUNT(*) AS Job_Title 
FROM Market 
WHERE Job_Title LIKE '%Data Scientist%' OR Job_Title = "Data Analyst" 
GROUP BY Industry 
ORDER BY Job_Title DESC 
LIMIT 5;
```
🏭 **Top Industries**: Biotech, IT Services, Software, Insurance, Enterprise Software.

---

### 5. **Top 5 Companies by Job Openings**
```sql
SELECT Company_Name, COUNT(Size) AS job_openings 
FROM Market 
GROUP BY Company_Name, Size 
ORDER BY job_openings DESC 
LIMIT 5;
```
🏢 Top Recruiters: **Takeda Pharmaceuticals, Reynolds American, MassMutual**, etc.

---

### 6. **Job Titles with Most Job Listings**
```sql
SELECT Job_Title, COUNT(Job_Title) AS Job_Count 
FROM Market 
GROUP BY Job_Title 
ORDER BY Job_Count DESC 
LIMIT 10;
```
🧪 **Data Scientist** has the highest job count (131 postings).

---

### 7. **Salary of Most Frequent Job Titles**
```sql
SELECT Job_Title, COUNT(*) AS Job_Count, AVG(Avg_SalaryK) AS Avg_Salary_K 
FROM Market 
GROUP BY Job_Title 
ORDER BY Job_Count DESC 
LIMIT 10;
```
💰 Avg Salary for **Data Scientist** = $106.17K

---

### 8. **Skills Required by Companies for Each Job Title**
```sql
SELECT Job_Title, 
       SUM(Python), SUM(Spark), SUM(AWS), SUM(Excel), 
       SUM(SQL_), SUM(SAS), SUM(Keras), SUM(PyTorch), 
       SUM(Scikit), SUM(Tensor), SUM(Hadoop), SUM(Tableau), 
       SUM(BI), SUM(Flink), SUM(Mongo), SUM(Google_an) 
FROM Market 
GROUP BY Job_Title;
```
📌 Top Skills: **Python, SQL, Excel, AWS, Tableau**

---

### 9. **Relation between Average Salary and Degree**
```sql
SELECT Degree, COUNT(Degree) AS Job_Count, AVG(Avg_SalaryK) AS Avg_Salary_K 
FROM Market 
WHERE Degree IS NOT NULL 
GROUP BY Degree 
ORDER BY Avg_Salary_K DESC;
```
🎓 **PhD holders** have slightly higher average salaries than Master's, but Master's degrees are more frequently required.

---
![Job Market Dashboard](https://github.com/Pratiksurya28/Job-Market-Analysis/blob/main/Screenshot%202025-04-23%20232609.png)

## 📊 Dashboard Insights

- **Avg Salary:** $527K  
- **Avg Company Age:** 50 years  
- **Avg Company Rating:** 3.7  

### 🔝 Top Insights

- 📍 **California** leads with the highest number of job listings and highest average salary ($123.5K).
- 🧪 **Data Scientist** roles are the most posted job titles (131 listings) with an average salary of $106.17K.
- 🏢 Top hiring companies: Takeda Pharmaceuticals, Reynolds American, MassMutual, SEI, Liberty Mutual.
- 🏭 **Biotech & Pharmaceuticals** and **IT Services** are the top hiring industries for data-related jobs.
- 🧑‍🎓 **Master's degree holders (M)** dominate the job market with 4.4K+ relevant roles.
- 💻 High-demand skills include Python, SQL, Excel, AWS, and Tableau.

---
## 🛠️ Tools & Technologies Used

- **SQL** (PostgreSQL): For data extraction and querying
- **Power BI**: For data visualization and dashboard creation
- **Microsoft Excel**: For data cleaning and preprocessing
- **PDF, DOCX**: For reporting and documentation

---

## ✅ Final Conclusion

The job market for data roles is highly concentrated in specific states and industries, with strong demand for a particular skillset. Companies prefer technically sound candidates with advanced degrees, and jobs are best located in top-paying states like California.

This analysis empowers job seekers and HR teams to align expectations, compensation, and hiring strategies accordingly.

