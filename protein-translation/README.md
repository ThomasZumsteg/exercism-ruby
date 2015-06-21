# Protein Translation

Write a program that will translate RNA sequences into proteins.

Lets write a program that will translate RNA sequences into proteins. [general ref](http://en.wikipedia.org/wiki/Translation_(biology)

RNA can be broken into three nucleotide sequences called codons, and then translated to a polypeptide like so:
 
RNA: `"AUGUUUUCU"` => translates to

Codons: `"AUG", "UUU", "UCU"` 
=> which become a polypeptide with the following sequence =>

Protein: `"Methionine", "Phenylalanine", "Serine"`
 
There are 64 codons which in turn correspond to 20 amino acids; however, all of the codon sequences and resulting amino acids are not important in this exercise.  If it works for one codon, the program should work for all of them. 
However, feel free to expand the list in the test suite to include them all.  

There are also four terminating codons (also known as 'STOP' codons); if any of these codons are encountered(by the ribosome), all tranlsation ends and the protein is terminated.

All subsequent codons after are ignored, like this:

RNA: `"AUGUUUUCUUAAAUG"` => 

Codons: `"AUG", "UUU", "UCU", "UAG", "AUG"` => 

Protein: `"Methionine", "Phenylalanine", "Serine"`

Note the stop codon terminates the translation and the final methionine is not translated into the protein sequence.  
 
Below are the codons and resulting Amino Acids needed for the exercise.  
**|Codon|               **|Protein
---------------------------------------
AUG                   |Methionine

UUU, UUC              |Phenylalanine

UUA, UUG              |Leucine

UCU, UCC, UCA, UCG    |Serine

UAU, UAC              |Tyrosine

UGU, UGC              |Cystine

UGG                   |Tryptophan

UAA, UAG, UGA         |STOP

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

Tyler Long [view source]()
