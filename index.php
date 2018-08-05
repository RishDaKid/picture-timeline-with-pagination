<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Pagination</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div class="w3-bar w3-light-grey">
    <div class="w3-dropdown-hover">
      <button class="w3-button">Dropdown</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="#" class="w3-bar-item w3-button">Timeline</a>
        <a href="upload.php" class="w3-bar-item w3-button">Upload</a>
      </div>
    </div>
  </div>
</div>
<div class="container">

<?php
// connect to database
$con = mysqli_connect('localhost','root','');
mysqli_select_db($con, 'pagination');
// define how many results you want per page
$results_per_page = 5;
// find out the number of results stored in database
$sql='SELECT * FROM images';
$result = mysqli_query($con, $sql);
$number_of_results = mysqli_num_rows($result);
// determine number of total pages available
$number_of_pages = ceil($number_of_results/$results_per_page);
// determine which page number visitor is currently on
if (!isset($_GET['page'])) {
  $page = 1;
} else {
  $page = $_GET['page'];
}
// determine the sql LIMIT starting number for the results on the displaying page
$this_page_first_result = ($page-1)*$results_per_page;
// retrieve selected results from database and display them on page
$sql='SELECT * FROM images order by id desc LIMIT ' . $this_page_first_result . ',' .  $results_per_page;
$result = mysqli_query($con, $sql);
while($row = mysqli_fetch_array($result)) {
 echo "<img src='images/".$row['image']."' ><br><br>";
}

// display the links to the pages
for ($page=1;$page<=$number_of_pages;$page++) {
  echo '<a href="index.php?page=' . $page . '">' . $page . '</a> ';

}
?>
</div>
</body>
</html>