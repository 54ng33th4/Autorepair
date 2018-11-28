<?php

include 'menu.php';
ob_start();

?>
<?php

ob_start();
session_start();
$usr=$_SESSION['uid1'];

?>
<?php
date_default_timezone_set('asia/kolkata');

$script_tz = date_default_timezone_get();

if (strcmp($script_tz, ini_get('date.timezone'))){
    echo '';
} else {
    echo '';
}
?>
<?php

if($usr=$_SESSION['uid1'])
{
    
}
 else
     {
    header("location:../index.php");    
}
?>

<?php
if(isset($_POST['sub']))
{
    $la=$_POST['t6a'];
                          $lb=$_POST['t6b'];
                          $ld=$_POST['t6d'];
                           $lc=$_POST['t6c'];
    $t1=$_POST['t1'];
    $t2=$_POST['t2'];
    
    $t4=$_POST['t4'];
    $t5=$_POST['t5'];
    $t=date("h:i:sa");
     
   
    $ins=mysql_query("insert into park_add values('','$t1','$t2','$la-$lb-$ld-$lc','$t4','$t5','$usr','0','$t')");
    if($ins>0)
    {
        
            
                header("location:add_vehicle.php?success=1");
            }
        }



?>

<?php
if(isset($_GET['del1']))
{
    $del1=mysql_query("update park_add set st='1' where id='".$_GET['del1']."'");
    //echo mysql_error();
    if($del1>0)
    {
       header("location:add_vehicle.php");
}
}
                            

                            
    ?>

		<!--end header-section-->
			<div class="header-banner">
				<div class="container">
					<h2>Booking</h2>
				</div>
			</div>
		<!--end header-section-->
	<div class="content">
		<div class="typography">
			<!-- container-wrap -->
                       <div class="container">
                           
                         
				<div class="row">
                                    <div class="col-md-12">
                                        <center>    <h1><font color="green">
                                                            <?php
                                                        if(isset($_GET['success']))
                                                        {
                                                            echo "Vehicle Added";
                                                        }
                                                        
                                                        ?>
                                                            </font></h1>
                                        </center>
                                        
                                        <form method="post">
                                            
                                            <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            
                                           
                                             <?php
                                             $usr=$_SESSION['uid1'];
$sel_pes=mysql_query("select * from park_add where pid='$usr' and st='3'");
if(mysql_num_rows($sel_pes)>0)
{
    ?>
    <table class="table table-responsive table-bordered"style="background: #E5E5E5">
    <tr>
        <td>#</td>
        <td>Vehicle Name</td>
        <td>type</td>
        <td>Number Plate</td>
        <td>Driver Name</td>
        <td>Address</td>
       
        
        <td>More</td>
    </tr>
    <?php
    $i=1;
    while($r_pes=mysql_fetch_row($sel_pes))
    {
        ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $r_pes[1] ?></td>
         <td><?php echo $r_pes[2] ?></td>
         <td><?php echo $r_pes[3] ?></td>
         <td><?php echo $r_pes[4] ?></td>
         <td><?php echo $r_pes[5] ?></td>
          
        
        <td> <a href="add_vehicle.php?del1=<?php echo $r_pes[0] ?>"><span class="glyphicon glyphicon-trash" style="color: red"></span></a></td>
    </tr>
    <?php
    $i++;
    }
    ?>
</table>
<?php
}
else
{
    echo "No Data Found";
}

?>
                                            
                                            
                                        </div>
                                        
                                       
                                    </div>
                                            </form>
</div>
                                          
                       </div>
	<!-- //typography -->

		<?php

include 'footer.php';
ob_start();

?>