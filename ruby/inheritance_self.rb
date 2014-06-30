class Redis
  class Store < self

  end

end

redis = Redis.new
puts redis

store = Redis::Store.new
puts store
p Redis::Store.ancestors
