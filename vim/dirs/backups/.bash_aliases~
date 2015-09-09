dev(){
    dir=$1
    Penv=$2 

    if [[ "$1" == "Thrice" ]]; then
        dir='Django/Thrice';
        Penv='ThriceDjango';
    fi

    if [[ "$1" == "Canoty" ]]; then
        dir='Django/Canoty';
        Penv='CanotyDjango';
    fi

    if [[ "$1" == "Munawar" ]]; then
        dir='Django/Munawar';
        Penv='MunawarDjango';
    fi


    PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
    PS1='\[\033[0;33m\]<\[\033[00m\]\[\033[0;32m\]\u\[\033[0;33m\]>\[\033[00m\]\[\033[0;36m\]${PS1X}\[\033[0;33m\]$>\[\033[00m\] '


    cd ~/$dir
    workon $Penv
    
    alias r='python manage.py runserver'
    alias migrate='python manage.py migrate'
    alias m='python manage.py'
    alias rmpyc='find . -iname "*.pyc" | xargs rm'
}



