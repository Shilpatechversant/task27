<cfcomponent> 
    <cffunction name="insertdetails" access="remote"> 
<cfquery name="insert" datasource="newtech">    
INSERT INTO sakila.emp_details(position,relocate,join_date,website,resume,salary,first_name,last_name,email,phone)
VALUES ('#position#', '#relocate#', '#cdate#','#p_url#','#file_name#','#salary#',
'#f_name#','#l_name#','#email#','#phone#') 
</cfquery> 
<cflocation  url="index.cfm?Message=1">
    </cffunction> 
</cfcomponent>

