# class MyClass
#   attr_accessor :name, :address

#   def initialize(attrs = {})
#     @name = attrs[:name]
#     @address = attrs[:address]

#     yield self if block_given?
#   end
# end

# a = MyClass.new(name: 'spirit1', address: 'china1')
# p a.name

# b = MyClass.new do |i|
#   i.name = 'spirit2'
#   i.address = 'china2'
# end
# p b.name

def yield_test
	[1,2,3,4,5,6,7].each do |item|
		yield item
		puts "current index is #{item}"
	end
end

yield_test do |i|
	 i = i+1
end