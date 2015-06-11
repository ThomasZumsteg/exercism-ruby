# Robot Simulator

Write a robot simulator.

## Step 1

The robot factory manufactures robots that have three possible
movements:

- turn right
- turn left
- advance

Robots are placed on a hypothetical infinite grid, facing a particular
direction (north, east, south, or west) at a set of {x,y} coordinates,
e.g., {3,8}.

## Step 2

Robots can pivot left and right.

The robot factory manufactures robots that have three possible
movements:

- turn right
- turn left
- advance

The factory's test facility needs a program to verify robot movements.

There are a number of different rooms of varying sizes, measured in
Robot Units, the distance a robot moves when you instruct it to
`advance`.

The floor of the room is a grid, each square of which measures 1 square
RU (Robot Unit).

The rooms are always oriented so that each wall faces east, south, west,
and north.

The test algorithm is to place a robot at a coordinate in the room,
facing in a particular direction.

The robot then receives a number of instructions, at which point the
testing facility verifies the robot's new position, and in which
direction it is pointing.

## Step 3

The robot factory manufactures robots that have three possible
movements:

- turn right
- turn left
- advance

The robot factory's test facility has a simulator which can take a
string of letters and feed this into a robot as instructions.

- The letter-string "RAALAL" means:
  - Turn right
  - Advance twice
  - Turn left
  - Advance once
  - Turn left yet again
- Say a robot starts at {7, 3} facing north. Then running this stream
  of instructions should leave it at {9, 4} facing west.

* * * *

For installation and learning resources, refer to the
[exercism help page](http://help.exercism.io/getting-started-with-ruby.html).

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for runnng
the test file.

In order to run the test, you can run the test file from the exercise
directory. For example, if the test suite is called
`hello_world_test.rb`, you can run the following command:

    ruby hello_world_test.rb

To include color from the command line:

    ruby -rminitest/pride hello_world_test.rb

The test files may have the execution bit set so you may also be able to
run it like this:

    ./hello_world_test.rb


## Source

Inspired by an interview question at a famous company. [view source]()
