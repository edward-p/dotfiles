function read2b64 -d 'read password from input and output base64'
  read -s password
  echo -n "$password" | base64 | tr -d "\n"
end
