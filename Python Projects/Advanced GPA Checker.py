# Question 1
import datetime
# Define dictionaries for month names and ordinal numbers
month_names = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December",
}
ordinal_numbers = {
    1: "st",
    2: "nd",
    3: "rd",
    21: "st",
    22: "nd",
    23: "rd",
    31: "st",
}


def convert_date_to_words(date_str):
    """
    Converts a date string in YYYY-MM-DD format to words.

    Args:
        date_str: The date string to convert.

    Returns:
        A string representing the date in words.
    """

    try:
        # Convert date string to datetime object
        date_obj = datetime.datetime.strptime(date_str, "%Y-%m-%d")

        # Extract day, month, and year
        day = date_obj.day
        month = date_obj.month
        year = date_obj.year

        # Get ordinal suffix for the day
        ordinal_suffix = ordinal_numbers.get(day, "th")

        # Construct the string in words
        date_in_words = f"{month_names[month]} {day}{ordinal_suffix}, {year}"

        return date_in_words

    except ValueError:
        return "Invalid date format. Please use YYYY-MM-DD."

# Get user input
date_str = input("Enter a date in YYYY-MM-DD format: ")

# Convert and print the date in words
date_in_words = convert_date_to_words(date_str)
print(date_in_words)

# Question 2

z = input("Press S to convert to capital letter; Press D to convert to lowercase: ")

if z.lower() == 's':
    ab = input("Input your letter: ")
    i = ab.upper()
else:
    ab = input("Input your letter: ")
    i = ab.lower()

print(i)

#Question 3

def checkGPA(GPA): #function to check if accepted or not
    instring = GPA
    if GPA > 2: #if above 2.0, accepted
        print("Your application is accepted, welcome to the university")
    else: #if else 2.0, rejected
        print("Your application is denied, sorry")

print("number 3")
inGPA = float(input("input your GPA:")) #input GPA score, use float to allow decimal number in GPA
while inGPA < 0 or inGPA > 4: #to ensure that input is between 0 and 4
    inGPA = float(input("wrong format, input your GPA:"))
checkGPA(inGPA)#call function to check if accepted or not

# Question 4
def get_rating(grade):
 
 # Return F, D, C, B, or A according to user input grade
  if 0 <= grade <= 50:
    return "F"
  elif 51 <= grade <= 60:
    return "D"
  elif 61 <= grade <= 70:
    return "C"
  elif 71 <= grade <= 90:
    return "B"
  elif 91 <= grade <= 100:
    return "A"
  else:
    return "Invalid grade"

# Get user input and call the function
grade = int(input("Enter your grade for Python course: "))
rating = get_rating(grade)

print(f"Your rating is {rating}")

