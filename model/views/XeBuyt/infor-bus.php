
    <main id="body-content">
    <div class="header-main">
        <h1>Thông tin chuyến xe</h1>
        <div class="header-bottom">
            <div class="header-right w3agile">
                <div class="header-left-bottom agileinfo">
                    <form action="#" method="post">
                        <input id="bus-stop" type="text" value="Tên trạm đang đứng" name="bus-stop" onfocus="this.value = '';"
                            onblur="if (this.value == '') {this.value = 'Tên trạm đang đứng';}" />

                        <input action="#" type="submit" value="Xem tuyến">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <table class="table table-secondary table-striped table-hover">
            <thead class="thead-light">
                <tr>
                    <th>Tên tuyến</th>
                    <th>Mã xe</th>
                    <th>Thời gian đến trạm</th>
                    <th>Số người trên xe</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <th>
                    <select>
                        <option>Chọn tuyến xe</option>
                        <option>Bến Thành - Chợ Lớn</option>
                    </select>  
                </th>
                <th>B01</th>
                <th>15 phút</th>
                <th>13</th>
                <th><input action="#" type="submit" value="Đặt xe"></th>
            </tbody>
        </table>
    </div>
</main>