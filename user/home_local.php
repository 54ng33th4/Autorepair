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
<?php

$sel=mysql_query("select * from user_data where lid='$usr'");
$r=mysql_fetch_row($sel);
$mid=$_GET['cid'];
$sel1=mysql_query("select * from local where lid='$mid'");
$r1=mysql_fetch_row($sel1);
?>
<?php
                    
                            
                            if(isset($_POST['sub']))
                                
                            {
                                
                            
            $t1=$_POST['t1'];
            $la=$_POST['la'];
            $lo=$_POST['lo'];
           $date=date('Y-m-d');
           
                          
     mysql_query("insert into l_help values('','$la','$lo','$usr','$r[1]','$r[5]','$t1','$r1[2]','$date','0')");
    
    if(mysql_affected_rows()>0)
{
 header("location:home_local.php?cid=$mid&suss=1");
}
                          

}
 
                            
                                                       
                          
                            
                            
                            
                    ?>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDge58kDZRSDquz16IhEFQZMzHjMpFWwlw&callback=myMap"></script>
  <script type="text/javascript">
       
        function initMap() {
        var uluru = {lat: <?php echo $r1['8']?>, lng: <?php echo $r1['9']?>};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
        
      }
    
   
  </script>
  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDge58kDZRSDquz16IhEFQZMzHjMpFWwlw&callback=initMap">
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDge58kDZRSDquz16IhEFQZMzHjMpFWwlw&callback=myMap"></script>

    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(8.493865786553638, 76.94784119725227),
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            google.maps.event.addListener(map, 'click', function (e) {
                //alert("Latitude: " + e.latLng.lat() + "\r\nLongitude: " + e.latLng.lng());
                document.getElementById("la").value=e.latLng.lat();
                document.getElementById("lo").value=e.latLng.lng();
            });
        }  
        
        function dynamic_loc(a,b,i)
        {
            var mapOptions = {
                center: new google.maps.LatLng(a, b),
                zoom: 36,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"+i), mapOptions);
            google.maps.event.addListener(map, 'click', function (e) {
                //alert("Latitude: " + e.latLng.lat() + "\r\nLongitude: " + e.latLng.lng());
                //document.getElementById("la").value=e.latLng.lat();
                //document.getElementById("lo").value=e.latLng.lng();
            });
            var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
        }
    </script>  
		<!--end header-section-->
			<div class="header-banner">
				<div id="map" style="width: 100%; height: 300px"></div>
			</div>
		<!--end header-section-->
	<div class="content">
		<div class="typography">
			<!-- container-wrap -->
                        <div class="container">
                            
                            
				<div class="row">
                                    <a href="s_book.php?cid=<?php echo $mid ?>"><span class="btn btn-primary" style="float: right" class="fa fa-book"> Book Service Date</span></a>
                                    <br/>
                                    <br/>
                                <div class="col-md-12">
                                    
             <?php
                                            if(isset($_GET['suss']))
                                            {
                                            
                                            ?>
                            <center>
                                            <h4 style="color: green">Registration Complete-Service On the way</h4>
                            </center>
                                                <?php
                                            }
                                            ?>
                                        <div class="col-md-6">
                                            
                                            
                                                        
                                            <form method="post" enctype="multipart/form-data">
                                            <table class="table table-bordered table-condensed table-hover table-responsive table-striped">
                                                <tr>
                                                    <td colspan="2"><center><b>Select Your Location</b></center></td>
                                                </tr>
                                                
                                                <tr>
                                                    <td>Latitude</td>
                                                    <td><input type="text" name="la" id="la" class="form-control" required="required" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Longitude</td>
                                                    <td><input type="text" name="lo" id="lo" class="form-control" required="required" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Service Type</td>
                                                    <td>
                                                        <select name="t1"class="form-control">
                                                            <option value="0">--Select Repair Type--</option>
                                                            <option value="On Site">On site Repair</option>
                                                            <option value="Door step Repair">Door Step Repair</option>
                                                            
                                                        </select>
                                                    </td>
                                                </tr>
                                                
                                                <tr>
                                                    <td colspan="2"><center><input id="btn" type="submit" name="sub" value="Send Now" class="btn btn-success" /></center></td>
                                                </tr>
                                            </table>
                                            </form>
                                        </div>
                                        <form method="post">
                                            <div class="col-md-6">
                                                
                                                <div id="dvMap" style="width: 100%; height: 500px"></div>
                                            </div>
                                        </form>
                                    </div>
                                
                                </div>	
			</div>
                        </div>
	<!-- //typography -->

		<?php

include 'footer.php';
ob_start();

?>