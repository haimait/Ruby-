
ips = ["117.175.183.9", "27.148.193.101", "27.148.193.109","27.148.193.109"]
ips = ips.map{|ip| ip.strip}.select{|ip| Ip.is_ip(ip)}.uniq #["117.175.183.9", "27.148.193.109"]
# 搜索数据库存在的ip数据
ip_infos = IpInfo.select(:ip).where(ip: ips) # SELECT `ip_infos`.`ip` FROM `ip_infos` WHERE `ip_infos`.`ip` IN ('117.175.183.9', '27.148.193.109')
# 存在的ip数据状态改为init，防止IpInfo中有数据为running，一直无法post出去，正常情况用不到这个
ip_infos.update_all(state: :init) # UPDATE `ip_infos` SET `ip_infos`.`state` = 'init' WHERE `ip_infos`.`ip` IN ('117.175.183.9', '27.148.193.109')

# 获取数据库不存在的ip
exist_ips = ip_infos.pluck(:ip) # ["117.175.183.9", "27.148.193.109"]
search_ips = ips.select{|ip| !exist_ips.include?(ip)} #筛出exist_ips不在ips中的 exist_ips不包


