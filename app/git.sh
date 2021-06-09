# shellcheck disable=SC1090,SC2148

myzs:module:new "$0"

export GIT_PERSONAL_SIGNKEY="E9BD16F7EC800F7AFAA3C65E705CB6B32BBCBABA"
_myzs:internal:alias "myzs-git-personal" "_myzs:internal:git:switch 'global' 'developer@kamontat.net' '$GIT_PERSONAL_SIGNKEY' 'kamontat'"
_myzs:internal:alias "mgitp" "myzs-git-personal"
