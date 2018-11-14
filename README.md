# ProjectPRJ321Final 
#Project Name :FlashPost

Tên Thành Viên : Nguyễn Thị Huờng <br />
Mã Sinh Viên :	SE05881<br />
Phần việc : Code các hàm và function để lấy dữ liệu trong cơ sở dữ liệu . <br />
Tên Thành Viên : Nguyễn Bảo Long <br />
Mã Sinh Viên : 	SE05816<br />
Phần việc : Sửa và code front-end cho project,code hàm xử lí đăng nhập  .<br />
Tên Thành Viên : Lê Mạnh Hùng <br />
Mã Sinh Viên : SE05565 <br />
Phần việc : Tạo cơ sở dữ liệu cho project và code font-end <br />


Các file jar đã được add sẵn vào trong project, trong file project có database script  <br />
bước 1: run script sql server <br />
	- run script trong file vnpost.sql<br />
bước 2: run netbean->Open Project->clean and build<br />
	->run project<br />
bước 3: click login->đăng nhập tài khoản để sửa dụng các chức năng<br />
	username: huong<br />
	password:123a<br />
bước 4: create 1 đơn hàng chọn contact->fill in your order information<br />
	->điền thông tin đơn hàng-> click xác nhận-> save, chụp mã Qr đơn hàng <br />
        -cập nhật trạng thái hành trình :<br />
           contact->Status Update->quét mã qr->hiển thị thông tin->click vào trạng thái sau <br />
        -Các service gồm +Calculate Rates :click và điền thông tin ->hiển thị giá tiền cước gửi gói hàng đó<br />
			 +Postal Network : chọn tỉnh-> chọn quận/huyện ->sẽ hiển thị các bưu cục hiện có trong tỉnh đó<br />
 			 +Scan code QR : quét thông tin đơn hàng vs mà QR đã có <br />
