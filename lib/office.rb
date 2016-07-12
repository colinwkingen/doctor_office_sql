class Doctor
  attr_reader(:name, :specialty, :id, :patients)
  @@doctors = []
  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @specialty = attributes[:specialty]
    @id = @@doctors.length + 1
    @patients = []
  end

  define_method(:info) do
    info = {:name => @name, :specialty => @specialty, :id => @id, :patients => @patients}
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

  define_singleton_method(:find) do |id|
    found_doc = nil
    @@doctors.each() do |doctor|
      if doctor.id().eql?(id)
        found_doc = doctor
      end
    end
    found_doc
  end

end
