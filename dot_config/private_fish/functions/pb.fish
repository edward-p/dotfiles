function pb -d 'Paste to my pb' 
  set BASE_URL "https://pb.edward-p.xyz"

  switch $argv[1]
    case -u --url
      set DATA "u=@-;type=*/*"
    case *
      set DATA "c=@-;type=*/*"
  end

  curl $BASE_URL -F $DATA

end
