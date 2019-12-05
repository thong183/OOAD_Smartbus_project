
    <main>
<!--header start here-->
    <div class="header">
        <div class="header-main">
            <h1>Đặt xe buýt</h1>
            <div class="header-bottom">
                <div class="header-right w3agile">
                    
                    <div class="header-left-bottom agileinfo">
                        
                        <form action="#" method="post">
                            <input id ="bus-stop" type="text"  value="Tên trạm đang đứng" name="bus-stop" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên trạm đang đứng';}"/>
                            <input id="bus-route" type="text"  value="Tên tuyến" name="bus-route" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên tuyến';}"/>
                            <input id="bus" type="text"  value="Xe buýt" name="bus" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên xe';}"/>
                            <input id="bus-stop" type="text"  value="Tên trạm dừng" name="bus" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nhập trạm dừng';}"/>

                            <div id="bus-fee">
                                <span class="text-label">Thành tiền:</span>
                                <div class="amount">
                                    <strong>15.000 đồng</strong>
                                </div>
                            </div></br>
                            <input onClick="location.href='index.php?controller=default&action=HoaDon';return false" type="submit" value="Đặt xe">
                        </form>	
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>