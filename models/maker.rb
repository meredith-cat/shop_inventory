require_relative('../db/sql_runner.rb')

class Maker

  attr_reader :id, :name, :evil, :certified

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @evil = options['evil'].to_i
    @certified = options['certified']
  end

  def save
    sql = 'INSERT INTO makers
    (name, evil, certified) VALUES ($1, $2, $3)
    RETURNING id'
    values = [@name, @evil, @certified]
    results = SqlRunner.run(sql, values)
    @id = results.first['id'].to_i
  end

# TO TEST
  def update
    sql = 'UPDATE makers
    SET (name, evil, certified) = ($1, $2, $3)
    WHERE id = $4'
    values = [@name, @evil, @certified, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE from makers
    WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM makers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM makers"
    results = SqlRunner.run(sql)
    makers = results.map {|maker| Maker.new(maker)}
    return makers
  end

  def self.find(id)
    sql = "SELECT * FROM makers
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Maker.new(results.first)
  end

# TO TEST
  def potions
    sql = "SELECT * FROM potions
    WHERE maker_id = $1"
    values = [@id]
    makers = SqlRunner.run(sql, values)
    potions = results.map{|potion| Potion.new(potion)}
    return potions
  end

  # def zombie()
  #   sql = "SELECT * FROM zombies
  #   WHERE id = $1"
  #   values = [@zombie_id]
  #   results = SqlRunner.run( sql, values )
  #   return Zombie.new( results.first )
  # end


end
