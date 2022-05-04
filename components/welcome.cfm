
<cfapplication name="login" sessionTimeout="#CreateTimeSpan(0, 0, 60, 60)#" sessionManagement="yes">
    <cfif NOT StructKeyExists(Session, "mystruct")>
    <cfoutput><h3> session not exist </h3></cfoutput>
    <cflocation url="../index.cfm?ses_error=2" >
    </cfif>   
    <cfif  StructKeyExists(Session.mystruct,"loggedin")>
    <html>
    <head>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
    <section>
    <div class="main_container">
    <div class="forms card" >             
    <hr>
    <cfoutput><h1>Welcome home page</h1>
    <form action="task1.cfc?method=logout" method="post">
    <button type="submit" name="form_submit"> logout</button></form>
    </form>
    </div>
    </div>
    </section>
    </body>
    </html>
    </div>
    </div>
    </div>
    </cfoutput>
    <cfelse>
    <cflocation url="../index.cfm?ses_error=2" >
    </cfif>
   

