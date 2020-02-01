# This file will contain initial values to populate the database
# It will require the models for all the things it will create new instances of
require("pry-byebug")

# require_relative('../models/potion.rb')
require_relative('../models/type.rb')
require_relative('../models/maker.rb')


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
maker3 = Maker.new({'name' => 'The Wimbledon Witch', 'evil' => 99, 'certified' => true})
maker3.save

binding.pry
nil
