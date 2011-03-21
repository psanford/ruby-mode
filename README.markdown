Emacs ruby mode
===============

This is a fork of ruby-mode.el in elpa with a few changes to the indentation rules. This is the style we use at Nearbuy Systems (http://nearbuysystems.com).

Closing Paren
-------------
Closing parens move up one indent level

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
