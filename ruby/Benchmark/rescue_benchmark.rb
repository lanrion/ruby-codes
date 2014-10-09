require 'benchmark'

class << Benchmark
  # Benchmark realtime in milliseconds.
  #
  #   Benchmark.realtime { User.all }
  #   # => 8.0e-05
  #
  #   Benchmark.ms { User.all }
  #   # => 0.074
  def ms
    1000 * realtime { yield }
  end
end

count = 100000

rescue_time = Benchmark.ms{
  count.times.each {
    begin
      puts Time.now
    rescue Exception => e

    end
  }
}

no_rescue_time = Benchmark.ms{
  count.times.each {
    puts Time.now
  }
}

puts "rescue_time #{rescue_time}"
puts "no_rescue_time #{no_rescue_time}"