### THOMAS IKIMI

# TECH TEST 1 - BANK Challenge

To build a banking program that handles deposits, withdrawals and statements

## Getting Started

I separated the program into three classes. ACCOUNT, ATM and TRANSACTION.

You create a new account with your name. This holds a 0 balance and an array for your statement. Each time you visit the ATM you must create a new instantiation of the ATM. You then chose to deposit or withdraw. Each initializes with a new transaction object with a blank credit, debit and balance. This is updated with a date, and credit or debit depending on what you are doing, and then an updated balance drawn from the current account used to initialize the current ATM visit.

You can then print your statement from the ATM which triggers the account to generate the print out. I separated the account transactions into the account class rather than having it stored in the atm or transaction class.

### Prerequisites

You should be able to run it by triggering the classes described above. Transaction class does not require an instance as it is triggered by the ATM deposit or withdrawal function.

## Running the tests

The tests for the primary files can be run with rspec.

### REFLECTION

I was very happy with how this turned out. Everything worked as planned and I managed to parse out concerns to various classes.


### WHAT I WOULD LIKE TO IMPROVE

I was happy with this program as per the requirements. 

## Author
* **Thomas Ikimi** - *Initial work* -
