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
    $t1=$_POST['t1'];
    $t2=$_POST['t2'];
    
    
    
    $d=mysql_query("select * from org_data where lid='$usr'");
     
     $d1=mysql_fetch_row($d);

    $ins=mysql_query("insert into park values('','$t1','$t2','$d1[1]','$d1[3]','$d1[8]','$d1[9]','$usr','0')");
    if($ins>0)
    {
       
            
                header("location:add_park.php?success=1");
            }
        }
    

?>

<?php
if(isset($_GET['del1']))
{
    $del1=mysql_query("delete from park where id='".$_GET['del1']."'");
    //echo mysql_error();
    if($del1>0)
    {
       header("location:add_park.php");
}
}
                            

                            
    ?>
<?php
if(isset($_GET['del2']))
{
    $del2=mysql_query("delete from park where id='".$_GET['del2']."'");
    //echo mysql_error();
    if($del2>0)
    {
       header("location:add_park.php");
}
}
                            

                            
    ?>
<style type="text/css">
        
        .nav-tabs { border-bottom: 2px solid #DDD; }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover { border-width: 0; }
    .nav-tabs > li > a { border: none; color: #666; }
        .nav-tabs > li.active > a, .nav-tabs > li > a:hover { border: none; color: #4285F4 !important; background: transparent; }
        .nav-tabs > li > a::after { content: ""; background: #4285F4; height: 2px; position: absolute; width: 100%; left: 0px; bottom: -1px; transition: all 250ms ease 0s; transform: scale(0); }
    .nav-tabs > li.active > a::after, .nav-tabs > li:hover > a::after { transform: scale(1); }
.tab-nav > li > a::after { background: #21527d none repeat scroll 0% 0%; color: #fff; }
.tab-pane { padding: 15px 0; }
.tab-content{padding:20px}


    </style>

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
                                                        if(isset($_GET['success']))
                                                        {
                                                            echo "Parking Space Added";
                                                        }
                                                        
                                                        ?>
                                                            </font></h1>
                                        </center>
                                        <div class="col-md-6">
                                            <form method="post" enctype="multipart/form-data">
                                            <table class="table table-bordered table-condensed table-hover table-responsive table-striped">
                                                <tr>
                                                    <td colspan="2"><center><b>SELL YOUR PRODUCTS</b></center></td>
                                                </tr>
                                                <tr>
                                                    <td>No of Free Plot</td>
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
                                                    <td colspan="2"><center><input type="submit" name="sub" value="Add Now" class="btn btn-success" /></center></td>
                                                </tr>
                                            </table>
                                            </form>
                                            
                                        </div>
                                        <form method="post">
                                        <div class="col-md-6">
                                            <form method="post">
                                            
                                             <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">2-Wheeler</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">4-Wheeler</a></li>
                                        
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                           
                                             <?php
$sel_pes=mysql_query("select * from park where park_id='$usr' and ty='2-Wheeler'");
if(mysql_num_rows($sel_pes)>0)
{
    ?>
    <table class="table table-responsive table-bordered"style="background: #E5E5E5">
    <tr>
        <td>#</td>
        <td>Type</td>
        <td>Free Slot</td>
       
        
        <td>More</td>
    </tr>
    <?php
    $i=1;
    while($r_pes=mysql_fetch_row($sel_pes))
    {
        ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $r_pes[2] ?></td>
         <td><?php echo $r_pes[1] ?></td>
          
        
        <td> <a href="add_park.php?del1=<?php echo $r_pes[0] ?>"><span class="glyphicon glyphicon-trash" style="color: red"></span></a></td>
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
                                        <div role="tabpanel" class="tab-pane" id="profile">
                                             <?php
$sel_des=mysql_query("select * from park where park_id='$usr'and ty='4-Wheeler'");
if(mysql_num_rows($sel_des)>0)
{
    ?>
    <table class="table table-responsive table-bordered"style="background: #E5E5E5">
    <tr>
        <td>#</td>
        <td>Type</td>
        <td>Free Slot</td>
        
        
        <td>More</td>
    </tr>
    <?php
    $i=1;
    while($r_des=mysql_fetch_row($sel_des))
    {
        ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $r_des[2] ?></td>
         <td><?php echo $r_des[1] ?></td>
        
         <td> <a href="add_park.php?del2=<?php echo $r_des[0] ?>"><span class="glyphicon glyphicon-trash" style="color: red"></span></a></td>
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