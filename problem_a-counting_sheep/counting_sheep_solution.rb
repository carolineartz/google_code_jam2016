INPUT = ARGF.read.split("\n"); INPUT.shift
NUMBERS = [*'0'..'9']

def calculate(n)
  return 'INSOMNIA' if n.zero?

  numbers = NUMBERS
  multiples = (1..Float::INFINITY).lazy.map { |m| m * n }
  multiples.take_while { |k| (numbers -= k.to_s.chars).any? && multiples.next }.force

  multiples.next
end

# /* Runner */

def run
  INPUT.each_with_index do |input, i|
    puts "Case ##{i + 1}: #{calculate(input.strip.to_i)}"
  end
end

run
