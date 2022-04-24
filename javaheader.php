<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: sans-serif;
        }
        ul{
            position:absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            margin:0;
            padding: 0;
            display: flex;
        }
        ul li{
            list-style: none;

        }
        ul li a{
            position: relative;
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            text-transform: uppercase;
            color : #262626;
            font-weight: bold;
        }
        ul li.active a{
            background-color: black;
        }
    </style>
</head>
<body>
    <ul>
        <li class=""><a href="#">Home </a></li>
        <li class=""><a href="#">About</a></li>
        <li class=""><a href="#">Contact </a></li>
        <li class=""><a href="#">Services </a></li>
        <li class=""><a href="#">Contact </a></li>
    </ul>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        $(document).on('click','ul li',function(){
            $(this).addClass('active').siblings().removeClass('active')
        })
    </script>
</body>
</html>
