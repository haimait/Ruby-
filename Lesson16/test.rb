class Game
    def initialize(id, title, price)
        @id = id
        @title = title
        @price = price
    end

    def showGame
        puts @id + ", " + @title + ", " + @price.to_s
    end

    def self.toStr
        puts "I love this game."
    end
end

class SteamGame < Game
    def SteamInfo
        puts "G胖说了,STEAM要统一各个平台，完成Game All In One。"
    end
end

SteamGame.toStr # 调用父类里的静态方法

mygame = SteamGame.new("nobunaga-taishi", "信長の野望・大志", 450)
mygame.showGame # 调用父类里的方法
mygame.SteamInfo # 调用自己的方法