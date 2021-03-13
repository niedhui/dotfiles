abbr -a brewup 'brew update; and brew upgrade; and brew cleanup'

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

setenv ANDROID_HOME $HOME/Library/Android/sdk
setenv NDK_HOME $ANDROID_HOME/ndk-bundle

prepend_path $HOME/Applications/flutter/bin
prepend_path /usr/local/opt/go/libexec/bin
prepend_path /usr/local/sbin

abbr -a fixkara 'sudo killall karabiner_grabber; and sudo killall karabiner_observer'
