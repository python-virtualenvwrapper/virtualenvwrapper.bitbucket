#!/bin/sh

#set -x

test_dir=$(dirname $0)

export WORKON_HOME="${TMPDIR:-/tmp}/WORKON_HOME"
export PROJECT_HOME="${TMPDIR:-/tmp}/PROJECT_HOME"

oneTimeSetUp() {
    rm -rf "$WORKON_HOME"
    mkdir -p "$WORKON_HOME"
    rm -rf "$PROJECT_HOME"
    mkdir -p "$PROJECT_HOME"
    source ~/Devel/virtualenvwrapper/src/virtualenvwrapper.sh
}

oneTimeTearDown() {
    rm -rf "$WORKON_HOME"
    rm -rf "$PROJECT_HOME"
}

setUp () {
    echo
    rm -f "$test_dir/catch_output"
}

test_mkproject_self () {
    mkproject -t bitbucket virtualenvwrapper.bitbucket
    assertSame "virtualenvwrapper.bitbucket" "$(basename "$VIRTUAL_ENV")"
    assertSame "virtualenvwrapper.bitbucket" "$(basename $(pwd))"
    assertTrue "[ -d virtualenvwrapper.bitbucket/.hg ]"
    assertSame "default = ssh://hg@bitbucket.org/dhellmann/virtualenvwrapper.bitbucket" "$(grep default virtualenvwrapper.bitbucket/.hg/hgrc)"
}

test_get_user_private_var () {
    export VIRTUALENVWRAPPER_BITBUCKET_USER=myuser
    url=$("$VIRTUALENVWRAPPER_PYTHON" -c 'from virtualenvwrapper.bitbucket import get_url; print get_url("project")')
    assertSame 'ssh://hg@bitbucket.org/myuser/project' "$url"
    unset VIRTUALENVWRAPPER_BITBUCKET_USER
}

test_get_user_var () {
    unset VIRTUALENVWRAPPER_BITBUCKET_USER
    url="$("$VIRTUALENVWRAPPER_PYTHON" -c 'from virtualenvwrapper.bitbucket import get_url; print get_url("project")')"
    assertSame "ssh://hg@bitbucket.org/$USER/project" "$url"
}

. "$test_dir/shunit2"
