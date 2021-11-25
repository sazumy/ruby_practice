# エラーオプジェクトの中身を確認する例
begin
  1 / 0
rescue => e
  puts "エラークラス：#{e.class}"
  puts "エラーメッセージ：#{e.message}"
  puts "バックトレース ------------"
  puts e.backtrace
  puts "-------------------------"
end

# 指定したエラー名のエラーしか捕捉しない例
begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
end

begin
  'abc'.foo
rescue ZeroDivisionError
  puts "0で除算しました"
rescue NoMethodError
  puts "存在しないメソッドが呼び出されました"
end

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー：#{e.class} #{e.message}"
end
