计算出的所给字符串数组的缩写

```ruby
require 'abbrev'

Abbrev.abbrev(['car', 'cone'])
#=> {"ca"=>"car", "con"=>"cone", "co"=>"cone", "car"=>"car", "cone"=>"cone"}
```
返回值的keys为对应的可能的缩写


如果给出正则表达式，则可以根据正则表达式进行过滤数据：

```ruby
Abbrev.abbrev(%w{car box cone}, /b/)
#=> {"bo"=>"box", "b"=>"box", "box"=>"box"}
```