# SQL Joins

### Mock Example

![DB schema](https://pgexercises.com/img/schema-horizontal.png)


### <u>Retrieve the start times of members' bookings</u>

**select** bks.starttime  

​			**from**  	

​							cd.bookings bks 	

​							**inner** **join** cd.members mems 	

​											**on** mems.memid = bks.memid

​			 **where**  

​							mems.firstname='David'  	

​							**and** mems.surname='Farrell';     



### <u>Work out the start times of bookings for tennis courts</u>

**select** bks.starttime **as** **start**, facs.name **as** name

​			 **from**  

​							cd.facilities facs 	

​							**inner** **join** cd.bookings bks 		

​											**on** facs.facid = bks.facid

​			 **where**  	

​							facs.facid **in** (0,1) **and**

​							bks.starttime >= '2012-09-21' **and** 	

​							bks.starttime < '2012-09-22'

 **order** **by** bks.starttime;    



### <u>Produce a list of all members who have recommended another member</u>

**select** **distinct** recs.firstname **as** firstname, recs.surname **as** surname

​			**from**

​						cd.members mems

​						**inner** **join** cd.members recs 	

​										**on** recs.memid = mems.recommendedby

**order** **by** surname, firstname;     



### <u>Produce a list of all members, along with their recommender</u>

**select** mems.firstname **as** memfname, mems.surname **as** memsname, recs.firstname **as** recfname, recs.surname **as** recsname

​				 **from**  	

​							cd.members mems

​							**left** **outer** **join** cd.members recs 	

​										**on** recs.memid = mems.recommendedby

 **order** **by** memsname, memfname;   



### <u>Produce a list of all members who have used a tennis court</u>

**select** **distinct** mems.firstname || ' ' || mems.surname **as** member, facs.name **as** facility 		

​		 	  **from**

​				   	 cd.members mems

​						**inner** **join** cd.bookings bks 		

​										**on** mems.memid = bks.memid

​						**inner** **join** cd.facilities facs 	

​										**on** bks.facid = facs.facid

​				**where** 	

​						bks.facid **in** (0,1)

 **order** **by** member



### <u>Produce a list of costly bookings</u>

**select** mems.firstname || ' ' || mems.surname **as** member,  

​			facs.name **as** facility,

​			 **case**  	

​						**when** mems.memid = 0 **then** 	

​										bks.slots*facs.guestcost 	

​						**else** 		bks.slots*facs.membercost *

​			**end** **as** cost    

​		    **from**              

​					  cd.members mems                     

​			           **inner** **join** cd.bookings bks                      

​								  **on** mems.memid = bks.memid       

​			           **inner** **join** cd.facilities facs          

​					              **on** bks.facid = facs.facid    

​		    **where** 	

​					bks.starttime >= '2012-09-14' **and**  	

​					bks.starttime < '2012-09-15' **and** ( 	

​								(mems.memid = 0 **and** bks.slots*facs.guestcost > 30) **or** 	

​							   (mems.memid != 0 **and** bks.slots*facs.membercost > 30)

​					)

**order** **by** cost **desc**;



### <u>Produce a list of all members, along with their recommender, using no joins.</u>

**select** **distinct** mems.firstname || ' ' ||  mems.surname **as** member,

​				 (**select** recs.firstname || ' ' || recs.surname **as** recommender  	

​								**from** cd.members recs  	

​								**where** recs.memid = mems.recommendedby

​				 )

​				**from**  	

​								cd.members mems

**order** **by** member;



### <u>Produce a list of costly bookings, using a subquery</u>

**select** member, facility, cost **from** (

​			 **select**  	

​							mems.firstname || ' ' || mems.surname **as** member,

​							facs.name **as** facility,

​							**case** 	

​											**when** mems.memid = 0 **then**

​																	bks.slots*facs.guestcost

​											**else**

​																	bks.slots*facs.membercost

​							**end** **as** cost

​							**from** 		

​											cd.members mems

​											**inner** **join** cd.bookings bks 		

​														**on** mems.memid = bks.memid 		

​											**inner** **join** cd.facilities facs 		

​														**on** bks.facid = facs.facid

​						**where** 	

​									 	  bks.starttime >= '2012-09-14' **and** 	

​									   	bks.starttime < '2012-09-15'

​				) **as** bookings

​				 **where** cost > 30

 **order** **by** cost **desc**;       
