#Calculator outputs

def calculator(x, y):
    print (x)
    print("+")
    print (y)
    print ("=")
    return x + y

press = calculator(6, 4)

print (press)


#BMI calculator #2 (Height in meters. Weight in kilofgrams)

name1 = "Franklin"
height1 = 2
weight1 = 90

name2 = "Michael"
height2 = 1.8
weight2 = 70

name3 = "Trevor"
height3 = 2.5
weight3 = 160

def bmi_calculator(name, height, weight):
    bmi = weight / (height** 2)
    print("bmi : ")
    print(bmi)
    if bmi < 25 :
        return name + " Is not Overweight"
    else :
        return name + " Is overweight"

result1 = bmi_calculator(name1, height1, weight1)
result2 = bmi_calculator(name2, height2, weight2)
result3 = bmi_calculator(name3, height3, weight3)

print(result1)
print(result2)
print(result3)



