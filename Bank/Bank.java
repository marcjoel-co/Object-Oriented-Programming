public class Bank {
    // pin, owner,

    public double balance;
    public int pin;
    public int accNum;
    public String owner;

    

    public Bank(int pin, String owner, double balance, int accNum) {
        this.pin = pin;
        this.owner = owner;
        this.balance = 0;
        this.balance = balance;
        this.accNum = accNum;
    }

    public void deposit(double depAmt) {
        this.balance += depAmt;
    }

    public void  withdraw(double depAmt) {
        
        if (this.balance < depAmt) {
            System.out.println("Insufficient funds");
            return;
        }

        this.balance -= depAmt;

    }

    public void changePin(int newPin, int oldPin) {

        System.out.println("Enter old pin");
        if (this.pin == oldPin) {
            System.out.println("Enter new pin");
            this.pin = newPin;
        } else {
            System.out.println("Incorrect pin");
        }        

    }

    public void checkBalance() {
        System.out.println("Your balance is: " + this.balance);
    }

}