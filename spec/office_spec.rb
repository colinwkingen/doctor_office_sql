require('rspec')
require "office"
require "pg"
require "pry"
require "spec_helper"

describe(Doctor) do
  describe(".all") do
    it "will be empty at the beginning" do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe("#info") do
    it "returns info about an individual doctor" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      expect(doctor1.info()).to(eq({:name => 'Steve', :specialty => 'Brain Surgeon', :id => 1, :patients => []}))
    end
  end

end
