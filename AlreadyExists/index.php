<?php

// $conn = mysqli_connect("localhost", "root", "", "avoid_duplicate");


$conn = mysqli_connect("localhost", "root", "", "avoid_duplicate");


if(isset($_POST['insert'])){
    $uname = $_POST['uname'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];


    $errors = array();


    $u = "SELECT  username FROM new WHERE username = '$uname'";
    $uu = mysqli_query($conn, $u);


    $e = "SELECT email FROM new WHERE email = '$email'";
    $ee = mysqli_query($conn, $e);

    $p = "SELECT  password FROM new WHERE password = '$pass'";
    $pp = mysqli_query($conn, $p);


    if(empty($uname)){
        $errors['u'] = "Username Requires";
    }else if(mysqli_num_rows($uu) > 0){
        $errors['uuu'] = "Username already Exists";
    }

    if(empty($email)){
        $errors['e'] = "Email Requires";
    }else if(mysqli_num_rows($ee) > 0){
        $errors['eee'] = "Email already Exits";    
    }


    if(empty($pass)){
        $errors['p'] = "Password Requires";
    }else if(mysqli_num_rows($pp) > 0){
        $errors['ppp'] = "Password already Exists";
    }



    if(count($errors) == 0){

        $query = "INSERT INTO new(username,email, password) VALUE('$uname', '$email', '$pass')";
        $result = mysqli_query($conn, $query);

        if($result){
            // echo "<script>alert('done')</script>";
            echo "Success Fully";
        }else{
            // echo "<script>alert('Failed')</script>";
            echo "Failed";
        }

    }

}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exists</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6  my-5">
                    <form method="post">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="uname" id="" placeholder="Enter UserName" 
                            class="form-control" require="" >
                            <p class="text-warning"><?php if(isset($errors['u'])) echo $errors['u'];?></p>
                            <p class="text-danger"><?php if(isset($errors['uuu'])) echo $errors['uuu'];?></p>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="text" name="email" id="" placeholder="Enter Email"
                            class="form-control"  require="">
                            <p class="text-warning"><?php if(isset($errors['e'])) echo $errors['e'];?></p>
                            <p class="text-danger"><?php if(isset($errors['eee'])) echo $errors['eee'];?></p>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="text" name="pass" id="" placeholder="Enter Password" 
                            class="form-control"  require="">
                            <p class="text-warning"><?php if(isset($errors['p'])) echo $errors['p'];?></p>
                            <p class="text-danger"><?php if(isset($errors['ppp'])) echo $errors['ppp'];?></p>
                        </div>
                        <!-- <input type="submit" name="insert" value="insert" class="btn btn-success mt-2"> -->
                        <button type="submit" name="insert" class="btn btn-success mt-2">Submit</button>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>

</body>
</html>