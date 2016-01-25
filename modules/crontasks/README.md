# Generate the HTML for Alumni, Team and Team Leaders.


## The plan

1. Erase the current files

2. Connect to the MySQL DB  
    - The DB will have multiple tables. I.E. Tables for each type. 

3. Begin to fill the files based off type (this is the tricky part) 

4. Once finished we close the connection and the website will be updated. 



## Possible Issues

- If the web page is accessed during the cron task it will look very strange and only 1/2 complete. My guess is that is 
the process will be very fast so I'm not very worried but still. It will be interesting.
 
- If that data entered in is not sterilised we may be having issues. Def can not have any ' or " unless we add \ to them. 

## Data Types

0 - do not include (null)

1 - Current Member

2 - Team Leader

3 - Mentor

4 - Student Alumni

5 - Mentor Alumni

