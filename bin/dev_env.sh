# This file must be used with "source ./scripts/dev_env.sh" *from
# bash*. You cannot run it directly.
# Set some environment variables that are needed for development.
# ATTENTION: this script does not handle the python packages that go into

PROJECT_ROOT=`pwd`

if [ -e /usr/bin/ctags ]; then
    echo "creating ctags"
    2>/dev/null 1>&2 /usr/bin/ctags -R
    2>/dev/null 1>&2 /usr/bin/ctags -a -f tags -R $VIRTUAL_ENV
fi
if [ -e /usr/local/bin/pycscope ]; then
    echo "creating cscope db"
    pycscope -R .
else
    echo "you need cscope and pycscope installed in order to use cscope with this project"
fi

export PATH="$PATH:$PROJECT_ROOT/scripts"

echo "develop" > $PROJECT_ROOT/abl/web/css_hash
