function peco_change_directory
    begin
        echo $HOME/.config
        ghq list -p
        ls -ad */ | perl -pe "s#^#$PWD/#" | grep -v \.git
        ls -ad $HOME/ubitec-workspace/*/* | grep -v \.git
    end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
