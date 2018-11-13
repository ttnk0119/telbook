fname = ["佐藤", "鈴木", "高橋", "田中", "山田"]
gnames = ["太郎", "次郎", "花子", "雛子", "ジョン", "メアリー"]
0.upto(25) do |idx|
  Friend.create(
    name: "#{fname[idx % 5]} #{gnames[idx % 6]}"
  )
end
