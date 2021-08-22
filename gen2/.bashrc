# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

if [ -f /product/boot_gold ]; then
	if [ -d /ro ]; then
		PS1="\[\033[1;33m\](gold-\[\033[1;35m\]ro\[\033[1;33m\]) "$PS1
	else
		PS1="\[\033[1;33m\](gold-\[\033[1;32m\]rw\[\033[1;33m\]) "$PS1
	fi
elif [ -d /ro ]; then
   PS1="\[\033[1;35m\](ro) "$PS1
else
   PS1="\[\033[1;32m\](rw) "$PS1
fi

echo
cat ./linux
echo
# Put your fun stuff here.
alias ll='ls -alF'
alias ddu='du -sh * .??* 2>/dev/null | sort -hr | head -10'
alias howup='echo emerge --ask --verbose --update --deep --newuse @world'
alias to-rw='/root/to-rw.sh'
alias to-ro='/root/to-ro.sh'
alias to-gold-rw='/root/to-gold-rw.sh'
alias to-gold-ro='/root/to-gold-ro.sh'
