#!/bin/bash
echo -e "\a"	#alert (bell) bip
echo -e "\abip" #bip sound + bip on screen
echo -e "\f"	#new clear page, Ctrl + L
echo -e "\n"	#new line
echo -e "\t"	#tab
echo -e \\	#\
echo -e \'	#'
echo -e \"	#"

echo -e "this \033[0;30mBLACK \033[0;37mtext"
echo -e "this \033[1;30mGRAY \033[0;37mtext"
echo -e "this \033[0;31mHard_RED \033[0;37mtext"
echo -e "this \033[1;31mRED \033[0;37mtext"
echo -e "this \033[1;32mGREEN \033[0;37mtext"
echo -e "this \033[1;33mYELLOW \033[0;37mtext"
echo -e "this \033[1;34mBLUE \033[0;37mtext"
echo -e "this \033[1;35mPURPLE \033[0;37mtext"
echo -e "this \033[1;36mCYAN \033[0;37mtext"
echo -e "this \033[1;37mWHITE \033[0;37mtext"

echo -e "this \033[0;40mBlack_BG\033[0;37m text"
echo -e "this \033[0;41mRed_BG\033[0;37m text"
echo -e "this \033[0;42mGreen_BG\033[0;37m text"
echo -e "this \033[0;43mYellow_BG\033[0;37m text"
echo -e "this \033[0;44mBlue_BG\033[0;37m text"
echo -e "this \033[0;45mPurple_BG\033[0;37m text"
echo -e "this \033[0;46mCyan_BG\033[0;37m text"
echo -e "this \033[0;47mWhite_BG\033[0;37m text"


echo -e "this \033[1;41m\033[1;32mRED_BG,Yellow_FG\033[0;37m text"

#end

