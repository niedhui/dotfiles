require "rake"

task :default => :install

desc "install the dot files into user's home directory"
task :install_basic do
  replace_all = false
  Dir['*'].each do |file|
    if File.exist?(File.join(ENV['HOME'],".#{file}"))
      # why?
      if File.identical? file,File.join(ENV['HOME'],".#{file}")
        puts "identical ~/.#{file}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq]"
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

desc 'install vundle for vim'
task :install_vundle do
  if File.exist?(File.join(ENV["HOME"],"/.vim/bundle/vundle"))
    puts "vundle seems already installed"
  else
    puts "start installing vundle"
    `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
  end
  system 'vim +BundleInstall +qa'
end

task :install => [:install_basic, :install_vundle]

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end


