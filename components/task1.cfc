<cfcomponent>
     <cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
      sessionManagement="yes">
    <cffunction name="insertdetails" access="remote">
        <cfargument name="username" type="string" required="true">
        <cfargument name="password" type="string" required="true">
        <cfquery datasource="newtech" result="outputdata"> 
            SELECT * FROM sakila.user_table WHERE username = "#arguments.username#" AND password="#arguments.password#" 
         </cfquery>
        <cfif outputdata.RECORDCOUNT GT 0>
            <cfif NOT StructKeyExists(Session, "mystruct" )>
                <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct=structNew()>
                </cflock>
            </cfif>
            <cfset Session.mystruct["username"]=arguments.username>
            <cfset Session.mystruct["loggedin"]=true>
            <cflocation url="welcome.cfm">
        </cfif>
        <cflocation url="../index.cfm?error=2">
    </cffunction>
    <cffunction name="logout" access="remote">
        <cfset StructClear(Session.mystruct)>
        <cflocation url="../index.cfm">
    </cffunction>
</cfcomponent>