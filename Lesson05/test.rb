class Game
    def initialize(title = "怪物猎人世界", price = 200)
        @title = title
        @price = price
    end
    def show()
        puts "标题: #{@title}"
        puts "价格: #{@price}"
    end
    def show2()
    end
    def show3()
    end
end

puts Game.instance_methods(false) #false:打印类里自定义的方法  / true:打印所有的方法,包括系统里内的方法
mario = Game.new("超级马里奥", 350);
mario.show()
#if mario.respond_to?("show") #判断对象是否存在show方法
#    mario.send("show")       #执行指定的方法
#end
