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

  def crazy_same_line
    (report, rows) = make_test_query([%w{name = Eduardo}])
    assert_equal( 1, rows.length )

  end

  def nesting_should_happen_here
    request = [{
      'query' => {
        "primary_table" => "customer",
        'tables' => {
          'customer' => {
            'columns' => {
              'name' => 'on',
              'email' => 'on',
              'age' => 'on',
              'sex' => 'on',
              'username' => 'on'
            },
          },
        },
      },
      'render' => {
        "as" => "table",
        "columns" => %w{name email age sex username}
      },
    }]
  end

  def curly_multiline_block
    assert_nothing_raised {
      def_from_query_section(request_section)
    }
    request_section['query']['tables'].delete('customer')
    aaefaefa
  end

  def list_of_lists
    Nearbuy::Model::FloorplanLine.create(
      :floorplan_layer => layer,
      :geom => GeoRuby::SimpleFeatures::LineString.from_coordinates([
      [-1, -1], [1, 1],
    ])
    )
  end

  def end_method #this should be spaced correctly
  end
end
