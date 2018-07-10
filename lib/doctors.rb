class Doctor
  attr_reader(:name, :specialty, :id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @specialty = attributes.fetch(:specialty)
    @id = attributes.fetch(:id)
  end

  def ==(doctor_list)
    self.name().==(doctor_list.name()).&(self.id().==(doctor_list.id()))
  end

  def save
    result = DB.exec("INSERT INTO doctors (name, specialty) VALUES ('#{@name}', '#{@specialty}' ) RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  def self.all
  returned_doctors = DB.exec("SELECT * FROM doctors;")
  doctors = []
  returned_doctors.each() do |doctor|
    name = doctor.fetch("name")
    specialty = doctor.fetch("specialty")
    id = doctor.fetch("id").to_i()
    doctors.push(Doctor.new({:name => name, :specialty => specialty, :id => id}))
  end
  doctors
end


end
