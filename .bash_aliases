alias gcm="git commit -m"
alias gs="git status"
alias glog="git log --oneline"

alias adbd="adb devices"
alias adbl="adb logcat"
alias adblc="clear && adb logcat -c && adb logcat"
alias adbi="adb install -r"
alias adbu="adb uninstall"

function gcmm() {
	git add . && git commit -m "$1" && git push
}

