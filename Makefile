test:
	./scrape.sh

scrape:
	curl 'https://tiki.vn/api/v2/products/4538233/info?platform=web' | jq . > tiki.json

get_id:
	echo https://tiki.vn/dien-thoai-iphone-xr-64gb-hang-chinh-hang-p4538233.html | grep -o "\-p\(\d\+\).html" | grep -o "\d\+"
