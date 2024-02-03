<!DOCTYPE html>
<html>

   <head>
      <link rel="icon" type="image/png" href="logo.png">
      <title>E-Bill Portal</title>
      <style>
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
         }

         /* Apply styles to the body */
         body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
         }

         /* Style for the form container */
         form {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            text-align: center;
         }

         /* Style for the heading */
         h2 {
            margin-bottom: 20px;
            color: #333;
         }

         /* Style for form labels */
         label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
         }

         /* Style for form inputs */
         input[type="text"],
         input[type="password"],
         input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
         }

         /* Style for the submit button */
         input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
         }

         input[type="submit"]:hover {
            background-color: #0056b3;
         }
      </style>
   </head>

   <body>
      <h2>User Registration</h2>

      <form action="<%=request.getContextPath()%>/admin?action=create_customer" method="post">

         <label for="username">Name:</label>
         <input type="text" id="username" name="username" required><br><br>

         <label for="email">Email:</label>
         <input type="email" id="email" name="email" required><br><br>

         <label for="password">Password:</label>
         <input type="password" id="password" name="password" required><br><br>

         <input type="submit" value="Register">
      </form>
   </body>

</html>
