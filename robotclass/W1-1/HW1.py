def game():
    import random as rd
    round=0
    win=0
    lose=0
    while round<3:
        count=0
        print("please enter 1.paper 2.scissor 3.rock")
        a=int(input())
        if a==1:
            print("You use paper")
            round+=1
        elif a==2:
            print("You use scissor ")
            round+=1
        elif a==3:
            print("You use rock ")
            round+=1
        else :
            print("You are a troll ")
            round+=1

        com=int(rd.randint(1,3))

        if com==1:
            print("Computer use paper ")
        elif com==2:
            print("Computer use scissor")
        elif com==3:
            print("Computer use rock")
        count=a+10*com
        if count==31 or count==12 or count== 23:
            print("You Win")
            win+=1
        elif count==33 or count==22 or count== 11:
            print("It's a tie")
        else:
            print("You Lose")
            lose+=1
    if win<lose:
        print("Match set: You Lose")
    elif win>lose:
        print("Match set: You Win")
    elif win==lose:
        print("Match set: Tie")


######
def class_score():
    class score():
        def __init__(self,name,score1,score2,score3):
            self.name=name
            self.score1=score1
            self.score2=score2
            self.score3=score3
        def avr(self):
            self.avr=(self.score1+self.score2+self.score3)/3
            print("Average score is ",self.avr)
            print(f"{self.name}'s average score is {self.avr}")

    d = input()
    print(f"Create {d}'s file")
    print("Please enter the first score:")
    a = int(input())
    print("Please enter the second score:")
    b = int(input())
    print("Please enter the third score:")
    c = int(input())
    print("",a,b,c,d)
    first=score(d,a,b,c)

    first.avr()


######
def cucumber():
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


###
print("1.rock paper scissor 2.class score 3.calculation")
function=int(input())
if function==1:
    game()
elif function==2:
    class_score()
elif function==3:
    cucumber()