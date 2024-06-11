## caesar.py

# -----> Note that the program can decrypt a message if the user enters 26 minus the original key


# 5. You can use input() to read a string from standard input
msg = input("Enter message to be encrypted: ")

# 6. You can read a shift number string from standard input
shiftstr = input("Enter shift amount (1-25): ")
shift = int(shiftstr)

# 1. You need to define a function encode(msg, shift) that has two parameters: a message to be encoded and a shift number
def encode(msg, shift):
    newmsg = ""

    # 2. In the function definition, you can use a for loop to enumerate every character in the  original message.
    for ch in msg:

        # 3. How to code a letter with a shift number?
        if 'A' <= ch <= 'Z':
            # Cipher the character based on the shift number
            newch = chr((ord(ch) - ord('A') + shift) % 26 + ord('A'))
        # Check if the character is a lowercase letter
        elif 'a' <= ch <= 'z':
            # Cipher the character based on the shift number
            newch = chr((ord(ch) - ord('a') + shift) % 26 + ord('a'))
        else:
            # 4. Note that a string object in Python is immutable
            newch = ch

        #later while looping over each ch on the old message, you can make new message by attaching the new character encoded
        #with the on-progress new message
        newmsg += newch

    return newmsg

print("Encrypted message:", encode(msg, shift))
