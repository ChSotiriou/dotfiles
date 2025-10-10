function mvd() {
    local fileName
    # check that the user is not in the Downloads directory already
    if [[ $(pwd) == "$HOME"/Downloads ]]; then
        echo "Already in Downloads directory"
        return 1
    else
        fileName=$(\ls -t $HOME/Downloads | head -n 1)
        # check that the command was completed successfully and has an output
        if [[ $? == 0 && -n $fileName ]]; then
            # Check if file doesn't end with .crdownload ignore casing
            if [[ ${(L)fileName} != *.crdownload ]]; then
                mv $HOME/Downloads/"$fileName" .
            else
                echo $fileName has not finished downloading
            fi
        else
            echo "No files in Downloads"
            return 1
        fi
    fi
}
