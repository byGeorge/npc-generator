class Character < ActiveRecord::Base
	def self.new
		puts "oh hey, I'm new"
	end

	def self.set_name(name)
		@name = name
	end

	def self.set_race(raceid)
		@raceid = raceid
	end

	def self.set_cclass(classid)
		@cclassid = classid
	end

	def self.get_name
		@name
	end

	def self.get_race
		@raceid
	end

	def self.get_cclass
		@cclassid
	end
end
