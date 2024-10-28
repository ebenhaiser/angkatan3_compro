<?php
require_once "../admin/connection.php";

if (isset($_POST['send'])) {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $message = $_POST['message'];
  
  $selectQuery = mysqli_query($connection, "SELECT email FROM contact WHERE email = '$email'");
  
  if(mysqli_num_rows($selectQuery) > 0) {
    header('location: ../contact.php?status=sudahAda');
    exit();
  } else {
    $queryInsert = mysqli_query($connection, "INSERT INTO contact (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')");
    if($queryInsert) {
      header('location: ../contact.php?status=success');
      exit();
    }
  }
}