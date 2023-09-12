function _launchgagent -d "Launch gpg-agent"
  if [ -z "$(pidof gpg-agent)" ]
	  gpgconf --launch gpg-agent >/dev/null
  end
end
