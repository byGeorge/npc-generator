class BarbarianPoro
	def new
		puts "blah? BLAH!"
	end

	def generate_abilities(chartemp, stat)
		chartemp.set_strength(stat[5])
		chartemp.set_constitution(stat[4])
		chartemp.set_hit_points(stat[4])
		stat.delete_at(5)
		stat.delete_at(4)
		stat.shuffle!
		chartemp.set_dexterity(stat[0])
		chartemp.set_intelligence(stat[1])
		chartemp.set_wisdom(stat[2])
		chartemp.set_charisma(stat[3])
	end

	def level_up(chartemp)
		
	end
end