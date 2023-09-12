function arp --wraps=arp-scan -d "wraps arp-scan"
  arp-scan -dx -F '${ip}\t${mac}\t${name}\t${vendor}' $argv
end
