Emacs ruby mode
===============

This is a fork of ruby-mode.el in elpa with a few changes to the indentation rules. This is the style we use at Nearbuy Systems (http://nearbuysystems.com).

Closing Paren
-------------
The first change makes closing parens move up one indent level.
Before:
    Module.method(
      :arg1 => 1,
      :arg2 => 2
      )

After:
    Module.method(
      :arg1 => 1,
      :arg2 => 2
    )


Multi-level Nesting
-------------------
The other change makes multi-level data structures not change the indent level more than once if more than one opening character is on the same line.
Before:
    array_of_hashes = [{
        :1 => 2
      }, {
        :3 => 4
      }]

After:
    array_of_hashes = [{
      :1 => 2
    }, {
      :3 => 4
    }]

Note that the parser gets confused if you have different opening and closing styles:
    array_of_hashes = [{
      :1 => 2
    }, {
      :3 => 4
    }
    ]

