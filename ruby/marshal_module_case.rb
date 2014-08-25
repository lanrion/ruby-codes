# http://www.kuqin.com/rubycndocument/man/built-in-class/module_marshal.html
# The marshaling library converts collections of Ruby objects into a byte stream, allowing them to be stored outside the currently active script. This data may subsequently be read and the original objects reconstituted.

class User
  def initialize(name, version)
    @name    = name
    @version = version
  end

  def say_hello
    p @name
  end

  # def marshal_dump
  #   [@name, @version]
  # end

  # def marshal_load array
  #   @name, @version = array
  # end
end

o = User.new("hello\n", "version123")
data = Marshal.dump(o)
puts "Marshal dump data: #{data}"
obj = Marshal.load(data)
User.class_eval do
  undef_method :say_hello
end
puts obj.say_hello  #=> "hello\n"
