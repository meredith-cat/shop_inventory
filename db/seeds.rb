require("pry-byebug")

require_relative('../models/potion.rb')
require_relative('../models/type.rb')
require_relative('../models/maker.rb')

Potion.delete_all
Type.delete_all
Maker.delete_all

type1 = Type.new({'name' => 'Healing'})
type1.save
type2 = Type.new({'name' => 'Poison'})
type2.save
type3 = Type.new({'name' => 'Transformation'})
type3.save
type4 = Type.new({'name' => 'Magic'})
type4.save

maker1 = Maker.new({'name' => 'Barry the Unicorn', 'evil' => 1, 'certified' => true})
maker1.save
maker2 = Maker.new({'name' => 'Llandalf the Welsh', 'evil' => 5, 'certified' => true})
maker2.save
maker3 = Maker.new({'name' => 'The Bad Witch', 'evil' => 99, 'certified' => false})
maker3.save
maker4 = Maker.new({'name' => 'The Ok Witch', 'evil' => 13, 'certified' => true})
maker4.save
maker5 = Maker.new({'name' => 'Professor Snape', 'evil' => 50, 'certified' => true})
maker5.save

potion1 = Potion.new({'name' => 'Love Potion No.9', 'description' => 'A powerful love potion, made in the sink.', 'quantity' => 9, 'cost_price' => 4, 'sale_price' => 10, 'maker_id' => maker4.id, 'type_id' => type4.id})
potion1.save
potion2 = Potion.new({'name' => 'Dead-Quick', 'description' => 'Kills your enemies dead, quick!', 'quantity' => 1, 'cost_price' => 1, 'sale_price' => 100, 'maker_id' => maker3.id, 'type_id' => type2.id})
potion2.save
potion3 = Potion.new({'name' => 'Drink Me', 'description' => 'Makes you bigger...or was it smaller?', 'quantity' => 13, 'cost_price' => 6, 'sale_price' => 15, 'maker_id' => maker1.id, 'type_id' => type3.id})
potion3.save
potion4 = Potion.new({'name' => 'Chicken Soup', 'description' => 'It\'s just some chicken soup.', 'quantity' => 2, 'cost_price' => 1, 'sale_price' => 3, 'maker_id' => maker1.id, 'type_id' => type1.id})
potion4.save
potion5 = Potion.new({'name' => 'Flying Ointment', 'description' => 'You\'ll fly! (Probably)', 'quantity' => 6, 'cost_price' => 18, 'sale_price' => 21, 'maker_id' => maker4.id, 'type_id' => type4.id})
potion5.save
potion6 = Potion.new({'name' => 'Polyjuice', 'description' => 'Add some hair or a toenail, and transform!', 'quantity' => 2, 'cost_price' => 80, 'sale_price' => 83, 'maker_id' => maker5.id, 'type_id' => type3.id})
potion6.save
potion7 = Potion.new({'name' => 'Draught Of Sleep', 'description' => 'Zzzzz.....', 'quantity' => 5, 'cost_price' => 5, 'sale_price' => 10, 'maker_id' => maker2.id, 'type_id' => type4.id})
potion7.save
potion8 = Potion.new({'name' => 'XXX', 'description' => 'Probably poison.', 'quantity' => 0, 'cost_price' => 47, 'sale_price' => 66, 'maker_id' => maker3.id, 'type_id' => type2.id})
potion8.save
potion9 = Potion.new({'name' => 'Ent-Draught', 'description' => 'Brings refreshment and vigour.', 'quantity' => 4, 'cost_price' => 15, 'sale_price' => 50, 'maker_id' => maker2.id, 'type_id' => type1.id})
potion9.save
potion10 = Potion.new({'name' => 'Ambrosia', 'description' => 'Drink of the gods, or rice pudding?', 'quantity' => 0, 'cost_price' => 0, 'sale_price' => 1000, 'maker_id' => maker1.id, 'type_id' => type4.id})
potion10.save
potion11 = Potion.new({'name' => 'Warming Mead', 'description' => 'Delicious spiced mead which warms from within.', 'quantity' => 8, 'cost_price' => 12, 'sale_price' => 25, 'maker_id' => maker2.id, 'type_id' => type1.id})
potion11.save

binding.pry
nil
