# Manupulating text in R

#1. Find a sentence online. Save it as a string. 

require(quanteda)
s1 <- 'This is the Chinese new year and it’s a nice time for family reunions'

#2. Select only the third word of the sentence. Save it as a new string.

s3 <- substr(s1, 9,11)

#3. Choose a letter that appears in your sentence. Use the gsub command to replace all instances of that letter with a period. 

gsub('i', '-', s1)

