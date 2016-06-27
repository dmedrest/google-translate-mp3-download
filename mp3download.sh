#!/bin/bash  
while IFS='' read -r line || [[ -n "$line" ]]; do
    words=$(echo $line | tr "," "\n")
    echo "$words"
    for word in $words
    do
        echo "> [$word]"
        url="http://translate.google.com/translate_tts?ie=UTF-8&total=1&idx=0&textlen=${#word}&client=tw-ob&q=$word&tl=ja"
	echo $url
    	wget -q -U Mozilla -O $word.mp3 $url    
    done
done < "$1"
