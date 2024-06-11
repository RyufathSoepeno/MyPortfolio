#One Space
a = input("Enter a word ?")
b = a[::-1]

if b == a:
    print("This is a palindrome")
else:
    print("Not a palindrome")


#Two Space

c = input("Enter a sentence with space")
d = c.replace(" ", "")
e = d[::-1]

if d == e:
    print("This is a palindrome")
else:
    print("Not a palindrome")

