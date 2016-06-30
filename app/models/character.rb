class Character < ActiveRecord::Base
	def new
		@cclassid
	end

	def self.set_name(name)
		@name = name
	end

	def self.set_race(raceid)
		@raceid = raceid
	end

	def set_cclass(classid)
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
