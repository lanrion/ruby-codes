# Block(代码块)
#
# ==== 注意
# 1、yield 关键字返回值是block的返回值
# 2、block没有指明函数的参数
def contrived_example(n)
  yield n
end
puts contrived_example(2){|x|x+3}

# Procs(过程)
#
# Proc对象是一个绑定了很多本地参数blocks的代码块，一旦绑定后，
# 这些代码你就能在不同的上下文调用，使用这些参数。
#
def proc_maker
  locat_var = " is great!"
  return Proc.new{|s| puts s + locat_var}
end

proc_maker.call "Ruby"

# Lambda 表达式

def lambda_maker
  local_var = " is great!"
  return lambda { |s| puts s + local_var }
end

p = lambda_maker
p.call "Ruby"

# Lambdas检查传递给它的参数，Procs不检查。
# Proc的return直接在当前方法中返回值，Lambdas返回当前上下方

def return_proc
  p = Proc.new { return "Now you see me" }
  p.call
  return "Now you don't"
end

puts return_proc
# => Now you see me

def return_lambda
  l = lambda { return "Now you seed me " }
  l.call
  return "Now you don't"
end

puts return_lambda
