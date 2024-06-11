#Alphabets used in control statements
#Also use else statements


a = input ("Enter a word")
for i in a:
    if (i == 'a'):
        print ("a is found")
    else:
        print ("a is not found")
        break
        
#Remember : breaks will stop a loop, and python can be very sensitive sometimes

a = input ("Enter a word")
for i in a:
    if (i == 'a'):
        print ("a is found")
    else:
        continue
        print ("a is not found")

#Continue will skip wrong/else outputs in loops

a = input ("Enter a word")
for i in a:
    if (i == 'a'):
        pass
    print (i)
   
#Pass is to ignore a code
