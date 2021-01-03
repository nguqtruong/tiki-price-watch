#!/bin/bash

# TIKI price
echo hihi
# curl "https://tiki.vn/api/v2/products/4538233/info?platform=web" | jq -r '.price' > output/4538233.txt;
cat links.txt;

while IFS= read -r line; do
    echo $line
    # Get product id
    a=`echo $line | grep -o "\-p\(\d\+\).html" | grep -o "\d\+"`
    b=`echo $line | grep -o "\.*spid\=\(\d\+\)" | grep -o "\d\+"`
    echo $a;
    echo $b;

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
