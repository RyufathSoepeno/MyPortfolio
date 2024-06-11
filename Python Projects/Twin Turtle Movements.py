import turtle

wn = turtle.Screen()
# input("Press Enter to continue..") --> I commented this because it interrupts my execution process for my ide
wn.bgcolor("lightgreen")

tess = turtle.Turtle()
tess.color("blue")
tess.shape("turtle")

teddy = turtle.Turtle()
teddy.color("orange")
teddy.shape("turtle")

print(range(5, 60, 2))
tess.up()
teddy.up()

for size in range(5, 60, 2):
    tess.stamp()
    teddy.stamp()

    tess.forward(size)
    teddy.forward(size)

    # Move them in a royal pattern
    tess.right(16)
    teddy.left(16)

# Change the shape of tess to square and teddy to circle upon end
tess.shape("square")
teddy.shape("circle")

wn.exitonclick()
