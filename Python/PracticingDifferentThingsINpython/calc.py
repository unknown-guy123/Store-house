num1 = 0.0
num2 = 0.0
op = 0.0
answer = 0.0

while(1):
  while(1):
    try:
      num1 = input("\nEnter First1 Value: ")
      num1 = float(num1)
      break
    except:
      print("Invalid input")
      num1 = 0.0

  while (1):
    op = input("\nEnter operation (+,-,*,/): ")
    if (op=='+' or op=='-' or op=='*' or op=='/' or op=='q' or op=='Q'):
      break
   
  while(1):
    try:
      num2 = input("\nEnter Second Value: ")
      num2 = float(num2)
      break
    except:
      print("Invalid input")
      num2 = 0.0

  match op:
    case '+':
      answer = num1 + num2
      print("Add Ans=", answer)
    case '-':
      answer = num1 - num2
      print("Sub Ans=", answer)
    case '*':
      answer = num1 * num2
      print("Mult Ans=", answer)
    case '/':
      answer = num1 / num2
      print("Divd Ans=", answer)
    case 'q':
      print("\nclosing...")
      break
    case 'Q':
      print("\nClosing...")
      break    