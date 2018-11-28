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
    header("location:index.php");    
}
?>
		<!--end header-section-->
			<div class="header-banner">
				<div class="container">
					<h2>Check Nearby Parking Area</h2>
				</div>
			</div>
		<!--end header-section-->
	<div class="content">
		<div class="typography">
			<!-- container-wrap -->
                        <div class="container">
                            
                            
                            <div class="row">
                                <div class="col-lg-1"></div>
                                <div class="col-lg-10">
                                    
                                      <?php
                            
                            $a=mysql_query("select * from s_book where uid='$usr' order by id desc");
                            if(mysql_num_rows($a)>0)
                            {
                                ?>
    <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            
            <th>Date</th>
            <th>Car</th>
            <th>license</th>
            
            
            <th>Status</th>
          </tr>
          <?php
                            $i=0;
                            while($b=mysql_fetch_row($a))
                            {
                            
?>
        </thead>
        <tbody>
         
          <tr>
           
            <td><?php echo $b['1']?></td>
            <td><?php echo $b['2']?></td>
            <td><?php echo $b['3']?></td>
            
            
            <td>
                
            <?php
        if ($b[8]=='0')
        {
            ?>
                                <i><img style="width: 45px;height: 40px" src="../gif/WaitCover.gif"><font style="font-size: large" color='orange'>&nbsp;&nbsp;Waiting</font></i>
            <?php
        }
        ?>
        <?php
             if ($b[8]=='1')
        {
                 ?>
             
                                <i><img style="width: 35px;height: 30px" src="../gif/checkmark.gif"><font style="font-size: large" color='orange'>&nbsp;&nbsp;<font  color='green'> Approved</font></i>
            
            <?php
        }
        ?>
            <?php
            
         if ($b[8]=='2')
        {
             
         ?>
                                <i><img style="width: 45px;height: 40px" src="../gif/Dont_symbol_wobble_lg_clr.gif"><font style="font-size: large" color='orange'>&nbsp;&nbsp;<font color='Red'>denied</font></i>
                  <?php
        }
            
            ?>
            </td>
          </tr>
          
          
          
          <?php
    $i++;
    }
                            
 ?>
          
          
          
        </tbody>
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
			</div>
                        </div>
	<!-- //typography -->

		<?php

include 'footer.php';
ob_start();

?>