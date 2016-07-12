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

  describe("#name") do
    it "returns a name of the doc" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      expect(doctor1.name()).to(eq('Steve'))
    end
  end

  describe("#specialty") do
    it "returns a name of the doc" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      expect(doctor1.specialty()).to(eq('Brain Surgeon'))
    end
  end

  describe("#specialty") do
    it "returns a specialty of the doc" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      expect(doctor1.specialty()).to(eq('Brain Surgeon'))
    end
  end

  describe("#patients") do
    it "returns an empty list of patientsin the beginning" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      expect(doctor1.patients()).to(eq([]))
    end
  end

  describe("#save") do
    it "adds a doc to the list" do
      doctor1 = Doctor.new({:name => 'Steve', :specialty => 'Brain Surgeon'})
      doctor1.save()
      doctor2 = Doctor.new({:name => 'Kim', :specialty => 'Oncologist'})
      doctor2.save()
      expect(Doctor.all()).to(eq([doctor1, doctor2]))

    end
  end

end
