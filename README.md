# My solutions for qualifying round exercises, google code jam 2016

Solutions are in Ruby and solve for both the small and large datasets. See individual directories for details on problem individual code files.


## [Counting Sheep](./problem_a-counting_sheep/)

```ruby
NUMBERS = [*'0'..'9']

def calculate(n)
  return 'INSOMNIA' if n.zero?

  numbers = NUMBERS
  multiples = (1..Float::INFINITY).lazy.map { |m| m * n }
  multiples.take_while { |k| (numbers -= k.to_s.chars).any? && multiples.next }.force

  multiples.next
end
```


## [Revenge of the Pancakes](./problem_b-revenge_of_the_pancakes)

```ruby
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
```
