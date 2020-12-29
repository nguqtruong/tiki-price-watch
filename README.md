# Theo dõi giá sản phẩm TIKI

Theo dõi biến động giá sản phẩm TIKI sử dụng [Github Actions](https://github.com/features/actions). Mỗi giờ, sẽ có 1 cron job được trigger và kiểm tra giá tại thời điểm đó. Nếu giá cả thay đổi, Github Actions sẽ tạo ra 1 commit và gửi thông báo đến cho bạn.

## Cách sử dụng
1. Fork this project to your own repo.
1. Copy link sản phẩm và dán vào file [links.txt](https://github.com/nqtrg/tiki-price-watch/blob/master/links.txt). Mỗi sản phẩm một dòng.
    ![link sản phẩm](screenshot/link_screenshot.png)
1. Kiểm tra lại script scrape có chạy được với danh sách links không:
    ```bash
    make test
    ```
2. Commit and push
3. Đăng ký nhận thông báo của repo: Settings -> Notifications -> Thêm email nhận thông báo khi có commit mới.

Mỗi khi giá cả thay đổi, Github Action sẽ tạo ra 1 commit mới. Vì bạn đã chọn Watch the repo nên bạn sẽ nhận được thông báo.

## Credit
I was inspired by this [work](https://github.com/simonw/ca-fires-history).
