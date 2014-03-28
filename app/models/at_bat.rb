class AtBat < ActiveRecord::Base
	belongs_to :game

	validates_presence_of :inning
end
