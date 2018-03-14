#!/bin/bash
# ref: https://www.thegeekstuff.com/2008/09/bash-shell-take-control-of-ps1-ps2-ps3-ps4-and-prompt_command/

# PS1은 interation prompt  
# PS2는 CLI에서 명령어 치면 다음줄에 나오는 '>' 을 변경
# PS3는 shell script 내부에 select 명령어를 쓸떄 나오는 메시지

PS3='Choose one word >> '

# bash select
select word in "linux" "bash" "scripting" "tutorial"
do
	echo "선택한 단어는 : $word"
	# break 하지않으면 무한루프돈다.
break
done

exit 0
