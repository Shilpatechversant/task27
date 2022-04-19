<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Task 27</title>
<body>
<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#"
sessionManagement="yes">

 <div class="container" style="background-color:#d18eaf;">
    <form action="" method="post">
    <h1>Login</h1>
    <hr>
 <div class="col-md-12"> 
    <label for="email"><b>Username</b></label>
    <input type="text" placeholder="Enter username" name="username" required><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required><br>  
    <button type="submit" class="signupbtn" value="Login" name="form_submit">Login</button>  
  </div>
  </div>
</form>
    <cfif IsDefined("form.form_submit")>        
        <cfquery  datasource="newtech" result="outputdata">
            SELECT * FROM sakila.user_table WHERE username = "#form.username#" AND password="#form.password#"
        </cfquery> 

        <cfif outputdata.RECORDCOUNT GT 0>                    

     <cfif NOT StructKeyExists(Session, "mystruct")>
     <cflock timeout=20 scope="Session" type="Exclusive">
     <cfset Session.mystruct = structNew()>
     </cflock>
     </cfif>
         <cfset Session.mystruct["username"] = form.username> 
         <cfset Session.mystruct["loggedin"] = true>   
               <cflocation url="components/welcome.cfm" >     
                <cfif #Session.mystruct["loggedin"]# eq true>
              
                </cfif>    
        <cfelse>
       <cfoutput>Please enter correct username and password</cfoutput>
        </cfif>
        
    </cfif>
</body>
</html>


























