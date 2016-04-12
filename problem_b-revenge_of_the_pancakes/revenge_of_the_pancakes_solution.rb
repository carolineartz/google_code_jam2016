INPUT = ARGF.read.split("\n"); INPUT.shift

def flip(cakes, flips = 0)
  loop do
    cakes.squeeze!
    break if cakes == '+'

    if cakes.length.even?
      cakes[0..-2] = cakes[0..-2].reverse.tr('-+', '+-')
    elsif cakes[-1] == '+'
      cakes = cakes [1..-1]
    else
      cakes.reverse!.tr!('-+', '+-')
    end

    flips += 1
  end

  flips
end

# /* Runner */

def run
  INPUT.each_with_index do |input, i|
    puts "Case ##{i + 1}: #{flip(input.strip)}"
  end
end

run
