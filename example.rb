#!/usr/bin/ruby
# This is an example class that can be consided our unit tests


class Example
  def array_of_hashes
    array_of_hashes = [{
      :1 => 2
    }, {
      :3 => 4
    }]
  end

  def closing_paren_aligns_with_open
    Example.class_method(
      :arg1 => 1,
      :arg2 => 2,
    )
  end


  def end_method #this should be spaced correctly
  end

end
