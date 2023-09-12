if [ -z $ELECTRON_TRASH ]; then
    eval "export" $(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)
fi
