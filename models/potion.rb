require_relative('../db/sql_runner.rb')

class Potion

  attr_reader :id, :name, :description, :quantity, :cost_price, :sale_price, :maker_id, :type_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @quantity = options['quantity']
    @cost_price = options['cost_price']
    @sale_price = options['sale_price']
    @maker_id = options['maker_id']
    @type_id = options['type_id']
  end

  def save
    sql = 'INSERT INTO potions
    (name, description, quantity, cost_price, sale_price, maker_id, type_id) VALUES ($1, $2, $3, $4, $5, $6, $7)
    RETURNING id'
    values = [@name, @description, @quantity, @cost_price, @sale_price, @maker_id, @type_id]
    results = SqlRunner.run(sql, values)
    @id = results.first['id'].to_i
  end

# TO TEST
  def update
    sql = 'UPDATE potions
    SET (name, description, quantity, cost_price, sale_price, maker_id, type_id) = ($1, $2, $3, $4, $5, $6, $7)
    WHERE id = $8'
    values = [@name, @description, @quantity, @cost_price, @sale_price, @maker_id, @type_id, @id]
    results = SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE from potions
    WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM potions"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM potions"
    results = SqlRunner.run(sql)
    potions = results.map {|potion| Potion.new(potion)}
    return potions
  end

  def self.find(id)
    sql = "SELECT * FROM potions
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Potion.new(results.first)
  end

  def maker
    sql = "SELECT * FROM makers
    WHERE id = $1"
    values = [@maker_id]
    results = SqlRunner.run(sql, values)
    return Maker.new(results.first)
  end

  def type
    sql = "SELECT * FROM types
    WHERE id = $1"
    values = [@type_id]
    results = SqlRunner.run(sql, values)
    return Type.new(results.first)
  end

  def markup
    @markup = (@sale_price.to_i) - (@cost_price.to_i)
  end

end
