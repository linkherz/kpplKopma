<?php
$assets_location = base_url()."aset/dashboard/";
?>

<div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Customer</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>Nama User</th>
                                                <th>Email</th>
                                                <th>Nomer HP</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										 <?php foreach ($tt_user as $user) { ?>
                                            <tr>
                                                <td><?php echo $user['nama']; ?></td>
                                                <td><?php echo $user['email']; ?></td>
                                                <td><?php echo $user['no_hp']; ?></td>
												
                                            </tr>
                                        </tbody>
										 <?php } ?>
                                    </table>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>