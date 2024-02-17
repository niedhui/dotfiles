if command -sq asdf
  setenv ASDF_RUBY_BUILD_VERSION master
  source (brew --prefix asdf)/libexec/asdf.fish
end

abbr -a brewup 'brew update; and brew upgrade; and brew cleanup'

setenv ANDROID_HOME $HOME/Library/Android/sdk
setenv NDK_HOME $ANDROID_HOME/ndk-bundle

prepend_path $HOME/Applications/flutter/bin
prepend_path /usr/local/opt/go/libexec/bin
prepend_path /usr/local/sbin

