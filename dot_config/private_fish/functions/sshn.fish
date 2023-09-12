function sshn --wraps=ssh --description 'ssh without saving server credentials'
  ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $argv
end
