#!/bin/bash

# TIKI price
while IFS= read -r line; do
    # Get product id
    a=`echo $line | grep -o "\-p\(\d\+\).html" | grep -o "\d\+"`
    # echo $a;

    # Get current price
    curl "https://tiki.vn/api/v2/products/$a/info?platform=web" | jq -r '.price' > output/$a.txt;
    echo Link sản phẩm: $line >> output/$a.txt;
done < links.txt
