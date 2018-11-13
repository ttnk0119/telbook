Friend.ids.each do |fid|
  friend = Friend.find(fid)
  0.upto(7) do |idx|
    telephone = Telephone.new(
      number: "080-#{rand(1000..9999)}-#{rand(1000..9999)}",
      cellphone: 0.equal?(idx % 2)
    )
    friend.telephones << telephone 
  end
end
