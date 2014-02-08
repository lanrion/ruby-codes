require "active_support"

class Record
  include ActiveSupport::Callbacks
  define_callbacks :save_cb

  def save
    run_callbacks :save_cb
  end
end

class PersonRecord < Record
  set_callback :save_cb, :before, :saving_message
  def saving_message
    puts "saving..."
  end

  set_callback :save_cb, :after do |object|
    puts "saved"
  end
end

person = PersonRecord.new
person.save