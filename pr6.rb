def valid_ipv4?(str)
  parts = str.split(".")

  return false unless parts.length == 4

  parts.each do |part|
    return false unless part.match?(/^\d+$/)
    num = part.to_i
    return false unless (0..255).cover?(num)
    return false unless part == "0" || !part.start_with?("0")
  end


  return true
end

loop do
  print "Введіть IPv4-адресу: "
  address = gets.chomp

  if valid_ipv4?(address)
    puts "Це коректна IPv4-адреса."
  else
    puts "Це не коректна IPv4-адреса."
  end
end

