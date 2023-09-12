function slock -d 'Start Screen Lock and turn off Screen'
  qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock
  xset dpms force standby
end
