import array

arr = array.array('f',[101,102,103,104,105,106,107,108])
n = len(arr)
i=0

print("\n================================")

for i in range(n):
    print(arr[i])
    i+=1

print("********************************\nwhile loop")
j=0
while(j<n):
    print(arr[j])
    j+=1


