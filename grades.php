<?php
$name = "Jayda";
$title = "Grades page";
$date = "Nov 10, 2025";
$file = "grades.php";
$description = "Page that takes in a students 
                id and displays it";
           
include("./includes/functions.php");
include("./includes/header_grades.php");

?>

    <h1>Student Final Mark</h1>
    <h2>Welcome!</h2>

    <table class="table table-striped">
        <tr>    
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Course Code</th>
            <th>Mark</th>
            <th>Date Achieved</th>
        </tr>
    
        <?php    
        $output = "";        
            // If no id is provided and url is empty
            if (!isset($_GET['student_num']) || empty($_GET['student_num']))
                {
                    $output = "<tr><td colspan='7'><h3 class='text-danger'>Error: No student ID provided in the URL!</h3></td></tr>";                    
                }

                else
                {
                    // Checks if input is not a number
                    if (!is_numeric($_GET['student_num'])) {
                        $output = "<tr><td colspan='7'><h3 class='text-danger'>Error: A number must be entered!</h3></td></tr>";
                    }

                    else {
                        $student_num = $_GET['student_num'];
                    
                        // Rows from students, users, and marks
                        // Joins all 3 tables together
                        // Tables are all connected by user_id
                        $sql = "SELECT users.user_id, users.first_name, users.last_name, 
                                users.email, students.student_id,
                                marks.course_code, marks.final_mark, marks.achieved_at
                                FROM users
                                JOIN students ON users.user_id = students.student_id
                                JOIN marks ON users.user_id = marks.student_id
                                WHERE users.user_id = $1
                                ORDER BY users.user_id ASC
                                ";

                        // Pepares the sql statement and excutes it
                        $stmt = pg_prepare($conn, 'student_retrieve', $sql);
                        $result = pg_execute($conn, 'student_retrieve', array("$student_num"));
                        $records = pg_num_rows($result); // Stores how many records were 

                        // If user provides an ID that isn't in the database
                        if ($records == 0) {
                            echo "<tr><td colspan='7'><h3 class='text-danger'>Error: No student was found with that ID</h3></td></tr>";
                        }

                        else {
                            // Generates the table
                            
                            for ($i = 0; $i < $records; $i ++) {
                                $id = pg_fetch_result($result, $i, "user_id");
                                $first_name = pg_fetch_result($result, $i, "first_name");
                                $last_name = pg_fetch_result($result, $i, "last_name");
                                $email = pg_fetch_result($result, $i, "email");
                                $course = pg_fetch_result($result, $i, "course_code");
                                $mark = pg_fetch_result($result, $i, "final_mark");
                                $mark_date = pg_fetch_result($result, $i, "achieved_at");
                                
                                $output .= "
                                <tr>
                                    <td>$id</td>
                                    <td>$first_name</td>
                                    <td>$last_name</td>
                                    <td>$email</td>
                                    <td>$course</td>
                                    <td>$mark</td>
                                    <td>$mark_date</td>
                                </tr>
                                ";
                            } // Loop

                        } // Else - Valid ID
                    }
                        
                    
                }  // Else - Id provided

                echo $output;
      
        ?>
    </table>

    <?php include("./includes/footer.php");?>