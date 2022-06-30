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

