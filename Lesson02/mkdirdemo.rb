
require 'fileutils'
# /media/haima/34E401CC64DD0E28/site/go/src/ruby/fofapro/public/download
download_dir = File.expand_path(File.join(__dir__, 'public','download'))
puts '111-->',download_dir
FileUtils.mkdir_p(download_dir,:mode=>2750) unless File.exist?(download_dir)
# unless Dir.exist?(download_dir)
#   Dir.mkdir(download_dir,0777)
# end
# /media/haima/34E401CC64DD0E28/site/go/src/ruby/fofapro/public/download/foreign_ips.txt
file_path = File.expand_path(File.join(download_dir, "foreign_ips.txt"))
# 判断文件不存在创建，存在打开
if !File.exist?(file_path)
  #读写模式。如果文件存在，则重写已存在的文件。如果文件不存在，则创建一个新文件用于读写。
  foreign_ip_file = File.new(file_path, "w+")
else
  #读写模式。如果文件存在，则文件指针被放置在文件的末尾。也就是说，文件是追加模式。如果文件不存在，则创建一个新文件用于读写。
  foreign_ip_file = File.open(file_path, "a+")
end
foreign_ips = ['166.88.134.120','166.88.134.121']
foreign_ips.each do |ip|
  foreign_ip_file.puts(ip)
end
foreign_ip_file.close

is_delete = true
File.delete(file_path) if File.exists?(file_path) if is_delete