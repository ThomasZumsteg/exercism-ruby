# Circular Buffer

A data structure that uses a single, fixed-size buffer as if it were connected end-to-end.

A circular buffer, cyclic buffer or ring buffer is a data structure that
uses a single, fixed-size buffer as if it were connected end-to-end.

A circular buffer first starts empty and of some predefined length. For
example, this is a 7-element buffer:

    [ ][ ][ ][ ][ ][ ][ ]

Assume that a 1 is written into the middle of the buffer (exact starting
location does not matter in a circular buffer):

    [ ][ ][ ][1][ ][ ][ ]

Then assume that two more elements are added — 2 & 3 — which get
appended after the 1:

    [ ][ ][ ][1][2][3][ ]

If two elements are then removed from the buffer, the oldest values
inside the buffer are removed. The two elements removed, in this case,
are 1 & 2, leaving the buffer with just a 3:

    [ ][ ][ ][ ][ ][3][ ]

If the buffer has 7 elements then it is completely full:

    [6][7][8][9][3][4][5]

When the buffer is full an error will be raised, alerting the client
that further writes are blocked until a slot becomes free.

The client can opt to overwrite the oldest data with a forced write. In
this case, two more elements — A & B — are added and they overwrite the
3 & 4:

    [6][7][8][9][A][B][5]

Finally, if two elements are now removed then what would be returned is
not 3 & 4 but 5 & 6 because A & B overwrote the 3 & the 4 yielding the
buffer with:

    [ ][7][8][9][A][B][ ]

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

Wikipedia [view source](http://en.wikipedia.org/wiki/Circular_buffer)
