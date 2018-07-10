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
  
end
