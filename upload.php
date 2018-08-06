<?php
  // Create database connection
  $db = mysqli_connect("localhost", "root", "", "pagination");

  // Initialize message variable
  $msg = "";

  // If upload button is clicked ...
  if (isset($_POST['upload'])) {
  	// Get image name
  	$image = $_FILES['image']['name'];
  	// Get text
$image_text = mysqli_real_escape_string($db, $_POST['image_text']);
$image_description = mysqli_real_escape_string($db, $_POST['image_description']);

  	// image file directory
  	$target = "images/".basename($image);

  	$sql = "INSERT INTO images (image,image_text,image_description) VALUES ('$image', '$image_text','$image_description')";
  	// execute query
  	mysqli_query($db, $sql);

  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}
  }
  $result = mysqli_query($db, "SELECT * FROM images order by id desc limit 2");
?>
<!DOCTYPE html>
<html>
<head>
<title>Image Upload</title>
<style type="text/css">
   #content{
   	width: 50%;
   	margin: 20px auto;
   	border: 1px solid #cbcbcb;
   }
   form{
   	width: 50%;
   	margin: 20px auto;
   }
   form div{
   	margin-top: 5px;
   }
   #img_div{
   	width: 80%;
   	padding: 5px;
   	margin: 15px auto;
   	border: 1px solid #cbcbcb;
   }
   #img_div:after{
   	content: "";
   	display: block;
   	clear: both;
   }
   img{
   	float: left;
   	margin: 5px;
   	width: 300px;
   	height: 140px;
   }
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <div class="w3-bar w3-light-grey">
    <div class="w3-dropdown-hover">
      <button class="w3-button">Dropdown</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="index.php" class="w3-bar-item w3-button">Timeline</a>
        <a href="#" class="w3-bar-item w3-button">Upload</a>
      </div>
    </div>
  </div>
</div>
<div id="content">
  <?php
    while ($row = mysqli_fetch_array($result)) {
      echo "<div id='img_div'>";
      	echo "<img src='images/".$row['image']."' >";
        echo "<p>".$row['image_text']."</p>";
        echo "<p>".$row['image_description']."</p>";
      echo "</div>";
    }
  ?>
  <form method="POST" action="upload.php" enctype="multipart/form-data">
    <input type="hidden" name="size" value="1000000">
    <div>
      <input type="file" name="image">
    </div>
    <div>
      <textarea 
        id="text" 
        cols="40" 
        rows="1" 
        name="image_text" 
        placeholder="Put the title here"></textarea>
    </div>
    <div>
<div>
      <textarea 
        id="text" 
        cols="40" 
        rows="4" 
        name="image_description" 
        placeholder="Say something about this image..."></textarea>
    </div>
    <div>
  		<button type="submit" name="upload">POST</button>
  	</div>
  </form>
</div>
</body>
</html>