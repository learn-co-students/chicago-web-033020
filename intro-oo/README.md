# Intro to Object Orientation

## Objectives

* Define `object` in programming domain
- State = things the object knows about (contents of an array, keys on a hash, exact value of an integer)
- Behavior = what messages an object responds to
* Explain the concept of sending messages
* Create a class and instantiate an instance of the class
- Separation of Concerns = A class should be concerned with one type of thing
* Explain the difference between a class and an instance
* Pass arguments to `new` by defining an initialize method in class
* Create instance methods
* Call methods on the implicit or explicit `self`
* Define attribute readers and writers using `attr_` macros
* Get more practice with array compositions (`each`, `map`, `select`/`filter`)
* Explain the need for variable scope and why it's important to not utilize global variables

## Deliverables

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"user_id": 3, "balance": 100}
```
bank_account["user_id"]
bank_account["balance"] = bank_account["balance"] - 10

Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the customer (user) id of the account
