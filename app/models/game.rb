class Game < ActiveRecord::Base
  has_many :players
  has_many :at_bats

  validates :team, presence: true

  def lineup
    Lineup.new(self.players)
  end

	def pitcher
		self.players.where(position: "P").last
	end

	def catcher
		self.players.where(position: "C").last
	end

	def first_base
		self.players.where(position: "1B").last
	end

	def second_base
		self.players.where(position: "2B").last
	end 

	def third_base
		self.players.where(position: "3B").last
	end 

	def shortstop
		self.players.where(position: "SS").last
	end 

	def left_field
		self.players.where(position: "LF").last
	end 

	def center_field
		self.players.where(position: "CF").last
	end 

	def right_field
		self.players.where(position: "RF").last
	end 
end
