<?php
if(!isset($_SESSION['admin_id']))
{
	header('location:admin_login.php');
}


include 'header.php';

?>

<div class="container-fluid py-4">
	<h1 class="mb-5">Dashboard</h1>
	<div class="row">
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4" id="example2" style=" animation: myMove 3s 1;">
				<div class="card-body" id="example2" style="background-color: #E5B8F4;">
					<h1 class="text-center" ><?php echo Count_total_issue_book_number($connect); ?></h1>
					<h5 class="text-center">Total Book Issue</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4" id="example2" style="animation: myMove 4.5s 1;">
				<div class="card-body" id="example2" style="background-color: #C147E9;">
					<h1 class="text-center"style="color: white; text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;"><?php echo Count_total_returned_book_number($connect); ?></h1>
					<h5 class="text-center"style="color: white; text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;">Total Book Returned</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4 " id="example2" style=" animation: myMove 3s 1;">
				<div class="card-body" id="example2" style="background-color: #810CA8;">
					<h1 class="text-center"><?php echo Count_total_not_returned_book_number($connect); ?></h1>
					<h5 class="text-center">Total Book Not Return</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4" id="example2" style="animation: myMove 4.5s 1;">
				<div class="card-body" id="example2" style="background-color: #2D033B;">
					<h1 class="text-center"><?php echo get_currency_symbol($connect) . Count_total_fines_received($connect); ?></h1>
					<h5 class="text-center">Total Fines Received</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4 ani1" id="example2" style=" animation: myMove 3s 1;">
				<div class="card-body" id="example2" style="background-color: #2D033B;"> 
					<h1 class="text-center"><?php echo Count_total_book_number($connect); ?></h1>
					<h5 class="text-center">Total Book</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4 ani2" id="example2" style="animation: myMove 4.5s 1;">
				<div class="card-body" id="example2" style="background-color: #810CA8;">
					<h1 class="text-center"><?php echo Count_total_author_number($connect); ?></h1>
					<h5 class="text-center">Total Author</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4 ani3" id="example2" style=" animation: myMove 3s 1;">
				<div class="card-body" id="example2" style="background-color: #C147E9;">
					<h1 class="text-center"style="color: white; text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;"><?php echo Count_total_category_number($connect); ?></h1>
					<h5 class="text-center"style="color: white; text-shadow: 1px 0 0 #000, 0 -1px 0 #000, 0 1px 0 #000, -1px 0 0 #000;">Total Category</h5>
				</div>
			</div>
		</div>
		<div class="col-xl-3 col-md-6">
			<div class="card text-white mb-4 ani4" id="example2" style="animation: myMove 4.5s 1;">
				<div class="card-body" id="example2" style="background-color: #E5B8F4;">
					<h1 class="text-center" ><?php echo Count_total_location_rack_number($connect); ?></h1>
					<h5 class="text-center" >Total Location Rack</h5>
				</div>
			</div>
		</div>
	</div>
</div>