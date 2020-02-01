require("pry-byebug")

require_relative('../models/potion.rb')
require_relative('../models/type.rb')
require_relative('../models/maker.rb')

Potion.delete_all
Type.delete_all
Maker.delete_all

type1 = Type.new({'name' => 'health'})
type1.save
type2 = Type.new({'name' => 'poison'})
type2.save
type3 = Type.new({'name' => 'magic'})
type3.save

maker1 = Maker.new({'name' => 'Barry the Unicorn', 'evilness' => 1, 'certified' => true})
maker1.save
maker2 = Maker.new({'name' => 'Llandalf the Welsh', 'evil' => 5, 'certified' => true})
maker2.save
maker3 = Maker.new({'name' => 'The Wimbledon Witch', 'evil' => 99, 'certified' => false})
maker3.save

potion1 = Potion.new({'name' => 'Love Potion No.9', 'description' => 'A powerful love potion with built in theme tune.', 'quantity' => 9, 'cost_price' => 4, 'sale_price' => 10, 'maker_id' => maker1.id, 'type_id' => type3.id})
potion1.save
potion2 = Potion.new({'name' => 'Dead-Quick', 'description' => 'Kills your enemies dead quick!', 'quantity' => 1, 'cost_price' => 1, 'sale_price' => 100, 'maker_id' => maker3.id, 'type_id' => type2.id})
potion2.save
potion3 = Potion.new({'name' => 'Drink Me', 'description' => 'Makes you bigger...or was it smaller?', 'quantity' => 13, 'cost_price' => 6, 'sale_price' => 15, 'maker_id' => maker1.id, 'type_id' => type3.id})
potion3.save
potion4 = Potion.new({'name' => 'Chicken Soup', 'description' => 'It\'s just some chicken soup.', 'quantity' => 2, 'cost_price' => 2, 'sale_price' => 3, 'maker_id' => maker1.id, 'type_id' => type1.id})
potion4.save

binding.pry
nil
