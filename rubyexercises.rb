# 1

[1,2,3,4,5,6,7,8,9,10].each do |num|

  print num

end

print " \n------------------------------ \n"

# 2
[1,2,3,4,5,6,7,8,9,10].each do |num|

  if num > 5

    puts num

  end

end

print " \n------------------------------ \n"

#3


myarray = [1,2,3,4,5,6,7,8,9,10].select { |num| (num % 2) != 0 }


print " \n------------------------------ \n"

#4
myarray = [1,2,3,4,5,6,7,8,9,10].select { |num| (num % 2) != 0 }
myarray << 11
myarray.unshift(0)

print " \n------------------------------ \n"

#5 
myarray.pop
myarray.push(3)

#6


myarray.uniq

print " \n------------------------------ \n"

#7 An array is a list that maintains the position of elements. A hash does not
# maitain position and is used as a dictionary look-up

#8 1.8 syntax - hash = {:one => 1, :two => 2}
#  1.9 syntax - hash = {one: 1, two: 2}

#9
h = Hash.new
h = {"a" => 1, "b" => 2, "c" => 3, "d" =>4}

h.each do |key, value|

  if key == "b"
    puts value

  end

end

# 10

h["e"] = 5

#13

h.delete_if { |key, value| value < 3.5   }

#14 Yes hash values can be arrays
# an example is 
v = Hash.new
v = {"a" => 1, "b" => [2, 3]}

#15 I like http://api.rubyonrails.org because it is the official api
# documentation, and the way it is laid out it makes it easy to find things










