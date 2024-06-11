#IELTS University acceptor


import random

print("Fake IELTS Admissions page")


k = 0


a = random.uniform(0.0, 9.1)
b = round(a, 1)
Student_A = round(b * 2.0) / 2.0

c = random.uniform(0.0, 9.1)
d = round(c, 1)
Student_B = round(d * 2.0) / 2.0

e = random.uniform(0.0, 9.1)
f = round(e, 1)
Student_C = round(f * 2.0) / 2.0

g = random.uniform(0.0, 9.1)
h = round(g, 1)
Student_D = round(h * 2.0) / 2.0

i = random.uniform(0.0, 9.1)
j = round(i, 1)
Student_E = round(j * 2.0) / 2.0

r = random.uniform(0.0, 9.1)
l = round(r, 1)
Student_F = round(l * 2.0) / 2.0

m = random.uniform(0.0, 9.1)
n = round(m, 1)
Student_G = round(n * 2.0) / 2.0


if Student_A >= 6.5:
    print("Student A:", Student_A)
    k+=1
else:
    print("Student A:",Student_A)

if Student_B >= 6.5:
    print("Student B:",Student_B)
    k+=1
else:
    print("Student B:",Student_B)

if Student_C >= 6.5:
    print("Student C:",Student_C)
    k+=1
else:
    print("Student C:",Student_C)

if Student_D >= 6.5:
    print("Student D:",Student_D)
    k+=1
else:
    print("Student D:",Student_D)

if Student_E >= 6.5:
    print("Student E:",Student_E)
    k+=1
else:
    print("Student E:",Student_E)

if Student_F >= 6.5:
    print("Student F:",Student_F)
    k+=1
else:
    print("Student F:",Student_F)

if Student_G >= 6.5:
    print("Student G:",Student_G)
    k+=1
else:
    print("Student G:",Student_G)


print("There are", k, "Students who accepted through IELTS")
