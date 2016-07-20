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
	def self.generate_skills(charobj)
		CClassesController.pick_poro(charobj.get_cclass)
		@poro.generate_skills
	end

	# increases the level of an already-created character object
	def self.level_up(charobj)
		pick_poro(charobj.get_cclass).level_up
	end

	def self.print_info
		@poro.message
	end
end
