# 取数组里第一个元素里的某个key的值
resp = [{ :ip => "166.88.134.120", :port => "80", :title => "", :protocol => "http", :domain => "", :cert => "", :lastupdatetime => "2021-05-14 12:43:32" }, { :ip => "166.88.134.120", :port => "80", :title => "", :protocol => "http", :domain => "", :cert => "", :lastupdatetime => "2021-05-14 12:43:32" }]
puts resp.first[:lastupdatetime]

# 判断文件是否存在
puts FileTest::exist?("helloworld.rb")
p FileTest::exist?("/tmp/ip_result_file20210515-17252-1r26sn3.json")

# ips = ['127.0.0.1']
# group_ips = ips.in_groups_of(50).map{|obj| obj.compact}
# puts group_ips

# puts ["a", "b", "c", "d", "e", "f"].in_groups_of(2)
# puts ["a", "b", "c", "d", "e", "f"].group_by(2)

arr = [
  {"id"=>7204, "product"=>"华为-交换机", "soft_hard_code"=>1, "level_code"=>1},
  {"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1},
  {"id"=>673033, "product"=>"迈普-路由器", "soft_hard_code"=>1, "level_code"=>1}]
puts "arr:#{arr}"
puts "arr:#{arr.first(1)[0]['id']}"
puts "arr:#{arr[1]['id']}"
resp2 = arr.map{|v| v['id']}
puts "resp2:#{resp2}"

en_product = arr.map { |obj| obj["product"] }
puts en_product

product = ["华为-交换机","Cisco-C2900XL","迈普-路由器"]
if product.count >0
  # puts en_product
  # {"status"=>true, "rules"=>{"1433"=>{"total_entries"=>1, "data"=>[{"id"=>7205, "product"=>"华为-Firewall", "soft_hard_code"=>1, "level_code"=>1}]}, "3306"=>{"total_entries"=>1, "data"=>[{"id"=>7204, "product"=>"华为-交换机", "soft_hard_code"=>1, "level_code"=>1}]}, "443"=>{"total_entries"=>2, "data"=>[{"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>673033, "product"=>"迈普-路由器", "soft_hard_code"=>1, "level_code"=>1}]}, "80"=>{"total_entries"=>1, "data"=>[{"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}]}}, "distinct_rules"=>{"total_entries"=>4, "data"=>[{"id"=>7205, "product"=>"华为-Firewall", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>7204, "product"=>"华为-交换机", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>209, "product"=>"Cisco-C2900XL", "soft_hard_code"=>1, "level_code"=>1}, {"id"=>673033, "product"=>"迈普-路由器", "soft_hard_code"=>1, "level_code"=>1}]}}
  json = {"status"=>true,"rules"=>en_product}
else
  json = {"status"=>false,"rules"=>en_product}
end
puts "json:#{json}"
puts "json:#{json['rules']}"

puts '---------------------------------------'
puts  "#{[ 1, 1, 3, 5 ] & [ 1, 2, 3 ]}"  # [1, 3]
puts  "#{["abc","ADSL"] & ["ADSL", "Modem"]}"  # ["ADSL"]
puts  "#{["abc"] | ["ADSL", "Modem"]}"  # ["abc", "ADSL", "Modem"]
puts  "#{[ 1, 2, 3 ] * 3}"  # [1, 2, 3, 1, 2, 3, 1, 2, 3]
puts  "#{[ 1, 2, 3 ] * "--"}"  #    1--2--3

puts '---------------------------------------'
rule_names = ["moxa-nport","Atop-abc"]
abc = rule_names.any? { |rule_name| rule_name.include?("moxa-nport") || rule_name.include?("Atop-") }
puts abc

puts '---------------------------------------'
puts  "#{'Atop-abc'.include?'Atop-'}"
puts  "#{'Atop-abc'.include?'Atop-abc'}"
puts  "#{["abc","ADSL"].include?"abc"}"  # ["ADSL"]
puts  "#{["abc","ADSL"].include?("ab")}"  # ["ADSL"]

puts '---------------------------------------'
rule_names1 = ["moxa-nport","Atop-abc","dptech-server"]
puts "#{rule_names1.include?("dptech-server")}" # true
puts "#{rule_names1.include?("dptech")}" # false
puts rule_names1.any? { |rule_name| rule_name.include?("dptech") } # true 判断数组里任意一项里的字符串是任意一个元素里的字条串包函c
puts "#{rule_names1.include?("moxa-nport")}" # true  判断是数组里是否有元素=maxa-nport
puts ['安达通-SJW74-VPN网关'].include?("VPN")  # false

puts ["CN","TW","HK","MO"].any? { |obj| obj.include?('C') } #true
puts ["CN","TW","HK","MO"].any? { |obj| obj.include?('c') } #false
puts ["cn","TW","HK","MO"].any? { |obj| obj.downcase.include?('c') } #true 传大写后判断是任意一个元素里包函c
puts ["CN","TW","HK","MO"].any? { |obj| obj.downcase.include?('c') } #true
puts ["cn","TW","HK","MO"].any? { |obj| obj.upcase.include?('C') } #true
# ary.any? [{ |obj| block }]   -> true or false