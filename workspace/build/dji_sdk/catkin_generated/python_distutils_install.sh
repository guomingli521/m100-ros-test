#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/m100-ros-test/workspace/src/dji_sdk"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/m100-ros-test/workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/m100-ros-test/workspace/install/lib/python2.7/dist-packages:/home/ubuntu/m100-ros-test/workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/m100-ros-test/workspace/build" \
    "/usr/bin/python" \
    "/home/ubuntu/m100-ros-test/workspace/src/dji_sdk/setup.py" \
    build --build-base "/home/ubuntu/m100-ros-test/workspace/build/dji_sdk" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ubuntu/m100-ros-test/workspace/install" --install-scripts="/home/ubuntu/m100-ros-test/workspace/install/bin"
