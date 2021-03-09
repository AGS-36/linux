#
# ~/.bashrc
#
LC_ALL=en_US.utf8
PATH=$PATH:/home/rod/bin/
export LC_ALL PATH


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias dir='dir --color=auto'
#xclip
alias c='xclip -selection clipboard'
alias co='xclip -sel clip -o'
alias pwdc='pwd | xclip -selection clipboard'
#calculates md5sum and copies from 5 to 20 characters
alias cpass='md5sum | cut -c 5-20 | xclip -selection clipboard'
alias upgrade='sudo pacman -Syu'
alias pacinst='sudo pacman -S'
#python3
alias p3='python3'
alias p3i='python3 -i'
#save to files
alias it='~/.my_documents/it_words.txt'
alias lcm='vim ~/Linux/.commands'

#configs
alias bashrc='vim ~/.bashrc'
alias i3conf='vim ~/.config/i3/config'
#PS1='[\u@\h \W]\$ '
PS1='\e[1;38;5;48m\]► \e[0;31;5;59m\W  \e[m'

#copy passwd function
function cpassword() {
echo $1 | md5sum
}
