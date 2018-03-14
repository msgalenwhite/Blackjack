### Blackjack

This is a challenge assigned by Launch Academy to practice Object Oriented Programming and Test Driven Development.

### Tests

Tests can be run using 'rspec'

### Personal Goal

I want to focus on practicing writing tests.  This has been one of my weaknesses in the past and I know that, by approaching this challenge from a Test-Driven perspective, I will improve my ability to write tests as well as decide what should be tested.

### Current Challenge

- How to write tests for methods that involve user input?
# ANSWER: Using an "allow" statement will let you to run a class instance method where "user input" is replaced with a value you provide:

  allow(class_name).to receive(:gets).and_return(thing_you_want)

- How to write tests for methods that involve random elements?
#ANSWER: In this instance, the method that was going to be outputting the strings was split into two methods.  That way I had a method whose only job was to take in arguments and output the correct strings, which is much simpler to test because you can easily control the input.

- How can I adjust my "verify_input" method to account for calling it using uppercase answers in my answer_array?

- How to test for correct output when in a loop?

- From instructions: "While the dealer's best possible hand is below 17, continue hitting. If the dealer's lowest score exceeds 21, output Bust! You win!."
-- This means I need to have a way to calculate the dealer's LOWEST score, not highest
