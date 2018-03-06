require "rake"

task :default => :install

desc "install the dot files into user's home directory"
task :install_basic do
  require_relative 'lib/rc_files'
  RCFiles.new.install!
end

desc 'install vim_plug for vim'
task :install_vim_plug do
  if File.exist?(File.join(ENV["HOME"], "/.local/share/nvim/site/autoload/plug.vim"))
    puts "vim plug seems already installed"
  else
    puts "start installing vim plug"
    `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
  end
  system 'nvim +PlugInstall +qa'
end

task :install => [:install_basic]
