require('rspec')
require "office"
require "pg"
require "pry"
require "spec_helper"
require "patient"

describe(Patient) do
  before() do
    Patient.clear()
  end

  describe(".all") do
    it "the patient array will begin empty" do
      expect(Patient.all()).to(eq([]))
    end
  end
  describe("#name") do
    it "returns a name of the patient" do
      patient1 = Patient.new({:name => 'Ed', :date_of_birth => '04/04/1984'})
      expect(patient1.name()).to(eq('Ed'))
    end
  end
  describe("#date_of_birth") do
    it "returns the date of birth of the patient" do
      patient1 = Patient.new({:name => 'Ed', :date_of_birth => '04/04/1984'})
      expect(patient1.date_of_birth()).to(eq('04/04/1984'))
    end
  end

  describe("#doctor") do
    it "returns empty if the patient has not chosen a doctor" do
      patient1 = Patient.new({:name => 'Ed', :date_of_birth => '04/04/1984'})
      expect(patient1.doctor()).to(eq([]))
    end
  end

  describe("#info") do
    it "returns info about an individual patient" do
      patient1 = Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
      expect(patient1.info()).to(eq({:name => 'Carl', :date_of_birth => '02/02/1922', :id => 1, :doctor => []}))
    end
  end
  describe("#save") do
    it "will save the patient to an array" do
      patient1 = Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
      patient1.save()
      expect(Patient.all()).to(eq([patient1]))
    end
  end
  describe(".clear") do
    it "will empty out the saved patients from the array" do
      Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
      expect(Patient.clear()).to(eq([]))
    end
  end
  describe(".find") do
    it "finds an individual patient by ID" do
      patient1 = Patient.new({:name => 'Carl', :date_of_birth => '02/02/1922'})
      patient1.save()
      expect(Patient.find(patient1.id())).to(eq(patient1))
    end
  end
end
