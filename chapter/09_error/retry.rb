retry_count = 0

begin
  puts '処理を開始します'
  # わざと例外を発生させる
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。（#{retry_count}回目）"
    retry
  else
    puts 'retryに失敗しました。'
  end
end
