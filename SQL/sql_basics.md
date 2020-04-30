# SQL Basics 

### Mock Example

![DB schema](https://pgexercises.com/img/schema-horizontal.png)



### <u>Retrieve everything from a table</u>

select * from cd.facilities;



### <u>Retrieve specific columns from a table</u>

select name, membercost from cd.facilities;       



### <u>Control which rows are retrieved</u>

 select * from cd.facilities where membercost > 0;               



### <u>Control which rows are retrieved - part 2</u>

**select** facid, name, membercost, monthlymaintenance

​			**from** cd.facilties

​		    **where**  	

​						memebercost > 0 **and**  	

​						(member cost <  monthlymaintenance/50.0);  



### <u>Basic string searches</u>

**select**  *

​		**from** cd.facilities 

​    	**where**  	

​					name **like** '%Tennis%';       



### <u>Matching against multiple possible values</u>

**select** * 

​			**from** cd.facilities

​			**where**  	

​						facid **in** (1,5);    



### <u>Classify results into buckets</u>

**select** name, 

​			 **case** **when** (monthlymaintenance > 100) **then** 	

​								'expensive' 

​			**else** 	

​								'cheap'

​		    **end** **as** cost 

​            **from** cd.facilities";   



### <u>Working with dates</u>

**select** memid, surname, firstname, joindate  

​			**from** cd.members 

​			**where** joindate >= '2012-09-01';          



### <u>Removing duplicates, and ordering results</u>

**select** **distinct** surname

​			 **from** cd.members 

**order** **by** surname

 limit 10; 



### <u>Combining results from multiple queires</u>

**select** surname 

​			 **from** cd.members	

**union**

 **select** name 

​			**from** cd.facilities; 

