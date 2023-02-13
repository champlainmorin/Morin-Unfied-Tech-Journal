import itertools

def mangle_word(word):
    # List of mangled words
    mangled_words = []

    # Capitalize first letter
    mangled_words.append(word.capitalize())

    # Capitalize every letter
    mangled_words.append(word.upper())

    # Add digits to end of word
    for i in range(10):
        mangled_words.append(word + str(i))

    # Add special characters to end of word
    special_characters = ['!', '@', '#', '$', '%', '^', '&', '*']
    for char in special_characters:
        mangled_words.append(word + char)

    # Reverse word
    mangled_words.append(word[::-1])

    # Replace letters with numbers that look similar
    mangled_words.append(word.replace('a', '@').replace('s', '$').replace('o', '0'))

    # Concatenate multiple mangled words
    #for i in range(2, len(mangled_words) + 1):
    #    for combination in itertools.combinations(mangled_words, i):
    #        mangled_words.append(''.join(combination))

    # Remove duplicates
    
    for x in range(0, len(mangled_words)):
        mangled_words.append(mangled_words[x].capitalize())
        mangled_words.append(mangled_words[x].upper())
        
    mangled_words = list(set(mangled_words))


    return mangled_words

word = "samwise"
mangled_list = mangle_word(word)

for word in mangled_list:
    print(word)
#print(len(mangled_list))