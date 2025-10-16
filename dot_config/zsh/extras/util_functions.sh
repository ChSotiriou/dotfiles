function mvd() {
    local fileName
    # check that the user is not in the Downloads directory already
    DOWNLOAD_DIR="/tmp/Downloads"
    if [[ $(pwd) == "$DOWNLOAD_DIR" ]]; then
        echo "Already in Downloads directory"
        return 1
    else
        fileName=$(\ls -t "$DOWNLOAD_DIR" | head -n 1)
        # check that the command was completed successfully and has an output
        if [[ $? == 0 && -n $fileName ]]; then
            # Check if file doesn't end with .crdownload ignore casing
            if [[ ${(L)fileName} != *.crdownload ]]; then
                mv "$DOWNLOAD_DIR/$fileName" .
            else
                echo $fileName has not finished downloading
            fi
        else
            echo "No files in Downloads"
            return 1
        fi
    fi
}

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
function ex () {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.bz2)       bunzip2 "$1"   ;;
      *.rar)       unrar x "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.tar)       tar xf "$1"    ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *.Z)         uncompress "$1";;
      *.7z)        7z x "$1"      ;;
      *.deb)       ar x "$1"      ;;
      *.tar.xz)    tar xf "$1"    ;;
      *.tar.zst)   tar xf "$1"    ;;
      *.rpm)       rpm2cpio "$1" | unzstd | cpio -idmv ;;
      *)           7z x "$1" ;;
      # *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
