
num1 = 0.0
num2 = 0.0
while (num1==0.0):
    try:
        num1 = input("Enter First Value:")
        num1 = float(num1)
    except:
        print("Invalid input")
        num1 = 0.0

while (num2==0.0):
    try:
        num2 = input("Enter Second Value:")
        num2 = float(num2)
    except:
        print("Invalid input")
        num2 = 0.0

print("Addition Ans = ", num1 + num2)
