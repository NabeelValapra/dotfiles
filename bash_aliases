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

    cd ~/$dir
    workon $Penv

    ## ============================================================== #
    ## To load .bash_prompt.
    [ -n "$PS1" ] && source ~/.bash_prompt; 
     
   
    alias r='python manage.py runserver'
    alias migrate='python manage.py migrate'
    alias m='python manage.py'
    alias rmpyc='find . -iname "*.pyc" | xargs rm'
}



