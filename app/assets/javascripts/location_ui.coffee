$ ->
  
  parachute = -> alert "Routing..."#(mssg) -> $("a").text("BOOOO")

  #$("a").live('click', parachute)

# class Mine 
#   talk: (mssg) -> 
#     alert "#{mssg} My Alert Box"
# 
# 
# square = (x) -> x * x
#   
# my_list = [1,2,3]
# 
# math = 
#   root: Math.sqrt
#   square: square
#   cube: (x) -> x * square x
#   
# #console.log math.cube
# 
# $("a").live('click', -> (new Mine).talk("George's"))
# 
# #countdown = (alert number for number in [10..1])
# 
# yearsOld = max: 10, ida: 9, tim: 11
# 
# ages = for child, age of yearsOld
#   "#{child} is #{age}"