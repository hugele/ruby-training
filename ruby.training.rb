#Ruby トレーニング

# 以下の要件を満たす in1to10メソッドを実装しましょう。

# 第一引数のnumが1以上かつ10以下の範囲であればTrueを出力すること
# 第二引数のoutside_modeがTrueの場合は、第一引数numが条件範囲外でもTrueを出力すること
# それ以外はFalseを出力すること

def in1to10(num, outside_mode)
  if (num>=1 && num<=10 )|| outside_mode==true
          puts "True"
  else
          puts "False"
  end
end

in1to10(5,false)
in1to10(11,false) 
in1to10(11,true) 

#出力が下記になれば正解
#True
#False
#True


# ターミナルから数字を入力して、数字に応じて以下のように出力するプログラムを書いてください。
# 10以下なら10以下の数字です
# 10より大きい数値なら10より大きい数字です
# 10以下でかつ0以下なら0以下の数字です

input=gets.to_i
puts input

if input<=10 && input <=0
        puts "10以下でかつ0以下なら0以下の数字です"
elsif input>=10
        puts"10より大きい数字です"
else input<=10
        puts "10以下の数字です"
end


# 以下の要件を満たすcheck_nameメソッドを実装しましょう。

# 名前を入力すると「登録が完了しました」という文字列を出力すること
# 名前の中にピリオド(.)がある場合は、「 "!エラー!記号は登録できません"」という文字列を出力すること
# 名前の中に空白（半角のみ）がある場合は、「 "!エラー!空白は登録できません"」という文字列を出力すること

def check_name(str) 
  if str.include?(" ") || str.include?(",")
          puts "!エラー!記号は登録できません"
  else  
          puts "登録が完了しました"
  end
                  
end

puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 



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

party.each do |player|
    player.attack("スライム")
end




# 4 桁の数字で構成された文字列 s が入力されるので同じ数字が 2 つ以上存在すれば「NG」、そうでない場合は「OK」と出力
#　例　2022 →NG
input= gets.chomp.chars

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


# 睡眠時間8時間を計算
#入力例 12:45
input_line = gets.chomp.split(":")
time=input_line

sllep=time[0].to_i-8
go_bed=24 + sllep

if 24<go_bed
    a=0+sllep
     puts  "#{a}:#{time[1].to_i}"
else
     puts  "#{go_bed}:#{time[1].to_i}"
end
