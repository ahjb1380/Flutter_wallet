class BankAccount:
    
    def __init__(self,balance,):
        self.balance=0
        print("Hello!!! Welcome to the Deposit & Withdrawal Machine")
    def deposit(self):
        amount=float(input("Enter amount to be Deposited: "))
        self.balance += amount
        print("\n Amount Deposited:",amount)
    def withdraw(self):
        amount = float(input("Enter amount to be Withdrawn: "))
        if self.balance>=amount:   #check whether enough balance is present or not?
                self.balance-=amount     #if yes, then subtract from current balance and allow withdrawal of money
                print("\n You Withdrew:", amount)
        else:   #if no, then display error message and don't allow withdrawal of money
                print("\n Insufficient balance")
                return('Insufficient Balance')

    def display(self):              #displaying the current account details with remaining balance after transactions
        print("\n Net Available Balance=",self.balance)