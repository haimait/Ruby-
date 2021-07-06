puts "数组的循环-------------------------------------------------->"
ary = ["fred", 10, 3.14, "This is a string", "last element"]
ary.each do |i|
  puts i
end

# 输出下面结果
=begin
fred
10
3.14
This is a string
last element
=end

# 取数组里第一个元素里的某个key的值
resp = [{ :ip => "166.88.134.120", :port => "80", :title => "", :protocol => "http", :domain => "", :cert => "", :lastupdatetime => "2021-05-14 12:43:32" }, { :ip => "166.88.134.120", :port => "80", :title => "", :protocol => "http", :domain => "", :cert => "", :lastupdatetime => "2021-05-14 12:43:32" }]
puts resp.first[:lastupdatetime]

# ips = ['127.0.0.1']
# group_ips = ips.in_groups_of(50).map{|obj| obj.compact}
# puts group_ips

# puts ["a", "b", "c", "d", "e", "f"].in_groups_of(2)
# puts ["a", "b", "c", "d", "e", "f"].group_by(2)

arr = [
  { "id" => 7204, "product" => "华为-交换机", "soft_hard_code" => 1, "level_code" => 1 },
  { "id" => 209, "product" => "Cisco-C2900XL", "soft_hard_code" => 1, "level_code" => 1 },
  { "id" => 673033, "product" => "迈普-路由器", "soft_hard_code" => 1, "level_code" => 1 }]
puts "arr:#{arr}"
puts "arr:#{arr.first(1)[0]['id']}"
puts "arr:#{arr[1]['id']}"
resp2 = arr.map { |json| json['id'] }
puts "resp2:#{resp2}" # resp2:[7204, 209, 673033]
#
arr3 = [
  { "id": 7204, "product": "华为-交换机", "soft_hard_code": 1, "level_code": 1 },
  { "id": 209, "product": "Cisco-C2900XL", "soft_hard_code": 1, "level_code": 1 },
  { "id": 673033, "product": "迈普-路由器", "soft_hard_code": 1, "level_code": 1 }]
# arr3 = JSON.parse(arr32)
puts "arr3:#{arr3}"
puts "arr3:#{arr3.first(1)[0][:id]}"
puts "arr3:#{arr3[1][:id]}"
resp3 = arr3.map { |json| json[:id] }
puts "resp3:#{resp3}" # resp2:[7204, 209, 673033]
# puts "resp33:#{arr3.pluck(:product)}"

en_product = arr.map { |obj| obj["product"] }
puts en_product

product = ["华为-交换机", "Cisco-C2900XL", "迈普-路由器"]
puts "productCount:===>#{product.count}"
if product.count > 0
  # puts en_product
  # {"status"=>true, "rules"=>{"1433"=>{"total_entries"=>1, "data"=>[{"id"=>7205, "product"=>"华为-Firewall", "soft_hard_code"=>1, "level_code"=>1}]}, "3306"=>{"total_entries"=>1, "data"=>[{"id"=>7204, "product"=>"华为-交换机", "soft_hard_code"=>1, "level_code"=>1}]}, "443"=>{"total_entries"=>2, "data"=>[{"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>673033, "product"=>"迈普-路由器", "soft_hard_code"=>1, "level_code"=>1}]}, "80"=>{"total_entries"=>1, "data"=>[{"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}]}}, "distinct_rules"=>{"total_entries"=>4, "data"=>[{"id"=>7205, "product"=>"华为-Firewall", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>7204, "product"=>"华为-交换机", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>673033, "product"=>"迈普-路由器", "soft_hard_code"=>1, "level_code"=>1}]}}
  json = { "status" => true, "rules" => en_product }
else
  json = { "status" => false, "rules" => en_product }
end
puts "json:#{json}"
puts "json:#{json['rules']}"

puts '---------------------------------------'
puts "#{[1, 1, 3, 5] & [1, 2, 3]}" # [1, 3]
puts "#{["abc", "ADSL"] & ["ADSL", "Modem"]}" # ["ADSL"]
puts "#{["abc"] | ["ADSL", "Modem"]}" # ["abc", "ADSL", "Modem"]
puts "#{[1, 2, 3] * 3}" # [1, 2, 3, 1, 2, 3, 1, 2, 3]
puts "#{[1, 2, 3] * "--"}" #    1--2--3

puts '---------------------------------------'
rule_names = ["moxa-nport", "Atop-abc"]
abc = rule_names.any? { |rule_name| rule_name.include?("moxa-nport") || rule_name.include?("Atop-") }
puts abc

