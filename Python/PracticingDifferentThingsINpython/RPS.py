import random
#computer choices
Cchoices = ('Rock','paper','scissors')
print(Cchoices)
# #user choice variables
rounds = int(input('\nEnter number of rounds: '))

for n in range(rounds):
  i = 0
  i += 1
  print(i)
  while i < rounds:
    Pchoices = ''
    print('\nRound ',i)
    try:
      Pchoices = int(input('\nEnter your choice (rock(1), paper(2), scissors(3): '))
      l = len(Pchoices)
      if l > 1:
        print("\nInvaild choice...\n")
    except:
      print(random.choice(Cchoices))
      if(Pchoices == 1 and Cchoices == 2):
        print(random.choice(Cchoices))
        print('\nYou LOSE')
      elif(Pchoices == 2 and Cchoices == 1):
        print('\nYou WIN')
      elif(Pchoices == 2 and Cchoices == 3):
        print('\nYou LOSE') 
      elif(Pchoices == 3 and Cchoices == 2):
        print('\nYou WIN')
      elif(Pchoices == 3 and Cchoices == 1):
        print('\nYou LOSE')
      elif(Pchoices == 1 and Cchoices == 3):
        print('\nYou WIN')