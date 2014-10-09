# p ARGV

# p ARGF.filename

# ARGF.lines do |line|
#   puts ARGF.filename if ARGF.lineno == 1
#   puts "#{ARGF.lineno}: #{line}"
# end

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: example.rb [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end.parse!

p options
p ARGV