
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agreement</title>
    <!-- Link to the Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500;700&family=Yantramanav:wght@500&display=swap" rel="stylesheet">
    
    <style>
        
        h1 {
            font-family: 'Ubuntu', sans-serif;
            font-weight: 700; 
        }

        p {
            font-size: 18px;
            font-family: 'Ubuntu', sans-serif;
            font-weight: 600; 
        }

        
        body {
            font-family: Arial, sans-serif; 
            background-color: #f0f0f0;
            text-align: center;
        }



        input[type="hidden"],
        input[type="submit"] {
            margin: 5px 0;
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
    <h1>Your Agreement</h1>
    <p>
        You have chosen <%= request.getParameter("unit") %>.
    </p>
    <form action="units.jsp" method="post">
        <input type="hidden" name="unit" value="<%= request.getParameter("unit") %>">
        <input type="submit" value="Cancel">
    </form>
</body>
</html>
