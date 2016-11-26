<%-- 
    Document   : login
    Created on : Sep 19, 2016, 3:48:41 PM
    Author     : fpoly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #fff;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
li .hvr-bounce-to-bottom a {
    color: #000;
    text-decoration: none;
    letter-spacing: 1px;
    font-size: 1.2em;
    padding: 1.2em 2em;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 15%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}
li > a {
    color: #000;
    text-decoration: none;
    letter-spacing: 1px;
    font-size: 1.2em;
    padding: 1.2em 2em;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}

</style>
    
<div id="id01" class="modal">

    <form class="modal-content animate" action="LoginServlet" method="post">
        <div class="container">
            <div class="col-md-11">
                <label><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <button type="submit">Login</button>
                <input type="checkbox" checked="checked"> Remember me
            </div>
        </div>

        <div class="container hvr-bounce-to-bottom" style="">

            <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
            <span class="psw">Forgot <a href="#">password?</a></span>

        </div>
    </form>
</div>