require('rspec')
require "office"
require "pg"
require "pry"
require "spec_helper"
require "patient"

describe(Patient) do
  # before() do
  #   Doctor.clear()
  # end

  describe(".all") do
    it "the patient array will begin empty" do
      expect(Patient.all()).to(eq([]))
    end
  end
  describe("#save") do
    it "will save the patient to an array" do
      patient1 = Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
      patient1.save()
      expect(Patient.all()).to(eq([patient1]))
    end
  end
  #
  # describe("#info") do
  #   it "returns info about an individual patient" do
  #     patient1 = Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
  #     patient1.save()
  #     expect(patient1.info()).to(eq({:name => 'Carl', :date_of_birth => '02/02/1922', :id => 1, :doctor => []}))
  #   end
  # end

end
