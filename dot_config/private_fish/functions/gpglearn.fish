function gpglearn -d "Learn private key from new smartcard"
  _launchgagent
  gpg-connect-agent "scd serialno" "learn --force" /bye
end
