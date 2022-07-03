#Ruby トレーニング

class Player
    def initialize(name)
        @name = name
    end

    def attack(enemy)
        puts "#{@name}は、#{enemy}を攻撃した！"
    end
end

class Wizerd < Player
    def attack(enemy)
        puts "ふんがぁーーー"
        puts "#{@name}は#{enemy}に殴った"
    end
end


puts "=== パーティでスライムと戦う ==="
hero   = Player.new("勇者")
warrior = Player.new("戦士")
wizerd = Wizerd.new("ちいかわ")
party = [hero, warrior,wizerd]
#↑↑↑↑↑オブジエクト（処理）を配列として扱う

# p party

party.each do |player|
    player.attack("スライム")
end




# 4 桁の数字で構成された文字列 s が入力されるので同じ数字が 2 つ以上存在すれば「NG」、そうでない場合は「OK」と出力
#　例　2022 →NG
if input.length - input.uniq.length== 0
    puts "OK"
else 
    puts "NG"
end


# 問題　クラスとインスタンスで以下の出力結果を得られるようにする。
# 著者: 阿部
# タイトル: Rubyの素晴らしさについて
# 本文: Awesome Ruby!
class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end


  def book()
         puts "著者:#{@author}"
         puts "タイトル:#{@title}"
         puts "本文:#{@content}"
  end

end

a=Article.new("阿部","Rubyの素晴らしさについて","Awesome Ruby!")
a.book()

#今日の曜日を表示するコードをDateクラスを使用して記述せよ。
# ただし、金曜日だった場合だけ以下のように表示の内容を変える。
# （出力内容）
# 「今日は月曜日」
# 「今日は金曜日だ ！！！」

days=["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"]

require "date"

day = Date.today.wday

week=days[day]


if week ==5
  puts"今日は#{week}だ"
else
  puts"今日は#{week}だ"
end

# require "date" Rubyの標準ライブラリ
# day = Date.today.wday wdayは曜日を0(日曜日)から6(土曜日)の整数で取得することができるDateクラスに用意されているメソッド

# 中央値を出力せよ
# 入力例1
# 690 342 960
input= gets.split(" ").map &:to_i

price= input.sort
puts price[1]
