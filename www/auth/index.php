<html>
<head>
        <title>Hello world!</title>
        <style>
        body {
                background-color: white;
                text-align: center;
                padding: 50px;
        }
        </style>
</head>
<body>
        <img src="smile.png" />
        <h1><?php echo "Hello world"; ?></h1>
        <h1><?php echo ($_SERVER["PHP_AUTH_USER"]); ?></h1>
</body>
</html>

