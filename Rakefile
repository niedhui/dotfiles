require "rake"

desc "install the dot files into user's home directory"

task :install do
  replace_all = false
  is_zsh = ENV['SHELL'].end_with?('zsh')
  Dir['*'].each do |file|
    next if next_cond(file,is_zsh)
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

def next_cond(file,is_zsh)
  r = %w[Rakefile README.rdoc LICENSE].include? file
  r ||= (is_zsh &&  file.start_with?("bash"))
  r ||= (!is_zsh && file.start_with?("zsh"))
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end


