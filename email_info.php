
<?php
include 'header_2.php';
?>

<div class="d-flex align-items-center justify-content-center" style="min-height: 700px;">
    <div class="col-md-6">
        <?php
        if($message!='')
        {
            echo '<div class="alert alert-danger"><ul>' .$message. '</ul></div>';
        }
        ?>
        <div class="card">
            <div class="card-header">Admin Login</div>
            <div class="card-body">
                <form method="POST">
                    <div class="mb-3">
                        <label class="form-label">Email Address</label>
                        <input type="text" name="admin_email" id="admin_emial" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="admin_password" id="admin_password" class="form-control">
                    </div>
                    <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                        <input type="submit" name="login_button" class="btn btn-primary" value="Login">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
include 'footer.php';
?>