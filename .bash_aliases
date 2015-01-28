 genPatch(){
  ~/Projects/moz-git-tools/git-patch-to-hg-patch $1
  echo $1
  mv $1 ~/Projects/hg_patch/
}

alias patch_g2h=genPatch
alias b2go='export MOZCONFIG=`pwd`/.mozconfig-b2g-opt'
alias b2gd='export MOZCONFIG=`pwd`/.mozconfig-b2g-dbg'
alias ffd='export MOZCONFIG=`pwd`/.mozconfig-ff-dbg'
alias ffo='export MOZCONFIG=`pwd`/.mozconfig-ff-dbg'