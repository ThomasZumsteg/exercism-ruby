# Phone Number

Write a program that cleans up user-entered phone numbers so that they can be sent SMS messages.

The rules are as follows:

- If the phone number is less than 10 digits assume that it is bad
  number
- If the phone number is 10 digits assume that it is good
- If the phone number is 11 digits and the first number is 1, trim the 1
  and use the last 10 digits
- If the phone number is 11 digits and the first number is not 1, then
  it is a bad number
- If the phone number is more than 11 digits assume that it is a bad
  number

We've provided tests, now make them pass.

Hint: Only make one test pass at a time. Disable the others, then flip
each on in turn after you get the current failing one to pass.

Refer exercism help page at http://help.exercism.io/getting-started-with-ruby.html for ruby installation and learning resources.

For running the tests provided, you will need the Minitest gem. Open a terminal window and run the following command to install minitest:

    gem install minitest

In order to run the test, you can run the test file from the exercise directory. For example, if the test suite is called `hello_world_test.rb`, you can run the following command:

    ruby hello_world_test.rb

## Source

Event Manager by JumpstartLab [view source](http://tutorials.jumpstartlab.com/projects/eventmanager.html)
