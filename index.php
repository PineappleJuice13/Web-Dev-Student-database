<?php

$name = "Jayda";
$title = "Homepage";
$date = "Nov 10, 2025";
$file = "jayda_index.php";
$description = "Homepage for lab3";


include("./includes/header.php");
?>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href=#>Lab 3</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/lab3/grades.php">Students Gardes</a></li>

      </ul>

    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">

    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome to Lab 3</h1>
      <p>
        In this lab, I created a Homepage and a Students Grades page.
        The Students Grades will display information about the grades of a student the user types in.
      </p>
      <hr>
      <h3>
        Needed Input!
      </h3>
      <p>
        By typing student_num and a student ID into the url of Students Grades, you'll be able to get the information of that student!
        For example if you input 'localhost/lab3/grades.php?student_num=100978094' it will give you my information!
      </p>

    </div>
    <div class="col-sm-2 sidenav">

    </div>
  </div>
</div>


<?php
include("./includes/footer.php");
?>