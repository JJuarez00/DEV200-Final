
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Link to the Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500;700&family=Yantramanav:wght@500&display=swap" rel="stylesheet">
    
    <style>
       
        body {
            background-image: url('https://www.storespace.com/images/content/Web_Evergreen_Drive%20Up_Header-2-1621276312-1626710708.jpg'); /* Change 'pic.png' to the actual path of your image */
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
        }
        
        body {
            font-family: Arial, sans-serif; 
            background-color: #f0f0f0;
            text-align: center;
        }

        h1 {
            width: 750px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            font-family: 'Ubuntu', sans-serif;
            font-weight: 700; 
        }

        label {
            font-family: 'Ubuntu', sans-serif;
            font-weight: 500; 
        }

        body {
            margin-top: 140px;
            font-family: Arial, sans-serif; 
            text-align: center;
        }

        div {
            width: 550px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Welcome to Joe’s Rental Storage Online Center!</h1>
    <br>
    <div>
    <form action="units.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username">
        <br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <br>
        <input type="submit" value="Login">
    </form>
    
    <form action="register.jsp" method=""post">
            <input type="submit" value="Create New Account">
    </form>
    </div>
</body>
</html>
