require 'monitor'

class SynchronizedArray

  include MonitorMixin
  attr_accessor :data

  def initialize(*args)
    super(*args)
    @data = []
  end

  def shift(n=1)
    self.synchronize do
      @data << n
    end
  end

  def first
    @data[0]
  end

end

array = SynchronizedArray.new
array.shift(2)
p array.first
