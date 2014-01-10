Demonstration of stream redirection
===================================

Command Line
------------

commands in the command line can be redirected to use files as input stream using <
and to send there output stream to a file using >

Ruby
----

puts methods sends its arguments to the standard output stream
gets collects from the standard input stream.

NB redirecting the input stream to a file and using get will fetch one line at a time

Example
-------
with the command lines working directory as this directory the following command will demonstrate this program

$ ruby stream-redirection.rb < names.txt > expanded-names.txt

ALTERNATIVE

$ ruby stream-redirection.rb < names.txt >> expanded-names.txt 
(To append output to expanded-name.txt)