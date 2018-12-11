#!zsh

locateme() {
    locate $* | grep "^$HOME"
}

trash() {
    mv $* ~/.trash
}

psgrep() {
  ps axu | grep -v grep | grep $* -i --color=auto; 
}

fname() { find . -iname "*$@*"; }

vp() {
  local paz=$(ez-vault secret list_all | fzf); [[ ! -z "$paz" ]] && echo "ez-vault secret read $paz" && ez-vault secret read "$paz"
}

fp () {
    local paz=$(find ~/.password-store/ -name "*.gpg"  | \
            sed -r 's,(.*)\.password-store/(.*)\.gpg,\2,'   | \
            fzf +m)
    [[ ! -z "$paz" ]] && echo $paz && EDITOR=vim pass $* $paz
}

