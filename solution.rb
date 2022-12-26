string = ARGV[0] || '123456789012345678909999991234569999'

result = string.each_char.each_with_object(Hash.new(0)) do |char, acc|
  acc[char] += 1
end

result.each do |k, v|
  puts "#{k}: #{'*' * v}"
end
