import random

# Define the matrix size
MATRIX_SIZE = 10
FILLER = '.'

# Create a list to represent a row filled with FILLER '.'
row_template = [FILLER] * MATRIX_SIZE

# Create the matrix filled with FILLER '.'
matrix = []
for _ in range(MATRIX_SIZE):
    matrix.append(row_template[:])

# Set to keep track of filled positions
filled_positions = set()

# Start with the first letter of the alphabet
letter = 'A'

# Fill the matrix with random letters
while letter <= 'Z':
    # Find a random position for the current letter
    while True:
        x = random.randint(0, MATRIX_SIZE - 1)
        y = random.randint(0, MATRIX_SIZE - 1)
        if (x, y) not in filled_positions:
            filled_positions.add((x, y))
            matrix[x][y] = letter
            break

    # Move to the next letter
    letter = chr(ord(letter) + 1)

# Print the matrix
for row in matrix:
    print(' '.join(row))
