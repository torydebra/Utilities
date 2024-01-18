## Date (colored) for bash `history`

https://gist.github.com/michaelklapper/8189991

Put in bashrc:
~~~sh
MY_BASH_BLUE="\033[0;34m" #Blue
MY_BASH_NOCOLOR="\033[0m"
HISTTIMEFORMAT=`echo -e ${MY_BASH_BLUE}[%F %T] $MY_BASH_NOCOLOR `
HISTSIZE=20000
HISTFILESIZE=20000
~~~
