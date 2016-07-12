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

end
