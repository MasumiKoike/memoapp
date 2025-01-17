require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i

if memo_type == 1
 puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
  
 test_name = gets.to_s.chomp
  puts "メモの内容を入力してください。Ctrl+Dで保存してください。"
  
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  CSV.open("#{test_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
  end
  
elsif memo_type == 2
 puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
  
 test_name = gets.to_s.chomp
  puts "メモの内容を入力してください。Ctrl+Dで保存してください。"
 
  imput_memo = STDIN.read
  memo = imput_memo.chomp
  CSV.open("#{test_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
  end

else
  puts "1か2の数字を入力してください"
end
  