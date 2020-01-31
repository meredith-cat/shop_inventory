require_relative('db/sql_runner.rb')

# Give all values attr_reader
# Types need init, save, update, delete, find, potions methods.

class Type

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

end
