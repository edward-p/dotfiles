function xpimg -d "paste image/png from clipboard to stdout"
  xclip -selection clipboard -t image/png -o
end
