# SQL Aggregates 

![DB schema](https://pgexercises.com/img/schema-horizontal.png)



### <u>Count the number of facilities</u>

**select** count(*) **from** cd.facilities;



### <u>Count the number of expensive facilities</u>

**select** count(*) **from** cd.facilities **where** guestcost >= 10;  



### <u>Count the number of recommendations each member makes</u>

**select** recommendedby, count(*) 

​			 **from** cd.members

​			 **where** recommendedby **is** **not** **null**

​			 **group** **by** recommendedby

 **order** **by** recommendedby; 



### <u>List the total slots booked per facility</u>

**select** facid, sum(slots) **as** "Total Slots" 

​				**from** cd.bookings 

​				**group** **by** facid

 **order** **by** facid; 



### <u>List the total slots booked per facility in a given month</u>

**select** facid, sum(slots) **as** "Total Slots"

​			 **from** cd.bookings	

​			 **where** 	

​							starttime >= '2012-09-01' 

​							**and** starttime < '2012-10-01'

​			 **group** **by** facid 

**order** **by** sum(slots); 



### <u>List the total slots booked per facility per month</u>

**select** facid, extract(month **from** starttime) **as** month, sum(slots) **as** "Total Slots"

​				 **from** cd.bookings

​				 **where** 

​								starttime >= '2012-01-01' 	

​								**and** starttime < '2013-01-01'

​				 **group** **by** facid, month

 **order** **by** facid, month; 



### <u>Find the count of members who have made at least one booking</u>

**select** count(**distinct** memid) **from** cd.bookings 



### <u>List facilities with more than 1000 slots booked</u>

**select** facid, sum(slots) **as** "Total Slots"  

​		      **from** cd.bookings    

​		      **group** **by** facid     

​		      **having** sum(slots) > 1000     

​		      **order** **by** facid 



### <u>Find the total revenue of each facility</u>

**select** facs.name, sum(slots * **case** 	

​											**when** memid = 0 **then** facs.guestcost 	

​											**else** facs.membercost 	

​								**end**) **as** revenue

​					 **from** cd.bookings bks 

​				 	**inner** **join** cd.facilities facs

​								 	**on** bks.facid = facs.facid

​					 **group** **by** facs.name

 **order** **by** revenue;



### <u>Find facilities with a total revenue less than 1000</u>

**select** name, revenue **from** ( 

​			**select** facs.name, sum(**case**  	

​														**when** memid = 0 **then** slots * facs.guestcost 	

​														**else** slots * membercost 

​											**end**) **as** revenue 

​						**from** cd.bookings bks 

​						**inner** **join** cd.facilities facs 	

​										**on** bks.facid = facs.facid 

​				   	**group** **by** facs.name

​				 ) **as** agg **where** revenue < 1000 

**order** **by** revenue; 



### <u>Output the facility id that has the highest number of slots booked</u>

**select** facid, sum(slots) **as** "Total Slots"

​			 **from** cd.bookings 

​			**group** **by** facid

 **order** **by** sum(slots) **desc**

 LIMIT 1; 



### <u>List the total slots booked per facility per month, part 2</u>

**select** facid, extract(month **from** starttime) **as** month, sum(slots) **as** slots 

​			**from** cd.bookings

​			**where** 

​							starttime >= '2012-01-01' 	

​							**and** starttime < '2013-01-01' 

​			**group** **by** rollup(facid, month)

 **order** **by** facid, month;



### <u>List the total hours booked per named facility</u>

**select** facs.facid, facs.name, 

​			trim(to_char(sum(bks.slots)/2.0, '9999999999999999D99')) **as** "Total Hours" 	

​			**from** cd.bookings bks

​		    **inner** **join** cd.facilities facs

​					 	**on** facs.facid = bks.facid

​			 **group** **by** facs.facid, facs.name 

**order** **by** facs.facid;



### <u>List each member's first booking after September 1st 2012</u>

**select** mems.surname, mems.firstname, mems.memid, min(bks.starttime) **as** starttime 				**from** cd.bookings bks

​				 **inner** **join** cd.members mems **on** 	

​								mems.memid = bks.memid 

​				**where** starttime >= '2012-09-01'

​				 **group** **by** mems.surname, mems.firstname, mems.memid

 **order** **by** mems.memid; 



### <u>Produce a list of member names, with each row containing the total member count</u>

**select** count(*) **over**(), firstname, surname

​				 **from** cd.members

 **order** **by** joindate



### <u>Produce a numbered list of members</u>

**select** row_number() **over**(**order** **by** joindate), firstname, surname

​			 **from** cd.members 

**order** **by** joindate



### <u>Output the facility id that has the highest number of slots booked</u>

**select** facid, total **from** (

​			 **select** facid, sum(slots) total, rank() **over** (**order** **by** sum(slots) **desc**) rank        							**from** cd.bookings 

​							**group** **by** facid 

​			 ) **as** ranked

​			 **where** rank = 1



### <u>Rank members by (rounded) hours used</u>

**select** firstname, surname, 

​				((sum(bks.slots)+10)/20)*10 **as** hours, *

​				**rank() **over** (**order** **by** ((sum(bks.slots)+10)/20)*10 **desc**) **as** rank

​			 	**from** cd.bookings bks

​				 **inner** **join** cd.members mems 

​								**on** bks.memid = mems.memid

​				 **group** **by** mems.memid

 **order** **by** rank, surname, firstname;



### <u>Find the top three revenue generating facilities</u>

**select** name, rank **from** ( 

​				**select** facs.name **as** name, rank() **over** (**order** **by** sum(**case** 	

​																**when** memid = 0 **then** slots * facs.guestcost 																**else** slots * membercost 

​												**end**) **desc**) **as** rank 

​							**from** cd.bookings bks

​					    	**inner** **join** cd.facilities facs 	

​											**on** bks.facid = facs.facid 

​							**group** **by** facs.name

​					 ) **as** subq

​					 **where** rank <= 3

 **order** **by** rank;



### <u>Classify facilities by value</u>

**select** name, **case** **when** class=1 **then** 'high' 

​								**when** class=2 **then** 'average' 	

​								**else** 'low' 	

​								**end** revenue

​				 **from** ( 

​								**select** facs.name **as** name, ntile(3) **over** (**order** **by** sum(**case** 																**when** memid = 0 **then** slots * facs.guestcost 																**else** slots * membercost 	

​											**end**) **desc**) **as** class 

​								**from** cd.bookings bks

​						    	**inner** **join** cd.facilities facs 	

​												**on** bks.facid = facs.facid 

​								**group** **by** facs.name

​					 ) **as** subq 

**order** **by** class, name;



### <u>Calculate the payback time for each facility</u>

**select** 	facs.name **as** name, 

​				facs.initialoutlay/((sum(**case** 

​											**when** memid = 0 **then** slots * facs.guestcost 	

​											**else** slots * membercost 

​								**end**)/3) - facs.monthlymaintenance) **as** months 

​				**from** cd.bookings bks

​			    **inner** **join** cd.facilities facs

​							 	**on** bks.facid = facs.facid 

​				**group** **by** facs.facid

 **order** **by** name;



### <u>Calculate a rolling average of total revenue</u>

**select** 	dategen.date,

​				 ( 

​								*-- correlated subquery that, for each day fed into it,* 

​								*-- finds the average revenue for the last 15 days* 

​								**select** sum(**case** 	

​											**when** memid = 0 **then** slots * facs.guestcost 

​											**else** slots * membercost 	

​								**end**) **as** rev 	

​								**from** cd.bookings bks 

​								**inner** **join** cd.facilities facs 	

​											**on** bks.facid = facs.facid 

​								**where** bks.starttime > dategen.date - interval '14 days' 

​												**and** bks.starttime < dategen.date + interval '1 day'

​					 )/15 **as** revenue

​					 **from** 

​					( 	

​								-- generates a list of days in august* 

​								**select** 	cast(generate_series(timestamp '2012-08-01', 

​												'2012-08-31','1 day') **as** date) **as** date )  **as** dategen

 **order** **by** dategen.date; 

