function scpn --wraps=scp --description 'scp without saving server credentials'
  scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $argv
end
