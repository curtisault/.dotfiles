function copy -d 'copy to clipboard'
  switch (uname)
  case Linux
    xsel --clipboard --input
  case Darwin
    pbcopy
  case '*'
    echo "copy not supported for (uname)"
  end
end
