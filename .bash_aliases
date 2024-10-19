alias gcm="git commit -m"
alias gs="git status"
alias glog="git log --oneline"
alias adbd="adb devices"
alias adbl="adb logcat"
alias adblc="clear && adb logcat -c && adb logcat"
alias adbi="adb install -r"
alias adbu="adb uninstall"
export ANDROID_SDK_ROOT="/home/jason/Android/Sdk"

export PATH=$PATH:/usr/local/go/bin:/home/jason/Android/Sdk/platform-tools
#EMSDK_QUIET=1 source /home/jason/winterpixel/emsdk/emsdk_env.sh

function gcmm() {
	git add . && git commit -m "$1" && git push
}

