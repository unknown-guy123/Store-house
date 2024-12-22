import random
#asking for range
numrange = int(input("\nEnter range: "))
# print(numrange)
Rnum = random.randrange(numrange)
# print(Rnum)

i=1
#this will run only once.
while (i<4):
    print("Guess ",i)
    guess1 = int(input(": "))
    if(guess1==Rnum):
        print("\ncorrect guess")
        break
    else:
        print("\nwrong guess")
        i+=1

while(1):
#asking for if the user wants to play again on not.
    ask = int(input("\nwant to play again?\n1.play again\n2.Leave now\n:"))
#if yes.
    if(ask==1):
        numrange = int(input("\nEnter range: "))
        # print(numrange)
        Rnum = random.randrange(numrange)
        # print(Rnum)
        i=1

        while (i<4):
           print("Guess ",i)
           guess1 = int(input(": "))
           if(guess1==Rnum):
              print("\ncorrect guess")
              break
           else:
             print("\nwrong guess")
             i+=1
#if not.    
    elif(ask==2):
        print("\nclosing...")
        break 