<h4>THỐNG KÊ TRUY CẬP</h4>
<ul class="thongketc">
	<li><img src="images/t1.png" alt="Thống kê truy cập"><?=_dangonline?>:&nbsp;<span><?php $count=count_online();echo $tong_xem=$count['dangxem'];?></span></li>
	<li><img src="images/t2.png" alt="Thống kê truy cập">Ngày:&nbsp;<span><?=$today_visitors?></span></li>
	<li><img src="images/t3.png" alt="Thống kê truy cập">Tháng:&nbsp;<span><?=$month_visitors?></span></li>
	<li><img src="images/t4.png" alt="Thống kê truy cập">Tổng truy cập:&nbsp;<span><?=$all_visitors?></span></li>
</ul>