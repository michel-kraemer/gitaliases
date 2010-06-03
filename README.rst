==========
Gitaliases
==========

These are some bash aliases and functions that make the average git
user's life easier. The commands have been tested under
`msysgit <http://code.google.com/p/msysgit>`_ but they should work
on other platforms too.

Installation
------------

Clone the repository into your home directory::

  cd ~
  git clone git://github.com/michel-kraemer/gitaliases.git

Include ``gitaliases.sh`` in your ``.bashrc``::

  echo source ~/gitaliases/gitaliases.sh >> ~/.bashrc

Usage
-----

The following aliases are provided:

``add``
  Verbose add (executes ``git add -v`` and then ``git status``). All
  parameters will be forwarded to ``git add``.
  
  | `Example:`
  |   ``add -p foobar.txt``
``branch``
  Alias for ``git branch``
``checkout``
  Alias for ``git checkout``
``cherry-pick``
  Alias for ``git cherry-pick``
``commit``
  Alias for ``git commit``
``fetch``
  Alias for ``git fetch``
``g``
  Alias for ``git``
``gadd``
  Pipes the output of ``git ls-files`` to ``grep`` to add only those
  files that match a given pattern. All parameters (including the
  pattern) will be forwarded to grep. Like ``add`` this command is
  verbose and calls ``git status`` at the end.
  
  | `Example:`
  |  ``gadd -i '\.java$'``
``greset``
  Pipes the output of ``git ls-files`` to ``grep`` to reset only those
  files that match a given pattern. All parameters (including the
  pattern) will be forwarded to grep. Like ``reset`` this command
  calls ``git status`` at the end.
  
  | `Example:`
  |  ``greset 'bin'``
``log``
  Alias for ``git log``
``merge``
  Alias for ``git merge``
``pull``
  Executes ``git pull --rebase`` and then displays all commits since
  the last pull in a short format.
``push``
  Alias for ``git push``
``reset``
  Verbose reset (executes ``git reset -v`` and then ``git status``).
  All parameters will be forwarded to ``git reset``.
``st``
  Alias for ``git status``
``stash``
  Alias for ``git stash``

Acknowledgements
----------------

Special thanks to Simon Templer and Simon Thum for their input!

License
-------

This work is licensed under the
`MIT license <http://www.opensource.org/licenses/mit-license.php>`_:

Copyright (c) 2010 Michel Kraemer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
