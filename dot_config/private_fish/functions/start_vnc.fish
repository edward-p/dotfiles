
function start_vnc -d "start x0vncserver"
#setfacl -m root:r-x $XDG_RUNTIME_DIR{,/gnupg}
#setfacl -m root:rw- "$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"

set DM_XAUTH "$(find /var/run/sddm/ -type f)"
set DM_HOME "/var/lib/sddm"
#if sudo test -f "$DM_XAUTH"; then
  sudo -u sddm XAUTHORITY=$DM_XAUTH x0vncserver -rfbauth=$DM_HOME/.vnc/passwd -AlwaysShared -rfbport=5900 -display=:0 # 未登陆前
#else
#  x0vncserver -rfbauth=$HOME/.vnc/passwd -AlwaysShared -rfbport=5900 -display=:1 # 登陆后
#fi
end
