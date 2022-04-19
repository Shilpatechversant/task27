
<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
sessionManagement="yes">

<cfif NOT StructKeyExists(Session, "mystruct")>
<cfoutput><h3> session not exist </h3></cfoutput>
        <cflocation url="../index.cfm" >
</cfif>
   
   <cfif  StructKeyExists(Session.mystruct,"loggedin")>
    <cfoutput><h1>Welcome home page</h1>
    <form action="" method="post">
    <button type="submit" name="form_submit"> logout</button></form>
     </cfoutput>
             <cfelse>
             <cflocation url="../index.cfm" >
 </cfif>
 <cfif IsDefined("form.form_submit")>
    <cfset StructClear(Session.mystruct)>
    <cflocation url="../index.cfm" >
 </cfif>

