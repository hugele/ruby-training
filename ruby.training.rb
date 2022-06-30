#Ruby トレーニング


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
