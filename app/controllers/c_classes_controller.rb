class CClassesController < ApplicationController
	# Chooses the relevent PORO (plain old ruby object) 
	# so that the correct maths happen
	def self.pick_poro(cclass)
		if cclass == 1
			@poro = BarbarianPoro.new
		elsif cclass == 2
			@poro = BardPoro.new
		elsif cclass == 3
			@poro = ClericPoro.new
		elsif cclass == 4
			@poro = DruidPoro.new
		end
	end

	# Creates a level 1 character of the proper class.  
	def self.generate_abilities(cclass)
		d = [0,0,0,0]
		stat = [0,0,0,0,0,0]
		for i in (0..5) 
			#rolls 4d6
			d[0] = rand(1..6)
			d[1] = rand(1..6)
			d[2] = rand(1..6)
			d[3] = rand(1..6)
			#sorts them from lowest to highest
			d.sort!
			#takes the highest three
			stat[i] = d[1] + d[2] + d[3]
		end
		#then sorts the array so that modify_by_class places stats appropriately
		stat.sort!
		pick_poro(cclass)
		@poro.generate_abilities(cclass, stat)
	end

	# increases the level of an already-created character object
	def self.level_up(cclass)
		pick_poro(cclass).level_up
	end
end
