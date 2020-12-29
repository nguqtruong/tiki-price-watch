# Theo dõi giá sản phẩm TIKI

## Cách sử dụng
1. Copy link sản phẩm và dán vào file `links.txt`. Mỗi sản phẩm một dòng.
1. Kiểm tra lại script scrape có chạy được với danh sách links không: `make test`
2. Commit and push
3. Đăng ký nhận thông báo của repo: Chọn `All Activity`

Mỗi khi giá cả thay đổi, Github Action sẽ tạo ra 1 commit mới. Vì bạn đã chọn Watch the repo nên bạn sẽ nhận được thông báo.

## Credit
I was inspired by this [work](https://github.com/simonw/ca-fires-history).
