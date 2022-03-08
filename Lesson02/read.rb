ip_file = File.open("t22.log")
lines = ip_file.readlines
f_ips = lines.map { |line| line.gsub("\n", "") }.compact.uniq
f_ips2 = f_ips.select { |line| !line.include?"ADSL网络"  }
f_ips3 = f_ips2.select { |line| !line.include?"搜索引擎爬虫"  }
f_ips4 = f_ips3.select { |line|!line.include?"大型路由器" }
f_ips5 = f_ips4.select { |line|!line.include?"DNS服务器" }


puts "#{Time.now.strftime('%Y-%m-%d %H:%M:%S')}   f_ips5: #{f_ips5.count}, f_ips5: #{f_ips5}"

download_dir = File.expand_path(File.join(__dir__, 'public','download'))
puts '111-->',download_dir
unless Dir.exist?(download_dir)
  Dir.mkdir(download_dir,0777)
end
# /media/haima/34E401CC64DD0E28/site/go/src/ruby/fofapro/public/download/foreign_ips.txt
file_path = File.expand_path(File.join(download_dir, "去除共有.log"))
# 判断文件不存在创建，存在打开
if !File.exist?(file_path)
      #读写模式。如果文件存在，则重写已存在的文件。如果文件不存在，则创建一个新文件用于读写。
      foreign_ip_file = File.new(file_path, "w+")
else
      #读写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于读写。
      foreign_ip_file = File.open(file_path, "a+")
end

f_ips5.each do |str|
      foreign_ip_file.puts(str)
end
foreign_ip_file.close