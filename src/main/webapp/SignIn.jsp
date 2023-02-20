<%-- 
    Document   : SignIn
    Created on : 13 Feb, 2023, 3:39:20 AM
    Author     : This Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cinemax-SignIn</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="Styles/signIn.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    </head>
    <body>
        <!--<div class="background-wrapper">
        </div>-->
        <div id="app">
            <!--<div id="header">
                    <img id="logo" src="images/logo.png">
            </div>-->
            <div id="container">
                <form id="log-in-form" action="" method="POST">
                    <div class="label-container">
                        <img id="logo" src="images/logo.png">
                        <h3 id="sign-in-text">Sign In</h3>
                    </div>
                    <%
                        if(request.getParameter("newuser")!=null && request.getParameter("newuser").contains("true")){
                    %>
                        <div class="inputSuccess" id="email-inputError">Account Created</div>
                    <%}%>
                    <div class="box-container" id="email-container">
                        <input class="field" id="email-field" name="email" type="email" required>
                        <label class="label" id="email-label" for="email-field">Email ID</label>
                    </div>
                    <div class="inputError" id="email-inputError"></div>
                    
                    <div class="box-container" id="pwd-container">
                        <input class="field" id="pwd-field" name="password" type="password" required>
                        <label class="label" id="pwd-label" for="pwd-field">Password</label>
                    </div>
                    <div class="inputError" id="pwd-inputError" style="display: none">Incorrect Email or Password</div>
                    <div class="box-container" id="login-button-container">
                        <input id="login-button" type="button" value="Sign In" onclick="authenticate()">
                    </div>
                <div class="sign-up">
                    <span id="sign-up"></span>
                    <a class="sign-up-link" id="sign-up-link" href="SignUp.html">Create New Account</a>
                </div>
            </div>
            
        </div>
        <footer>
                <div class="footer" id="footer">
                    <!--<p class="footer-header">
                        <span id="footer-header"></span>
                        <a class="footer-link">0800-761-4632</a>
                    </p>-->
                    <ul class="inline-footer-ul">
                        <li class="inline-footer-li">
                            <h3 class="footer-link">Email: cinematch@email.com</h3>
                        <li class="inline-footer-li">
                            <h3 class="footer-link">Customer Support: (820)-222-6312</h3>
                        </li>
                    </ul>
                    <p style="float: right">Designed by Team CineMatch</p>
                </div>
            </footer>
        <script>
            function authenticate(){
                if(document.getElementById("email-field").value==""){
                    alert("Email ID Required");
                }
                else if(document.getElementById("pwd-field").value==""){
                    alert("Password Required");
                }
                else{
                    console.log("Authenticating...");
                    $.ajax({
                        url: 'ws/SignIn.jsp',
                        type: 'POST',
                        data: {
                            mail: document.getElementById("email-field").value,
                            pass: document.getElementById("pwd-field").value
                        },
                        success: function (data) {
                            //alert("success: "+data);
                            location.replace("Home.jsp");
                        },
                        error: function (e) {
                            //alert("error: "+e);
                            document.getElementById("pwd-inputError").style.display="block";
                            //document.getElementById("pwd-inputError").innerHTML = "Incorrect Email or Password";
                        }
                    });
                }
            }
        </script>
    </body>
</html>
