# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN ✌️

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.


# reposts1 = 7
# Expected output: '7 is odd'

# reposts2 = 42
# Expected output: '42 is even'

# reposts3 = 221
# Expected output: '221 is odd'

def odd_or_even (repost)
    if repost % 2 == 0
        p "#{repost} is even"
    else repost % 2 !=0  # <----- this code does not need to be here but it helps me understand the "methods"
        p "#{repost} is odd"
    end
end

odd_or_even(7)
odd_or_even(42)
odd_or_even(221)

# Pseudo code:
            #Create a method (odd_or_even) with a parameter.
            #make a conditional statement (if/else/end)that will return a number either with a remainder or no remainder to separate odd or even, by using (% == 0 for no remainder, or % != 0 for a remainder). 
            # 



# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. 
# HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

# beatles_album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
# beatles_album2 = 'Sgt Pepper'
# # Expected output: 'Sgt Pppr'
# beatles_album3 = 'Abbey Road'
# # Expected output: 'bby Rd'

def beatles_album1 (vowel)
    vowel.delete "aeiou"
end

p beatles_album1('Rubber Soul')
p beatles_album1('Sgt Pepper')
p beatles_album1('Abbey Road')

# Pseudo code:
                #Create a method (beatles_album1) and a parameter to return an argument (I choose to do just one method since they are all missing vowels)
                #using the resource provided, the built in method (.delete) lets you choice to delete certain letters. In this case we need to remove "vowels" on our string.

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

palindrome_test_case1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_test_case2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_test_case3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'


def palindrome_test_case (palindrome)
    if palindrome.downcase == palindrome.downcase.reverse
        'True, this is a palindrome'
    elsif palindrome == palindrome.downcase.reverse
        'True, this is a palindrome'
    else palindrome != palindrome.reverse
        'False, not a palindrome'  
    end
end

puts palindrome_test_case ('Racecar')
puts palindrome_test_case ('LEARN')
puts palindrome_test_case ('Rotator')


# Pseudo code:
            #Create method (palindrome_test_case) with parameter (palindrome)
            #build a conditional statement to incorporate the parameter to pass as an argument
            #inside the conditional use (if/elsif/else/end) along with (.downcase) built in method to put letters in lower casing along with (.reverse). Reverse method will flip the "method".
            #add puts and method name (palindrome_test_case)