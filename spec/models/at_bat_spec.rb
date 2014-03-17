require 'spec_helper'

describe AtBat do
	context "validations" do
		it { should validate_presence_of :inning }
	end
end
