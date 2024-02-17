fish_add_path /opt/homebrew/bin

if command -sq asdf
  setenv ASDF_RUBY_BUILD_VERSION master
  source (brew --prefix asdf)/libexec/asdf.fish
end

abbr -a brewup 'brew update; and brew upgrade; and brew cleanup'
