
load_virtualenvwrapper () {
    if [ ! -z "$VIRTUAL_ENV" ]
    then
        venvw="$VIRTUAL_ENV/bin/virtualenvwrapper.sh"
        export PYTHONPATH="$VIRTUAL_ENV/lib/python2.4/site-packages"
    else
        venvw=$(which virtualenvwrapper.sh)
    fi
    echo "Loading $venvw"
    source $venvw
}
