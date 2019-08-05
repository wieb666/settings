
pathmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}

envmunge () {
  case ":${(P)1}:" in
      *:"$2":*)
          ;;
      *)
          if [ "$3" = "after" ] ; then
            eval $1=${(P)1}${(P)1+:}$2
          else
            eval $1=$2${(P)1+:}${(P)1}
          fi
  esac
}

fp () {
    local paz=$(find ~/.password-store/ -name "*.gpg"  | \
            sed -r 's,(.*)\.password-store/(.*)\.gpg,\2,'   | \
            fzf +m)
    [[ ! -z "$paz" ]] && echo $paz && EDITOR=vim pass $* $paz
}

