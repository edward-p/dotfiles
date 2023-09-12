function rb2win -d 'Reboot to windows (systemd-boot)'
  sudo bootctl --path=/boot set-oneshot auto-windows && reboot
end
