#p011vavrarg.rb
#variable number of parameters example
#The asterisk is actaully taking all argument you send to the method
#
def foo(*my_string)
  my_string.inspect
end
puts foo('hello','world')
puts foo()

