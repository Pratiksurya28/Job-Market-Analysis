SELECT * FROM project_job_market_analysis.Market;

-- 1. States with Most Number of Jobs.
select  Job_Location, count(*) as job_count from Market group by Job_Location order by job_count desc;

-- 2. Average Minimal and Maximal Salaries in Different States.
select Job_Location, avg(Lower_Salary) as Avg_Minimal_salary, avg(Upper_Salary) as Avg_Maximal_Salary from Market group by Job_Location order by Avg_Maximal_salary Desc;

-- 3. Average Salary in Different States. 
select Job_Location ,avg(Avg_SalaryK) as avg_salary from Market group by Job_Location order by avg_salary asc;

-- 4. Top 5 Industries with Maximum Number of Data Science Related Job Postings. 
select Industry, count(*) as Job_Title from Market where Job_Title LIKE '%Data Scientist%' or Job_Title = "Data Analyst" group by Industry order by Job_Title desc limit 5;	

-- 5.Companies with Maximum Number of Job Openings.
select Company_Name , count(Size) As job_openings from Market group by Company_Name , Size order by job_openings desc limit 5;

-- 6.Job Titles with Most Number of Jobs.
SELECT Job_Title, COUNT(Job_Title) AS Job_Count FROM Market GROUP BY Job_Title ORDER BY Job_Count DESC LIMIT 10;
 
 -- 7. Salary of Job Titles with Most Number of Jobs.
SELECT Job_Title, COUNT(*) AS Job_Count, AVG(Avg_SalaryK) AS Avg_Salary_K FROM Market GROUP BY Job_Title ORDER BY Job_Count DESC LIMIT 10;

-- 8. Skills Required by Companies for Each Job Title.
SELECT Job_Title, 
       SUM(Python) AS Python_Required,
       SUM(spark) AS Spark_Required,
       SUM(aws) AS AWS_Required,
       SUM(excel) AS Excel_Required,
       SUM(sql_) AS SQL_Required,
       SUM(sas) AS SAS_Required,
       SUM(keras) AS Keras_Required,
       SUM(pytorch) AS PyTorch_Required,
       SUM(scikit) AS Scikit_Required,
       SUM(tensor) AS TensorFlow_Required,
       SUM(hadoop) AS Hadoop_Required,
       SUM(tableau) AS Tableau_Required,
       SUM(bi) AS BI_Required,
       SUM(flink) AS Flink_Required,
       SUM(mongo) AS MongoDB_Required,
       SUM(google_an) AS Google_Analytics_Required
FROM Market
GROUP BY Job_Title
ORDER BY Job_Title;

-- 9.Relation between Average Salary and Education.
SELECT Degree, 
       COUNT(Degree) AS Job_Count, 
       AVG(Avg_SalaryK) AS Avg_Salary_K
FROM Market
WHERE Degree IS NOT NULL
GROUP BY Degree
ORDER BY Avg_Salary_K DESC;
 
 
