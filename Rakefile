require "rake"

task :default => :install

desc "install the dot files into user's home directory"
task :install_basic do
  require_relative 'lib/rc_files'
  RCFiles.new.install!
end

desc 'install vundle for vim'
task :install_vundle do
  if File.exist?(File.join(ENV["HOME"], "/.vim/bundle/vundle"))
    puts "vundle seems already installed"
  else
    puts "start installing vundle"
    `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
  end
  system 'vim +BundleInstall +qa'
end

task :install => [:install_basic]
