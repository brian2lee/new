import random as rd
round=0
win=0
lose=0
while round<3:
    count=0
    print("please enter 1.paper 2.scissor 3.rock")
    a=input()
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

    com=rd.randint(1,3)

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