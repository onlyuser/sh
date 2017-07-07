PATH=$PATH:~/projects/sh
PATH=$PATH:~/projects/sh/xargs
[[ -s /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh
export PS1="\u \w> "
git config --global diff.external ~/projects/sh/diff.py
alias makec='make clean'
alias maket='make test'
alias ..='cd ..'
alias ...='cd ../..'

export PERL5LIB=$PERL5LIB:/home/jerry/Downloads/perl/HTTP-Message-6.11/lib
#export PERL5LIB=$PERL5LIB:/home/jerry/Downloads/perl/libwww-perl-6.13/lib
export PERL5LIB=$PERL5LIB:/home/jerry/Downloads/perl/libwww-perl-5.837/lib
export PERL5LIB=$PERL5LIB:/home/jerry/Downloads/perl/HTTP-Date-6.02/lib
export PERL5LIB=$PERL5LIB:/home/jerry/Downloads/perl/URI-1.69/lib

LC_TIME=en_US.UTF-8
