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
        
            
                header("location:add_vehicle.php?suss=1");
            }
        }



?>

<?php
if(isset($_GET['del1']))
{
    $del1=mysql_query("delete from park_add  where id='".$_GET['del1']."'");
    //echo mysql_error();
    if($del1>0)
    {
       header("location:add_vehicle.php");
}
}
                            

                            
    ?>
<script type="text/javascript">

function chka(b)
{
var p5=b.length;
var ch=/([A-Z])$/;
if(ch.test(b)==false)
{
document.getElementById("n3").innerHTML="<font color='red' >*Only Enter Capital Letters*</font>";
return false;
}
else if(p5!=2)
{
 document.getElementById("n3").innerHTML="<font color='red'>*Only two characters*</font>"; 
 return false;
}
else
{
document.getElementById("n3").innerHTML="";
}
}


function chkb(b1)
{
var k5=b1.length;
var ch1=/([0-9])$/;
if(ch1.test(b1)==false)
{
document.getElementById("m3").innerHTML="<font color='red'>*Only Numbers*</font>";
return false;
}
else if(k5!=2)
{
document.getElementById("m3").innerHTML="<font color='red'>*Only Two Characters*</font>";
return false;
}
else
{
  document.getElementById("m3").innerHTML="";  
}
}


function chkc(b2)
{
var k6=b2.length;
var ch2=/([0-9])$/;
if(ch2.test(b2)==false)
{
document.getElementById("o3").innerHTML="<font color='red'>*Only Numbers*</font>";
return false;
}
else if(k6!=4)
{
document.getElementById("o3").innerHTML="<font color='red'>*Must Have Four Numbers*</font>";
return false;
}
else
{
  document.getElementById("o3").innerHTML="";  
}
}
 
function chkd(c)
{
var t5=c.length;
var ch=/([A-Z])$/;
if(ch.test(c)==false)
{
document.getElementById("q3").innerHTML="<font color='red' >*Only Alphabatic Enter Alphabatic Capital Letters*</font>";
return false;
}

else
{
document.getElementById("q3").innerHTML="";
}
}

</script>

		<!--end header-section-->
			<div class="header-banner">
				<div class="container">
					<h2>Parking Slot</h2>
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
                                                        if(isset($_GET['suss']))
                                                        {
                                                            echo "Vehicle Added";
                                                        }
                                                        
                                                        ?>
                                                            </font></h1>
                                        </center>
                                        <div class="col-md-6">
                                            <form method="post" enctype="multipart/form-data">
                                            <table class="table table-bordered table-condensed table-hover table-responsive table-striped">
                                                <tr>
                                                    <td colspan="2"><center><b>Add Vehicle</b></center></td>
                                                </tr>
                                                <tr>
                                                    <td>Vehicle Name</td>
                                                    <td><input type="text" name="t1" class="form-control" required="required" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Category</td>
                                                    <td>
                                                        <select name="t2"class="form-control">
					  <option value="-- Select Category --">-- Select Category --</option>
                                          <option>2-Wheeler</option>
                                          <option>4-Wheeler</option>
					</select>
                                                    </td>
                                                </tr>
                                                <tr>
                            <td>Vehicle's Number Plate</td>
                            <td><input type="text"name="t6a"class="form-control"equired="required"onblur="chka(this.value)" /><span id="n3"></span>--
                                <input type="text"name="t6b"class="form-control"required="required"onblur="chkb(this.value)" /><span id="m3"></span>--
                                <input type="text"name="t6d"class="form-control"required="required"onblur="chkd(this.value)" /><span id="q3"></span>--
                                <input type="text"name="t6c"class="form-control"required="required"onblur="chkc(this.value)" /><span id="o3"></span></td>
                        </tr>
                                                 <tr>
                                                    <td>Driver Name</td>
                                                    <td><input type="text" name="t4" class="form-control" required="required" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Address</td>
                                                    <td><textarea class="form-control"name="t5"></textarea></td>
                                                </tr>
                                                
                                                
                                                
                                               
                                                
                                                <tr>
                                                    <td colspan="2"><center><input type="submit" name="sub" value="Add Now" class="btn btn-success" /></center></td>
                                                </tr>
                                            </table>
                                            </form>
                                            
                                        </div>
                                        <form method="post">
                                        <div class="col-md-6">
                                            
                                           
                                             <?php
$sel_pes=mysql_query("select * from park_add where pid='$usr'");
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
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        Index.initParallaxSlider();
    });
</script>
		<?php

include 'footer.php';
ob_start();

?>