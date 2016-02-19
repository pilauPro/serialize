module Utility
	require 'yaml'

	def self.serialize(yaml)
		YAML::dump(yaml)
	end

	def self.deserialize(yaml)
		YAML::load(yaml)
	end

end
class Hero
	def initialize(name, power, health)
		@name = name
		@power = power
		@health = health
	end
end

matt = Hero.new("Mattalack", 1000, 2500)

# yaml = Utility::serialize(matt)

# puts yaml

# saves = File.open("saves.txt", "r+") do |file|
# 	file.puts yaml
# end

saves = File.open("saves.txt", "r")

yaml = saves.read
puts "before deserialized: #{yaml}"
yaml = Utility::deserialize(yaml)
puts "after deserialized: #{yaml}"