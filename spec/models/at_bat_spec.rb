require 'spec_helper'

describe AtBat do
  context "validations" do
    it { should validate_presence_of :inning }
    it { should validate_presence_of :result }
    it { should validate_presence_of :base }
  end
end
