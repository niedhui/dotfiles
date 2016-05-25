class RCFiles
  attr_reader :rc_dir
  def initialize
    @rc_dir = File.expand_path('../rcfiles', __dir__)
    @replace_all = false
  end

  def install!
    Dir.chdir(rc_dir) do
      Dir['*'].each do |file|
        rcfile = File.join(ENV['HOME'], ".#{file}")
        if File.exist? rcfile
          case
          when File.identical?(file, rcfile)
            puts "identical ~/.#{file}"
          when replace_all?
            replace_file(file)
          else
            overwrite(file)
          end
        else
          link_file(file)
        end
      end
    end
  end

  def overwrite(file)
    print "overwrite ~/.#{file}? [ynaq]"
    case $stdin.gets.chomp
    when 'a'
      @replace_all = true
      replace_file(file)
    when 'y'
      replace_file(file)
    when 'q'
      exit
    else
      puts "skipping ~/.#{file}"
    end
  end

  def replace_file(file)
    system %Q{rm -rf "$HOME/.#{file}"}
    link_file(file)
  end

  def link_file(file)
    puts "linking ~/.#{file}"
    system %Q{ln -s "#{File.join(rc_dir, file)}" "$HOME/.#{file}"}
  end

  def target_rcfile(file)
    File.join(ENV['HOME'], ".#{file}")
  end

  def replace_all?
    @replace_all
  end

end
