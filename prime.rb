require 'benchmark'
require 'bigdecimal/math'

def prime?(number)
  number_range = (2..number-1).to_a
  if number <= 1 
    return false 
  else 
    number_range.none? {|factor| number % factor == 0} 
  end
end 

#def prime?(number) 
  #if number <= 1 
    #false 
  #else 
    #(2..number-1).to_a.none? {|factor| number % factor == 0 ? true : false }
  #end
#end 




puts Benchmark.measure { BigMath.PI(10_000) }