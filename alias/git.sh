# shellcheck disable=SC1090,SC2148

myzs:module:new "$0"

if _myzs:internal:checker:command-exist "git"; then
  if _myzs:internal:checker:command-exist "hub"; then
    eval "$(hub alias -s)"
  fi

  alias g="git"
  alias gi="git init"
  alias gs="git status"
  alias ga="git add"
  alias gcm="git commit"

  alias gco="git checkout"
  alias gcob="git checkout -b"
  alias gcoeb="git checkout --orphan"

  # for git version 2.23.0
  alias grs="git restore"
  alias grss="git restore --staged"

  # for git version 2.23.0
  alias gsw="git switch"

  alias gm="git merge"
  alias gf="git fetch"

  alias gb="git branch"
  alias gba="git branch -a"
  alias gbd="git branch -D"
  alias gbr="git fetch --all --prune" # remove remote branch, If not exist

  alias gd="git diff"
  alias gdi="git diff -w --ignore-all-space"

  alias gt="git tag"
  alias gtd="git tag -d"

  alias gp="git push"
  alias gP="git pull"

  alias gsp="git stash push"
  alias gsP="git stash pop"

  alias gl="git log --graph"                       # log with graph and format in git config
  alias gl-sign="git log --graph --show-signature" # log with show sign information
  alias gla="git log --graph --all"                # log all branch and commit
  alias glao="git log --graph --all --oneline"     # log with oneline format
  alias glo="git log --graph --oneline"            # log all in oneline format
  alias glss="git log --graph --stat --summary"    # log with stat and summary

  ggc() {
    if ls package.json >/dev/null 2>&1 && grep -q "\"commit\":" <"package.json" >/dev/null 2>&1; then
      yarn commit "$@"
    elif _myzs:internal:checker:command-exist "committ"; then
      committ "$@"
    elif _myzs:internal:checker:command-exist "gitgo"; then
      gitgo commit "$@"
    else
      git commit "$@"
    fi
  }

  alias cm="ggc"
fi
