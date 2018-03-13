#!/bin/bash
# \c는 커서를 현재 라인에 유지하기. newline 노노
echo  -e "단어를 입력해주세요 >> \c "
read word
echo "입력한 단어는 $word 입니다."

echo -e "두 단어를 입력해주세요 >> \c"
read word1 word2
echo "입력한 단어 두개는 \"$word1\" \"$word2\" 입니다."

# 내장변수 REPLY에 저장하자
echo -e "bash script는 어떤것같아요? >> \c"
read
echo "$REPLY 라고 입력하셨네요! 기쁩니다."

echo -e "좋아하는 색은 무엇인가요? \c"
read -a colours
echo "당신이  좋아하는 색은 ${colours[0]}, ${colours[1]} 그리고 ${colours[2]} 이군요. :-) "
echo $#
