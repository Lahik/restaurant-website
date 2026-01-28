<?php 
    if($fetch_reservation['status'] == 'pending') {
        $paid = 'yellow';
        $status = 'pending';
    } else if($fetch_reservation['status'] == 'approved') {
        $paid = 'green';
        $status = 'approved';
    } else if($fetch_reservation['status'] == 'rejected') {
        $paid = 'red';
        $status = 'rejected';
    }
?>
