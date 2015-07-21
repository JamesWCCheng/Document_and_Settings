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
alias g2h=git2hg
alias pushtry='hg push -f -rtip try'
alias tryb2g='hg qnew try -m  "try: -b do -p emulator,emulator-jb,emulator-kk,emulator-l,linux32_gecko,linux64_gecko,macosx64_gecko,win32_gecko -u all -t none"'
alias tryall='hg qnew try -m "try: -b do -p all -u all -t none"'
alias hgpurge=hgQueuePurge
