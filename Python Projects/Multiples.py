#Compute all multiples of 3, 5
#That are less than 100

print(list(range(1, 100)))

print("This is a new line")

x = 0

for y in range(1, 100):
    if y % 3 == 0:
        x = x + y
    elif y % 5 == 0:
         x = x + y
print(x)
