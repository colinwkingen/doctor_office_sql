class Patient

  @@patients = []
  attr_reader(:name, :date_of_birth, :id, :doctor)
  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @date_of_birth = attributes[:date_of_birth]
    @id = @@patients.length.+(1)
    @doctor = []
  end
  define_method(:info) do
    info = {:name => @name, :date_of_birth => @date_of_birth, :id => @id, :doctor => @doctor}
  end

  define_singleton_method(:all) do
    @@patients
  end
  define_method(:save) do
    @@patients.push(self)
  end
  define_singleton_method(:clear) do
    @@patients = []
  end
  define_singleton_method(:find) do |id|
    found_patient = nil
    @@patients.each() do |patient|
      if patient.id().eql?(id)
        found_patient = patient
      end
    end
    found_patient
  end

end
