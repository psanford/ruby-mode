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

  def double_thingy_on_same_line_is_cool
    setup_db = lambda do |repo_name|
      DataMapper.setup(repo_name, "sqlite::memory:")
      DataMapper.repository(repo_name).adapter.resource_naming_convention = lambda do |name|
        DataMapper::Inflector.underscore(DataMapper::Inflector.demodulize(name))
      end
    end
  end

  def end_method #this should be spaced correctly
  end
end
