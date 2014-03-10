require 'spec_helper'

describe Game do
	context "associations" do
		it { should have_many(:players) }
		it { should have_many(:at_bats) }
	end

	context "validations" do
		it { should validate_presence_of :team }
	end
end
