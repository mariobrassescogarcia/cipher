

# Firstly we declare the variable (the sentence that will be encrypted)
# We make the user write its value

input = ""

puts "Write a sentence (no numbers or accents please)"
input = gets.chomp

# We transform the input into a new string that only includes alphanumerical characters (no punctuation allowed). Punctuation signals are converted into whitespace.

string = input.gsub(/[^a-z0-9\s]/i, '')



# We ask the user to introduce the encryption rule (integer number)

puts "Introduce the encryption rule (integer number)"
n = gets.chomp.to_i


#Create a function where the transformed input is converted into an array.

def solve_cipher(string, n)

#Split each element of the string to get and array and return an array where each element is x (to operate with each element)
  string.split('').map do |x|
#Create a new variable that will be the new index for each element.
    new_index = x.ord + n
 
#Define the new index value with if conditional statements.

#The value for whitespace is its value -26 as it is not included in the alphanumerical rules defined above
if x == ' '
   new_index = ' '.ord - 26
end


#Declare the values of the index where it is above z's
if new_index > 'z'.ord
      new_index = 'a'.ord + new_index - 'z'.ord - 1
end

#Declare the values of the index where it is beyond a's
if new_index < 'a'.ord
   new_index = 'z'.ord - ('a'.ord - new_index) + 1
end
 
 #Make the function return the list of numbers converted into letters   
   new_index.chr

end.join

end


puts solve_cipher(string,n)


