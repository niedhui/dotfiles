abbr -a brewup 'brew update; and brew upgrade; and brew cleanup'

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

setenv ANDROID_HOME $HOME/Library/Android/sdk
setenv NDK_HOME $ANDROID_HOME/ndk-bundle

prepend_path $HOME/Applications/flutter/bin
prepend_path /usr/local/opt/go/libexec/bin

# https://github.com/fish-shell/fish-shell/pull/5767 remove this when fish 3.0.3 released
prepend_path $HOME/.asdf/shims /usr/local/opt/asdf/bin

if command -sq asdf
  source (brew --prefix asdf)/asdf.fish
end


