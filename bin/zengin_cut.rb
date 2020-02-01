#########
##
##
## 全銀データ用ファイル２００byteカットツール
##
##
#########
require 'pry'

count = 0

open(ARGV[0], "rb:ASCII-8BIT") do |f|
  f.each(200) do |record|

    case record[0]
    when "1"
      File.binwrite("header", record)
    when "2"
      File.binwrite("data#{a = count.next}", record)
    when "8"
      File.binwrite("trailer", record)
    when "9"
      File.binwrite("end", record)
    end
  end
end


