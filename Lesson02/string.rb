#单选注释
#代码块注释
=begin
  dsfadsf
  adsf
=end

puts 123 #带换行的打印
print 123 #不带换行的打印


# 文件的当前目录
puts __FILE__
# string.rb

# 文件的当前行
puts __LINE__ # 6
#文件的当前目录
puts __dir__
#/media/haima/34E401CC64DD0E28/site/ruby/RubyStudy/Lesson02

puts __method__

def debug(param = "")
  puts param
end

debug(123) # 123

a = "hello "
a << "world"
puts a

puts "stressed".reverse

# 字符串拼接
puts '字符串拼接----------------------'
puts 'i am ' + 'fish' #i am fish

name = 'haima'
puts "i am #{name}" #i am haima
puts "#{name + ",ok"}" #haima,ok

name1 = "Joe"
name2 = "Mary"
puts "你好 #{name1},  #{name2} 在哪?" #你好 Joe,  Mary 在哪?

puts '拼接时运算----------------------'
x, y, z = 12, 36, 72
puts "x 的值为 #{ x }" #x 的值为 12
puts "x + y 的值为 #{ x + y }" #x + y 的值为 48
puts "x + y + z 的平均值为 #{ (x + y + z) / 3 }" #x + y + z 的平均值为 40

puts '判断空----------------------'
a = "haima"
puts a.empty? # false
puts a.nil? # false
puts a.length # 5

# rails的判断为空.blank
# puts a.blank?
# .blank? 相当于同时满足 .nil? 和 .empty? 。
# railsAPI中的解释是如果对象是：
# false, empty, 空白字符. 比如说： "", " ", nil , [], 和{}都算是blank。 （object.blank? 相当于 object.nil?||object.empty?)。

# rails判断是否存在 present?判断是否存在
# present?方法就是blank?方法的相反，判断是否存在，因此present?方法与!blank?方法两者表达的意思是一样的。

#跟在 q 或 Q 后面的字符是分界符.分界符可以是任意一个非字母数字的单字节字符.如:[,{,(,<,!等,字符串会一直读取到发现相匹配的结束符为止.
#%q 使用的是单引号引用规则，而 %Q 是双引号引用规则（取可以解析变量）
puts "引导的字符串变量(原样输出/原格式输出)------------------"
name = "xiaohong"
desc1 = %Q(Ruby1 的字符串可以使用 ‘’ 和 “” ,i am #{name})
desc2 = %q{Ruby2 的字符串可以使用 ‘’ 和 “”}
desc3 = %q|Ruby2 的字符串可以使用 ‘’ 和 “”,i am #{name}|
desc4 = %q| use_d01 ip: 101.80.76.139 ip_categories:["ADSL网络", "嵌入式设备"] ip_categories_tenghui: ["ADSL网络"] ip_rule_categories:["嵌入式设备"] \n|
desc5 = %q|{
    "name":"lisi",
    "age":18
}
|
puts desc1 #Ruby1 的字符串可以使用 ‘’ 和 “” ,i am xiaohong
puts desc2 #Ruby2 的字符串可以使用 ‘’ 和 “”
puts desc3 #Ruby2 的字符串可以使用 ‘’ 和 “”,i am #{name}
puts desc4 # use_d01 ip: 101.80.76.139 ip_categories:["ADSL网络", "嵌入式设备"] ip_categories_tenghui: ["ADSL网络"] ip_rule_categories:["嵌入式设备"] \n
puts desc5
# {
#   "name":"lisi",
#   "age":18
# }

# 字符串大小写转换
puts '大小写转换----------------------'
puts "我是Ruby, Hello World.".upcase #我是RUBY, HELLO WORLD.
puts "我是Ruby, Hello World.".downcase #我是ruby, hello world.

puts '去除空格----------------------'
str1 = "  我是Ruby, Hello world. \n"
puts str1 #我是Ruby, Hello World.
#去除首部的空格，加！号改变本体
str1.lstrip! #我是Ruby, Hello World.  rstrip
puts str1

str2 = "  我是Ruby, Hello world22... " #  我是Ruby, Hello world11...
# 移除两头的空格，不改变本体
puts str2.strip #我是Ruby, Hello world11...
puts str2 #  我是Ruby, Hello world22...
# 返回 str 的副本，移除了尾随的空格。
puts str2.rstrip #  我是Ruby, Hello world11...
# 返回 str 的副本，移除首部的空格。
puts str2.lstrip #我是Ruby, Hello world11...

puts '去换行符----------------------'
ip = "166.88.134.120\n"
puts "ip #{ip}" #ip 166.88.134.120
puts "ip2 #{ip.gsub!(/(\n*)$/, '')}" #ip 166.88.134.120

puts '包函include?----------------------'
puts "hello".include? "lo" #=> true
puts "hello".include? "ol" #=> false
puts "hello".include? 'h' #=> true
puts "hello".include? ?h #=> true

require 'json'
str33 = '{
    "error":false,
    "mode":"extended",
    "page":1,
    "query":"ip=\"120.195.54.59\"",
    "results":[
        [
            "120.195.54.59",
            "21",
            "",
            "ftp",
            "",
            "",
            "2021-06-26 04:49:44"
        ],
        [
            "120.195.54.59",
            "80",
            "",
            "",
            "",
            "",
            "2021-05-27 17:10:45"
        ],
        [
            "120.195.54.59",
            "80",
            "",
            "http",
            "",
            "",
            "2021-05-27 17:10:44"
        ],
        [
            "120.195.54.59",
            "53",
            "",
            "dns",
            "",
            "",
            "2021-05-11 16:57:25"
        ]
    ],
    "size":4
}'
json = JSON.parse(str33)
puts json
puts json["error"]

source = '{"a": "foo", "b": 1.0, "c": true, "d": false, "e": null}'
ruby = JSON.parse(source)
puts ruby
