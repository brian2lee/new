print("Please enter your calculation:")
a=input()
b=1
length=len(a)+1
while b<length:
    if a[b]=='*' or a[b]=='/' or a[b]=='+' or a[b]=='-':
        c=b
        break
    b+=1

cal=a[c]

d=int(a[:c])
c+=1

e=int(a[c:])
if cal=='+':
    print("",d+e)
elif cal=='-':
    print("",d-e)
elif cal=='*':
    print("",d*e)
elif cal=='/':
    print("",d/e)
