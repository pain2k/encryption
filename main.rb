if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите фразу для шифрования"
print ">"
phrase = STDIN.gets.encode("UTF-8").chomp

puts "Каким образом зашифровать:"
['MD5', 'SHA1'].each_with_index { |item, index| puts "#{index + 1}. #{item}" }
