# Say

Write a program that will take a number from 0 to 999,999,999,999 and spell out that number in English.

## Step 1

Handle the basic case of 0 through 99.

If the input to the program is `22`, then the output should be
`'twenty-two'`.

Your program should complain loudly if given a number outside the
blessed range.

Some good test cases for this program are:

- 0
- 14
- 50
- 98
- -1
- 100

### Extension

If you're on a Mac, shell out to Mac OS X's `say` program to talk out
loud.

## Step 2

Implement breaking a number up into chunks of thousands.

So `1234567890` should yield a list like 1, 234, 567, and 890, while the
far simpler `1000` should yield just 1 and 0.

The program must also report any values that are out of range.

## Step 3

Now handle inserting the appropriate scale word between those chunks.

So `1234567890` should yield `'1 billion 234 million 567 thousand 890'`

The program must also report any values that are out of range.  It's
fine to stop at "trillion".

## Step 4

Put it all together to get nothing but plain English.

`12345` should give `twelve thousand three hundred forty-five`.

The program must also report any values that are out of range.

### Extensions

Use _and_ (correctly) when spelling out the number in English:

- 14 becomes "fourteen".
- 100 becomes "one hundred".
- 120 becomes "one hundred and twenty".
- 1002 becomes "one thousand and two".
- 1323 becomes "one thousand three hundred and twenty-three".

Refer exercism help page at http://help.exercism.io/getting-started-with-ruby.html for ruby installation and learning resources.

For running the tests provided, you will need the Minitest gem. Open a terminal window and run the following command to install minitest:

    gem install minitest

In order to run the test, you can run the test file from the exercise directory. For example, if the test suite is called `hello_world_test.rb`, you can run the following command:

    ruby hello_world_test.rb

## Source

A variation on JavaRanch CattleDrive, exercise 4a [view source](http://www.javaranch.com/say.jsp)
