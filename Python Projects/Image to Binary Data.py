# Function to convert image file to binary
def convert_to_binary(filename):
    with open(filename, 'rb') as file:
        binary_data = file.read()
    return binary_data

print(convert_to_binary('C:\Users\TOSHIBA\Downloads\MyImage.jpg'))