puts '---------------------------------------'
puts "#{'Atop-abc'.include? 'Atop-'}"
puts "#{'Atop-abc'.include? 'Atop-abc'}"
puts "#{["abc", "ADSL"].include? "abc"}" # ["ADSL"]
puts "#{["abc", "ADSL"].include?("ab")}" # ["ADSL"]

puts '---------------------------------------'
rule_names1 = ["moxa-nport", "Atop-abc", "dptech-server"]
puts "#{rule_names1.include?("dptech-server")}" # true
puts "#{rule_names1.include?("dptech")}" # false
puts rule_names1.any? { |rule_name| rule_name.include?("dptech") } # true 判断数组里任意一项里的字符串是任意一个元素里的字条串包函c
puts "#{rule_names1.include?("moxa-nport")}" # true  判断是数组里是否有元素=maxa-nport
puts ['安达通-SJW74-VPN网关'].include?("VPN") # false

puts ["CN", "TW", "HK", "MO"].any? { |obj| obj.include?('C') } #true
puts ["CN", "TW", "HK", "MO"].any? { |obj| obj.include?('c') } #false
puts ["cn", "TW", "HK", "MO"].any? { |obj| obj.downcase.include?('c') } #true 传大写后判断是任意一个元素里包函c
puts ["CN", "TW", "HK", "MO"].any? { |obj| obj.downcase.include?('c') } #true
puts ["cn", "TW", "HK", "MO"].any? { |obj| obj.upcase.include?('C') } #true
# ary.any? [{ |obj| block }]   -> true or false
#
#

puts '---------------------------------------'
ips2 = ["117.175.183.9", "27.148.193.101", "27.148.193.109", "27.148.193.109"].uniq
puts "ips2:---> #{ips2}"
query = "(#{ips2.map { |ip| "ip=\"#{ip}\"" }}) && after=\"2018-03-01\""
puts "query1:---> #{query}"
query = "(#{ips2.map { |ip| "ip=\"#{ip}\"" }.join(' || ')}) && after=\"2018-03-01\""
puts "query2:---> #{query}"

puts '---------------------------------------'
obj1 = { :continent => "AP", :areacode => "CN", :country => "中国", :zipcode => "", :timezone => "Asia/Shanghai", :accuracy => "", :isp => "移动", :province => "江苏", :city => "苏州", :district => "吴中区", :scene => "租用专线", :user => nil, :user_type => "", :latitude => 31.061588, :longitude => 120.382076, :base_station => nil, :idc => nil }
if ["CN", "TW", "HK", "MO"].include?(obj1[:areacode])
  puts 11111
else
  puts 22222
end

puts "foreign_ips#{(Time.now.to_f * 1000).to_i}.txt"

puts 'first---------------------------------------'
scene = "数据中心,IDC"
scene_first = scene.split(",").first
puts scene
puts scene_first
puts scene.split(",").class

puts '--------------------------------------'

arr11 = ["111", "2222", "444"]
arr12 = []
arr12 << "111"
arr12 << "111"
arr12 << "2222"
puts "arr12 #{arr12}"
puts "resp #{(arr11 & arr12).size}"

puts '11--------------------------------------'
tenghui = []
d01 = []
puts "nouse #{tenghui & d01}" #nouse []


tenghui = ["DNS服务器"]
d01 = []
puts "use tenghui #{tenghui & d01}" #use tenghui []

tenghui = []
d01 = ["其他网络产品", "ADSL网络"]
puts "use d01 #{tenghui & d01}" #use d01 []

tenghui = ["DNS服务器","搜索引擎爬虫"]
d01 = ["其他网络产品", "ADSL网络"]
if tenghui.count >0 && d01.count >0 && (tenghui & d01).count == 0 &&(tenghui | d01).count != 0
 puts "use d01 #{tenghui | d01}" #use common ["DNS服务器", "搜索引擎爬虫", "其他网络产品", "ADSL网络"]
end

tenghui = ["DNS服务器","搜索引擎爬虫"]
d01 = ["DNS服务器","搜索引擎爬虫","其他网络产品", "ADSL网络"]
puts "use common #{tenghui & d01}" #use common ["DNS服务器", "搜索引擎爬虫"]

# tenghui = ["DNS服务器"]
# d01 = ["DNS服务器","其他网络产品", "ADSL网络"]
# puts "use common #{tenghui & d01}" #use common ["DNS服务器"]

tenghui = ["DNS服务器"]
t01 = ["DNS服务器","DNS服务器","搜索引擎爬虫"]
puts "use tenghui #{t01-tenghui}" #use tenghui []
puts "use tenghui #{tenghui-t01}" #use tenghui []
puts "use tenghui #{ t01 + tenghui}" #use tenghui []

