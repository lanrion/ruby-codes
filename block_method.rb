class Block
  def self.use_block(&block)
    yield block
  end

  def method_missing(method_id, *arguments, &block)
    puts "no method"
    super
  end
end

# Block.use_block do
#   puts Time.now
# end

# pro = Proc.new {puts "proc test"}

# puts pro

# Block.use_block(pro)

Block.new.find(1)