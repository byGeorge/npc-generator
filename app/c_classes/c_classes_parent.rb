class CClassesParent
	# "parent" for lack of a better word. 
	# This class exists to help classes to properly create,
	# edit, and level up a Character.

	# Chooses the relevent PORO (plain old ruby object) 
	# so that the correct maths happen
	def pick_poro(cclass)
		if cclass == 1
			@poro = CClasses::BarbarianPoro.new
		elsif cclass == 2
			@poro = CClasses::BardPoro.new
		elsif cclass == 3
			@poro = CClasses::ClericPoro.new
		elsif cclass == 4
			@poro = CClasses::DruidPoro.new
		end
	end

	# Creates a level 1 character of the proper class.  
	def create(charobj)
		pick_poro(charobj.get_cclass)
		puts @poro.to_s
	end

	# increases the level of an already-created character object
	def level_up(charobj)
		pick_poro(charobj.get_cclass)
		puts @poro.to_s
	end
end