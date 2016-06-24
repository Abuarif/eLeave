<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>UMP e-Leave</title>
        
        <link rel="stylesheet" href="css/style.css">

    </head>

    <body>

        <div class="login-page">
            <div class="form">
<!--                <form class="register-form">
                    <input type="text" placeholder="name"/>
                    <input type="password" placeholder="password"/>
                    <input type="text" placeholder="email address"/>
                    <button type="submit">create</button>
                    <p class="message">Already registered? <a href="#">Sign In</a></p>
                </form>-->
                <form class="login-form" name="loginform" action="login_handler.jsp" method="POST">
                    <input type="text" name="username" placeholder="username" required/>mazlina
                    <input type="password" name="password" placeholder="password" required/>00437803
                    <button type="submit">login</button>
<!--                    <p class="message">Not registered? <a href="#">Create an account</a></p>-->
                </form>
            </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>
    </body>
</html>
