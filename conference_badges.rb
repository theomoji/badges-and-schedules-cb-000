badge_maker("Arel")
=> "Hello, my name is Arel."

def badge_maker(name)
  return "Hello, my name is #{name}."
end

#* Write a `batch_badge_creator` method that takes an array of names as an argument and returns an array of badge messages.
array = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]


def batch_badge_creator(array)
  new_array = []
  array.each do |name|
     new_array << badge_maker(name)
  end
  return new_array
end

# def assign_rooms(array)
#   new_array = []
#   array.each_with_index {|name, index|
#     new_array << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
#   }
#   return new_array
# end

def assign_rooms(array)
  new_array = []
  array.each_with_index {|name, index|
  index += 1
  string = "Hello, #{array}! You'll be assigned to room #{index}!"
  new_array << string}
end
return new_array
end


def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room_assignment|
    puts room_assignment
  end
end

#++++++++++++++++++++++++++++++++++++++++++
