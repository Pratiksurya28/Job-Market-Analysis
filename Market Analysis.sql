SELECT * FROM project_job_market_analysis.Market;
select distinct(Job_Title) from Market;
select distinct(Competitors) from Market;
update Market set Rating = 3.9 where Rating = -1;
select Company_Name, Count(Company_Name), Rating from Market where Rating = 4.6 group by  Company_Name, Rating;
select Headquarters, Count(Headquarters), Rating from Market where Rating = 3.9 group by  Headquarters, Rating order by Count(Headquarters) desc;

select Founded, Count(Founded), Rating from Market where Rating = 3.9 group by  Founded, Rating order by Count(Founded) desc;
select Founded,count( Founded) from Market group by Founded order by count( Founded) desc;

select Industry, Count(Industry), Rating from Market where Rating = 3.9 group by  Industry, Rating order by Count(Industry) desc;
select Industry,count(Industry) from Market group by Industry order by count( Industry) desc;

select Sector, Count(Sector), Rating from Market where Rating = 3.9 group by  Sector, Rating order by Count(Sector) desc;
select Sector,count( Sector) from Market group by Sector order by count( Sector) desc; 

select Revenue,count(Revenue) from Market group by Revenue order by count( Revenue) desc; 

select Competitors, Count(Competitors), Rating from Market where Rating = 3.9 group by  Competitors, Rating order by Count(Competitors) desc;
select Competitors,count( Competitors) from Market group by Competitors order by count( Competitors) desc; 

select Age, Count(Age), Rating from Market where Rating = 3.9 group by  Age, Rating order by Count(Age) desc;

select job_title_sim,count( job_title_sim) from Market group by job_title_sim order by count( job_title_sim) desc; 

select seniority_by_title, count( seniority_by_title) from Market group by seniority_by_title order by count( seniority_by_title) desc; 

select Degree, count( Degree) from Market group by Degree order by count( Degree) desc; 

select Size, count( Size) from Market group by Size order by count( Size) desc; 

select Age, count( Age) from Market group by Age order by count( Age) desc limit 3; 
select Age, Count(Age)  from Market where Rating = 3.9 group by  Age order by Count(Age) desc limit 3;

select Rating,count( Rating) from Market group by Rating order by count( Rating) desc;


