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