

# Firstly we declare the variable (the sentence that will be encrypted)
# We make the user write its value

input = ""

puts "Write a sentence (no numbers please)"
input = gets.chomp

# We make the string to only include alphanumerical characters (no punctuation allowed). Punctuation signals are converted into whitespace.

string = input.gsub(/[^a-z0-9\s]/i, '')



# We ask the user to introduce the encryption rule (integer number)

puts "Introduce the encryption rule (integer number)"
n = gets.chomp.to_i



def solve_cipher(string, n)
  string.split('').map do |x|
    new_index = x.ord + n
 

if x == ' '
   new_index = ' '.ord - 26
end

if new_index > 'z'.ord
      new_index = 'a'.ord + new_index - 'z'.ord - 1
end


if new_index < 'a'.ord
   new_index = 'z'.ord - ('a'.ord - new_index) + 1
end
    
   new_index.chr

end.join

end


puts solve_cipher(string,n)


