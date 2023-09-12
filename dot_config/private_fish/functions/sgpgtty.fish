function sgpgtty -d "set GPG_TTY to current tty"
  _launchgagent
  set -Ux GPG_TTY "$(tty)"
  gpg-connect-agent updatestartuptty /bye >/dev/null
end
