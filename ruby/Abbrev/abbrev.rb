require 'abbrev'
require 'pp'

pp Abbrev.abbrev(['ruby', 'rules'])

# =>
# { "rub"   =>  "ruby",
#   "ruby"  =>  "ruby",
#   "rul"   =>  "rules",
#   "rule"  =>  "rules",
#   "rules" =>  "rules" }