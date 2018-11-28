<?php

include 'menu_company.php';
ob_start();

?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDge58kDZRSDquz16IhEFQZMzHjMpFWwlw&callback=myMap"></script>

    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(8.493865786553638, 76.94784119725227),
                zoom: 14,
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
    </script>
		<!--end header-section-->
			<div class="header-banner">
				<div class="container">
					<h2>Add Service Station</h2>
				</div>
			</div>
		<!--end header-section-->
	<div class="content">
		<div class="typography">
			<!-- container-wrap -->
			<div class="container">
				<div class="col-lg-6">
                         
 <?php
                    
                            
                            if(isset($_POST['b1']))
                                
                            {
                                $a=mysql_query("select * from reg where username='$_POST[t9]'");
	if(mysql_num_rows($a)>0)
	{
		echo"username already excits";
	}
	else
	{
                                $b=mysql_query("select max(id) from reg");
$id=mysql_result($b,0);
$id++;
$p=$_FILES['p1']['name'];
$ext=strchr($p,'.');
$pname="$id$ext";
//$_SESSION['sname']=$sname;
if(move_uploaded_file($_FILES['p1']['tmp_name'],getcwd()."\\img1\\$pname"))
{
    $msg=$_POST['t2'];
$msg1=  addslashes($msg);
$msg2=  nl2br($msg1);
                          
     mysql_query("insert into reg(name,brand,state,district,address,landmark,contact,contact_person,contact2,lat,lon,email,username,password,photo,utype,company_id)values('$_POST[t1]','$_POST[brand]','$_POST[stat]','$_POST[dist]','$msg2','$_POST[t3]','$_POST[t4a]','$_POST[t5]','$_POST[t4b]','$_POST[la]','$_POST[lo]','$_POST[t8]','$_POST[t9]','$_POST[t10]','$pname','staff','$_SESSION[username]')");
    
    if(mysql_affected_rows()>0)
{
        $ins3=mysql_query("insert into r_van values('','Not Available','$_POST[t9]')");
   
   if($ins1>0)
        {
echo"Complete";
}
else 
{
echo mysql_error();
}
}
}
                            }
                            }

                            
    ?>                                  

                          

                            
                    
                   <table  class="table  table-responsive  table-striped table-bordered ">
                        <tr>
                            <td>Name</td>
                            <td><input type="text"name="t1"class="form-control"required="required"></td>
                        </tr>
                        <tr>
                            <td>Brand</td>
                            <td><input type="text"name="brand"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                                <td>Choose State</td>
                                <td>
                                    <select name="stat" id="stat" class="form-control" required="required" onchange="loaddistrict(this.value);loadst_hos(this.value)">
                                        <option value="">Choose One</option>
                                        <?php
                                        $sel_state=mysql_query("select * from state");
                                        while($r_state=mysql_fetch_row($sel_state))
                                        {
                                            ?>
                                        <option value="<?php echo $r_state[0] ?>"><?php echo $r_state[1] ?></option>
                                       <?php
                                        }
                                        ?>
                                    </select>
                                </td>
                            </tr>
                                      <script type="text/javascript">
                               function loaddistrict(x)
                               {
                                   var xmlhttp = new XMLHttpRequest();
                                    xmlhttp.onreadystatechange = function() {
                                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

                                            document.getElementById("dis").innerHTML = xmlhttp.responseText;
                                        }
                                    };
                                    xmlhttp.open("GET", "load_districtindex.php?x=" + x, true);
                                    xmlhttp.send();
                               }
                               
                            </script>
                         <tr>
                                <td>Choose District</td>
                                <td>
                                    <span id="dis">
                                        <select name="dist" class="form-control" required="required">
                                        <option value="">Choose One</option>
                                        </select>
                                    </span>
                                </td>
                            </tr>          
                        
                        
                         <tr>
                        <tr>
                            <td>Address</td>
                            <td><textarea name="t2"class="form-control"cols="5"rows="5"required="required"></textarea></td>
                        </tr>
                         <tr>
                            <td>Landmark</td>
                            <td><input type="text"name="t3"class="form-control"required="required"></td>
                        </tr>
                        
                        <tr>
                            <td>Contact no</td>
                            <td><input type="text"name="t4a"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                            <td>Contact Person</td>
                            <td><input type="text"name="t5"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                            <td>Contact no</td>
                            <td><input type="text"name="t4b"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                            <td>Latitude</td>
                            <td><input type="text"name="la" id="la"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                            <td>Longitude</td>
                            <td><input type="text"name="lo" id="lo"class="form-control"required="required"></td>
                        </tr>
                         <tr>
                            <td>Email</td>
                            <td><input type="text"name="t8"class="form-control"required="required"></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text"name="t9"class="form-control"required="required"></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password"name="t10"class="form-control"required="required"></td>
                        </tr>
                        
                        
                        <tr>
                            <td>Photo</td>
                            <td><input type="file"name="p1"required="required"></td>
                        </tr>
                        
                        
                         <tr>
                            
                             <td colspan="2"align="center"><input type="submit"value="Register Company"name="b1"class="btn btn-success"></td>
                        </tr>
                    </table>
    
 
			</div>
                            <div class="col-lg-6">
                                
                                <div id="dvMap" style="width: 500px; height: 500px"></div>
                            </div>
			<!-- //container-wrap -->
	</div>
	<!-- //typography -->

		<?php

include 'footer.php';
ob_start();

?>