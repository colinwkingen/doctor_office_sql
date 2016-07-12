class Patient

  @@patients = []
  attr_reader(:name, :date_of_birth)
  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @date_of_birth = attributes[:date_of_birth]
    @id = @@patients.length.+(1)
    @doctor = []
  end
  define_singleton_method(:all) do
    @@patients
  end
  define_method(:save) do
    @@patients.push(self)
  end
end
