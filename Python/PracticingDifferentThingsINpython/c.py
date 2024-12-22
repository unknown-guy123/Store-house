
num1 = 0.0
num2 = 0.0
op = 0.0
answer = 0.0

while(1):
 #Check whether the First value is inn number or not 
  try:
    num1 = input("\nEnter First1 Value: ")
    num1 = float(num1)
  except:
    print("Invalid input")
    num1 = 0.0
    if(str(num1)):
      while(str(num1)): 
       if(str(num1)):
        # num1 = input
        print("\nEnter a number not a WORD.")
        # continue
        break 
        # num1 = float(num1)
        # print("\nValue ",num1)
        # continue
  num1 = input("\nEnter first value: ")              
    #    elif(float(num1)):
    #     print("\ncorrect") 
  if(float(num1)):   
    print ("\nAnswer ")  
       
