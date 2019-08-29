# Bank Tech Test #

### Project Description ###

* A simple Ruby app which you can interact with through the command line
* Enables the user to withdraw, deposit funds.
* Enables user to print a bank statement, consisting of date, amount and balance.


### User Stories ###

As a user,
So I can have a safe place to keep my money
I'd like to be able to make a deposit

As a User,
So I can spend my money,
I'd like to be able to withdraw money from my account

As a User,
So I can keep tabs on whats going in and out of my account,
I'd like to be able to see a printed bank statement.

### Solution ###

I decided to model my solution into 3 separate classes, which allowed for a simple foundation from which to launch my development cycle. The bank class processes the withdraw or deposit, sends a request for a printed statement, and holds an array of the users transactions. The transaction class holds the transaction amount and check whether a valid amount had been entered by the user. The Statement class builds a formatted statement consisting of the users transactions. I think this gives reasonable seperating of responsibilities.

### Gems ###

* Simplecov - gives test coverage

### How to start the program ###

First, clone this repository

To run tests:

```
cd bank-tech-test
bundle install
rspec
```

To run the program:

```
irb
require './bank.rb'
```

To quit:

```
quit
```


### Example output ###

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
