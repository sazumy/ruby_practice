# def currency_of(country)
#   case country
#   when :japan
#     puts 'yen'
#   when :us
#     puts 'doller'
#   when :india
#     puts 'rupee'
#   else
#     # 意図的に例外を発生させる
#     raise "無効な国名です #{country}"
#   end
# end

# currency_of(:japan)
# currency_of(:italy)

# def currency_of(country)
#   case country
#   when :japan
#     puts 'yen'
#   when :us
#     puts 'doller'
#   when :india
#     puts 'rupee'
#   else
#     # エラーメッセージなしで呼び出す
#     raise
#   end
# end

# currency_of(:us)
# currency_of(:italy)

def currency_of(country)
  case country
  when :japan
    puts 'yen'
  when :us
    puts 'doller'
  when :india
    puts 'rupee'
  else
    # 第一引数... エラー名、第二引数... メッセージを指定できる。ここではArgumentErrorを発生させている
    raise ArgumentError, "無効な国名です#{country}"
  end
end

currency_of(:us)
currency_of(:italy)
