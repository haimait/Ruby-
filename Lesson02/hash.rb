require "json"
t1 = {"1" => "January", "2" => "February"}
t1_json = t1.to_json
puts "t1.class:#{t1_json.class} t1:#{t1_json}" # t1.class:String t1:{"1":"January","2":"February"}
t2 =JSON.parse(t1_json)
puts "t2.class:#{t2.class} t2:#{t2}"  # t2.class:Hash t2:{"1"=>"January", "2"=>"February"}

# testarr = {"114.215.129.208"=>"{\"ip\":{\"category\":[\"云主机提供商\",\"企业管理产品\",\"CMS\",\"IDC服务器\"],\"lastupdatetime\":\"2022-03-06 16:14:45\"}}", "171.121.18.62"=>"{\"ip\":{\"category\":[\"ADSL网络\",\"中小型路由交换设备\"],\"lastupdatetime\":\"2022-03-08 18:41:35\"}}"}
# puts "testarr: #{testarr["114.215.129.208"]} type:#{testarr.is_a?(Array)} type2:#{testarr["114.215.129.208"].is_a?(Array)} "
# testarr = {
#     "category":["云主机提供商", "企业管理产品", "CMS", "IDC服务器"],
#     "lastupdatetime":"2022-03-06 16:14:45"
# }
# puts "testarr: #{testarr[:ip][:lastupdatetime]} type:#{testarr.is_a?(Array)} type2:#{testarr["114.215.129.208"].is_a?(Array)} "
# testarr = {:ip=>"114.215.129.208", :categories=>["云主机提供商", "企业管理产品", "CMS", "IDC服务器"], :lastupdatetime=>"2022-03-06 16:14:45"}
testarr = `{:ip=>"171.121.18.62", :categories=>["ADSL网络", "中小型路由交换设备"], :lastupdatetime=>"2022-03-08 18:41:35"}"`
# tr = JSON.parse(testarr)
puts "testarr: #{testarr} testarr_class:#{testarr.class}"

testarr_json=JSON.generate(testarr)
puts "testarr_json: #{testarr_json} "

testarr_json_res = JSON.parse(testarr_json)
puts "testarr_json_res: #{testarr_json_res} #{testarr_json_res["lastupdatetime"]}"

a1 = {"1" => "January", "2" => "February"}
a2 = {"1" => "January", "2" => "February"}
puts "获取长度------------------------------------------------------"
puts a2.length #2
#判断空
puts a2.empty? #false

a3 = {}
puts a3.length # 0
puts a3.empty? # true
# 是否包函
puts a1.include?"1" #true
puts "keys，vaules 操作------------------------------------------------------"
# key是否存在
puts a1.key?("3") #false
# value是否存在
puts a1.value?("January") #true
puts a2[5] #没有key返回空
# 获取所有的k 和 v
puts "#{a1.keys} ==> #{a1.values}" #["1", "2"] ==> ["January", "February"]

a2 = {"11a" => "January", "a22" => "February"}
puts a1.any?{|k,v| v.include?('e')} #判断是否至少有一个值里包函a的

puts "判断a1与a2是否一样------------------------------------------------------"
puts a1 == a2 #true
# 取key为“1”的值
puts a1["1"] #January

# 改变key为“1”的值
puts a1["1"] = "xiaohong"
puts a1["3"] = "lisi"
puts a1["4"] = "wangwu"
puts a1["6"] #没有key返回空

puts a1.delete("3")  #删除k为3的键值对

puts "h2--------------------------------->"
h2 = { "a" => 100, "b" => 200 }
puts h2.delete("a")    #=> 100
puts h2.delete("z")    #=> nil
puts h2.delete("z") { |el| puts "#{el} not found" }   #=> "z not found"
puts h2

puts "如果没有这个key，返回一个默认值--------------------------------->"
h3 = { "a" => 100, "b" => 200 }
h3.default = "Go fish" #设置一个默认值 如果未通过 default= 进行设置，则返回 nil。（如果键在 hash 中不存在，则 [] 返回一个默认值。）
puts "#{h3["a"]}"     #=> 100
puts "#{h3["z"]}"    #=> "Go fish"


# 如果key==“1”删除这个键值对
a1.delete_if { |key,value|
  if key == "1"
    a1.delete(key)
  end
  }
puts a1
#  删除满足条件的键值对后，返回一个新的hash
h2 = { "a" => 100, "b" => 200, "c" => 300 }
h2tmp = h2.delete_if {|key, value| key >= "b" }
puts "h2tmp #{h2tmp}"  #=> {"a"=>100}

# puts a1.delete_if{|keys,values|}
puts "从哈希中移除所有的键值对。------------------------------------------------------"
puts a1.clear #{}

puts "循环打印1------------------------------------------------------"
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

colors.each { |k,v| print k," is ",v,"\n" }
puts "循环打印2------------------------------------------------------"
hsh.each do |k,v|
  puts "#{k} is #{v}"
end

puts "循环打印key------------------------------------------------------"
hsh.each_key { |key| puts key }
puts "循环打印value------------------------------------------------------"
hsh.each_value { |value| puts value }

puts "所有的v加1，返回一个新的hash------------------------------------------------------"
hsh1  = {"red" => 1, "green" => 2, "blue" => 3 }
h2 = hsh1.map { |k,v| v+1  }
puts h2


puts "类型转换------------------------------------------------------"
months = {"1" => "January", "2" => "February"}

# h to s
months2 = months.to_s
puts "months2 class2:#{months2.class} value2:#{months2}" # months2 class2:String value2:{"1"=>"January", "2"=>"February"}

# h to a
months1 = months.to_a
puts "months1 class:#{months1.class} value:#{months1}" # months1 class:Array value:[["1", "January"], ["2", "February"]]
# a to h
months4 = months1.to_h
puts "months4 class:#{months4.class} value:#{months4}" # months4 class:Hash value:{"1"=>"January", "2"=>"February"}

# a to s
months3 = months1.to_s
puts "months3 class:#{months3.class} value:#{months3}" # months3 class:String value:[["1", "January"], ["2", "February"]]

#返回一个新的数组，包含 hash 中与给定的键相关的值。
h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
h1 = h.values_at("cow", "cat")  #=> ["bovine", "feline"]
puts "h1 #{h1}"


#通过给定的 key 从 hash 返回值。如果未找到 key，且未提供其他参数，则抛出 IndexError 异常；如果给出了 default，则返回 default；如果指定了可选的 block，则返回 block 的结果。
h5 = { "a" => 100, "b" => 200 }
puts h5.fetch("a")                            #=> 100
puts h5.fetch("z", "go fish")                 #=> "go fish"
puts h5.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
puts h5.fetch("b") { |el| "go fish, #{el}"}   #=> 200