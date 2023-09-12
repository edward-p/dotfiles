if not contains $PATH $USER
  export (/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)
end

if status is-interactive
  # Commands to run in interactive sessions can go here
  zoxide init fish | source
  #Forwarded SSH_AGENT
  if SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/R.ssh-agent.socket" ssh-add -L &>/dev/null
    export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/R.ssh-agent.socket
  end
end
