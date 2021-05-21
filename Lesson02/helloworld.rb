# 文件的当前目录
puts __FILE__
# /media/haima/34E401CC64DD0E28/site/ruby/RubyStudy/Lesson02/helloworld.rb

# 文件的当前行
puts __LINE__ # 4
#文件的当前目录
puts __dir__
#/media/haima/34E401CC64DD0E28/site/ruby/RubyStudy/Lesson02

puts __method__

def debug(param = "")
  puts param
end

debug(123) # 123

# 字符串拼接
puts 'i am ' + 'fish' #i am fish

# 字符串大小写转换
puts "我是Ruby, Hello World.".upcase #我是RUBY, HELLO WORLD.
puts "我是Ruby, Hello World.".downcase #我是ruby, hello world.


str1 = "我是Ruby, Hello world. \n"
puts str1 #我是Ruby, Hello World.
puts str1.rstrip! #我是Ruby, Hello World.

#
str2 = "  我是Ruby, Hello world11... " #  我是Ruby, Hello world11...
# 移除两头的空格
puts str2.strip #我是Ruby, Hello world11...
# 返回 str 的副本，移除了尾随的空格。
puts str2.rstrip #  我是Ruby, Hello world11...
# 返回 str 的副本，移除首部的空格。
puts str2.lstrip #我是Ruby, Hello world11...


puts '----------------------'
ip = "166.88.134.120\n"
puts ip
puts ip.gsub!(/(\n*)$/, '')

puts '----------------------'
name = 'haima'
puts "i am #{name}"
puts "#{name + ",ok"}"

a = "haima"
puts a.empty? # false
puts a.nil? # false
puts a.length # 5



