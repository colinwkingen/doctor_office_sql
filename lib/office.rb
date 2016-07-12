class Doctor
  attr_reader(:name, :specialty, :specialty_id, :patients)
  @@doctors = []
  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @specialty = attributes[:specialty]
    @specialty_id = @@doctors.length + 1
    @patients = []
  end

  define_method(:info) do
    info = {:name => @name, :specialty => @specialty, :specialty_id => @specialty_id, :patients => @patients}
  end

  define_singleton_method(:all) do
    @@doctors
  end

  define_method(:save) do
    @@doctors.push(self)
  end

  define_singleton_method(:clear) do
    @@doctors = []
  end

  define_singleton_method(:find) do |specialty_id|
    found_doc = nil
    @@doctors.each() do |doctor|
      if doctor.specialty_id().eql?(specialty_id)
        found_doc = doctor
      end
    end
    found_doc
  end

  # define_method(:add_patient)
  #
  # end


end
