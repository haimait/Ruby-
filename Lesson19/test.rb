#循环数组
gamelist = ["塞尔达传说", "超级马里奥", "开心剪纸"]
for game in gamelist do
    puts game
end

#循环1-5
for num in 1..5 do
    puts num
end

#循环1-4
for num in 1...5 do
    puts num
end

#while循环
index = 0
while index < 5 do
    puts "while.index=" + index.to_s
    index+=1
end

#untile
index = 0
until index == 5 do
    puts "until.index=" + index.to_s
    index+=1
end