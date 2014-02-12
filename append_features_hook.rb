module AppendFeaturesHook

  def self.append_features(base)
  	puts "append_features"
  	@features = ["index", "add"]
  end

  def self.included(base)
  	puts "current subclass is: #{base}"
  end
end

class TestAppendFeaturesHook
	include AppendFeaturesHook
end
