<body>
<!--header start here-->
    <div class="header">
        <div class="header-main">
            <h1>Đặt xe buýt</h1>
            <div class="header-bottom">
                <div class="header-right w3agile">
                    
                    <div class="header-left-bottom agileinfo">
                        
                        <form action="#" method="post">
                            <input id="checkin" type="text"  value="Nhập mã check-in" name="checkin" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nhập mã check-in';}"/>

                            <input id="submit-gen" onClick="" type="submit" value="Check-in">
                        </form>	</br></br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form action="#" method="post">
        <div class="content-w3ls">
            <div class="content-agile1">
                <h2 class="agileits1">Đơn hàng</h2>
                <p class="agileits2">Thông minh hơn, hiện đại hơn</p>
            </div>
            <div class="content-agile2">
                <form action="#" method="post">
                    <input id="bus-stop" type="text" value="Tên trạm đang đứng" name="bus-stop" readonly />
                    <input id="bus-route" type="text" value="Tên tuyến" name="bus-stop" readonly />
                    <input id="bus" type="text" value="Xe buýt" name="bus-stop" readonly />
                    <input id="bus-stop" type="text"  value="Tên trạm dừng" name="bus" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nhập trạm dừng';}"/>
                </form>
                <div id="bus-fee-bill">
                    <span class="text-label-bill">Thành tiền:</span>
                    <div class="amount-bill">
                        <strong>15.000 đồng</strong>
                    </div></br></br></br>
                    <input id="checkout" type="text"  value="Mã check-out" name="checkout" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nhập mã check-out';}"/>
                    <input onClick="location.href='index.php?controller=default&action=HoaDon';return false" type="submit" value="Thanh toán">
                </div></br>
            </div>
            <div class="clear"></div>
            
        </div>
    </form>	
</body>