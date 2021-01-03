#!/bin/bash

# TIKI price
while IFS= read -r line; do
    # Get product id
    a=`echo $line | grep -o "\-p\(\d\+\).html" | grep -o "\d\+"`
    b=`echo $line | grep -o "\.*spid\=\(\d\+\)" | grep -o "\d\+"`
    # echo $a;

    if [[ -n "$a" ]]; then
        if [[ -n "$b" ]]; then
            # Get price from spid
            curl "https://tiki.vn/api/v2/products/$b/info?platform=web" | jq -r '.price' > output/$b.txt;
            echo Link sản phẩm: $line >> output/$b.txt;
        else
            # Get price from id
            curl "https://tiki.vn/api/v2/products/$a/info?platform=web" | jq -r '.price' > output/$a.txt;
            echo Link sản phẩm: $line >> output/$a.txt;
        fi
    fi

done < links.txt
