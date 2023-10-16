
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Files"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Units</title>
    <!-- Link to the Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500;700&family=Yantramanav:wght@500&display=swap" rel="stylesheet">
   
    <style>
        
        h1 {
            font-family: 'Ubuntu', sans-serif;
            font-weight: 700; 
        }

        label {
            font-family: 'Ubuntu', sans-serif;
            font-weight: 500; 
        }

        .inside {
            margin-top: 20px;
            font-weight: 500;
            font-size: 20px;
        }
        
        body {
            font-family: Arial, sans-serif; 
            background-color: #f0f0f0;
            text-align: center;
        }

        .box {
            width: 350px;
            margin: 0 auto;
            padding: 70px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }


        input[type="submit"] {
            margin: 5px 0;
        }

        input[type="submit"] {
            font-family: 'Ubuntu', sans-serif;
            font-size: 20px;
            width: 280px;
            height: 50px;
            margin-bottom: 90px;
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        
    </style>
    
</head>
<body>
    <br>
    <h1>Available Units</h1>
    <br><br>
    <div class="box">
    <form action="agreement.jsp" method="post">
        <div class="inside">
        <%
            //  the units are listed in a file named "units.txt", one unit per line
            String filePath = "/Users/josephjuarez/NetBeansProjects/RentalUnitProject/src/java/data/units.txt";
            List<String> lines = Files.readAllLines(Paths.get(filePath));
            for (String line : lines) {
        %>
            <input type="radio" name="unit" value="<%= line %>"> <%= line %><br><br><br><br>
        <%
          }
        %>
        </div>
        <input type="submit" value="Confirm">
        </form>
        
        <form action="index.jsp" method="post">
            
          <input type="submit" value="Go back to Login">
        </form>
        </div>
    </form>
</body>
</html>

