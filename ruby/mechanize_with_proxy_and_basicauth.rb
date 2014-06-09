require 'rubygems'
require 'mechanize'
 
agent = Mechanize.new
# agent.set_proxy('proxy.example.com', 80, 'username', 'password')
agent.add_auth('http://www.thecambridgeinstitute.org/cn/psar.php','','')
agent.user_agent_alias = "Windows Mozilla"
 
res = agent.get('http://www.thecambridgeinstitute.org/cn/psar.php')
puts res.body
 
