require 'spec_helper'

describe Player do
  context "associations" do
    it { should belong_to(:game) }
  end

  context "validations" do
    it { should validate_presence_of :name }
  end
end
