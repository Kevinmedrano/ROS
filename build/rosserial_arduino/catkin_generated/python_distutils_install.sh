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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kevin/catkin_ws/src/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kevin/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kevin/catkin_ws/install/lib/python2.7/dist-packages:/home/kevin/catkin_ws/build/rosserial_arduino/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kevin/catkin_ws/build/rosserial_arduino" \
    "/usr/bin/python2" \
    "/home/kevin/catkin_ws/src/rosserial_arduino/setup.py" \
     \
    build --build-base "/home/kevin/catkin_ws/build/rosserial_arduino" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/kevin/catkin_ws/install" --install-scripts="/home/kevin/catkin_ws/install/bin"
