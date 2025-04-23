# Save the README.md content as a downloadable file

readme_content = """
# 📊 Job Market Analysis Dashboard

An in-depth data analytics project to uncover patterns in the job market for data-related roles. This interactive dashboard provides insights into job demand, salaries, industries, company metrics, skills, and education preferences using real-world job listing data.

![Job Market Dashboard](https://github.com/Pratiksurya28/Job-Market-Analysis/blob/main/Screenshot%202025-04-23%20232609.png)

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
'''
### 1. **States with Most Number of Jobs**
SELECT Job_Location, AVG(Lower_Salary) AS Avg_Minimal_salary, AVG(Upper_Salary) AS Avg_Maximal_Salary 
FROM Market 
GROUP BY Job_Location 
ORDER BY Avg_Maximal_salary DESC;

