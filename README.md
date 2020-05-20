# think
A write only text editor written as a shell script.

The think command can be used to enter lines of text into any terminal.
They will be appended with timestamps to a file named thoughts.org located in the current working directory.
If think is called without an argument, it will instead print the most recent contents of thoughts.org, or create it if it does not exist.

This allows quick note taking without having to open a text editor or create a new file, Simply dump text into any terminal.

The thoughts are formated as org mode headings for easy curation in emacs latter on.

# Installation
To install, simply mark think.sh as executable and put a link somewhere in your $PATH, To remove simply delete it.

# Usage
```bash
$ think
* Tue 19 May 2020 05:06:00 PM PDT
	I think therefore I am.

$ think This is an example thought.
* Tue 19 May 2020 05:06:08 PM PDT
	This is an example thought.
$ think
* Tue 19 May 2020 05:06:00 PM PDT
	I think therefore I am.

* Tue 19 May 2020 05:06:08 PM PDT
	This is an example thought.
$
```
# Future ideas

* Make code more tidy.
* Sanitize inputs so apostrophes and quotes won't break it.
* create dream command that reads a thought file and runs it through a markov chain.


