class Patient

  attr_reader(:name, :birthdate, :dr_id, :id)

   def initialize(attributes)
     @name = attributes.fetch(:name)
     @birthdate = attributes.fetch(:birthdate)
     @dr_id = attributes.fetch(:dr_id)
     @id = attributes.fetch(:id)
   end

   def self.all
       returned_patients = DB.exec("SELECT * FROM patients;")
       patients = []
       returned_patients.each() do |patient|
         name = patient.fetch("name")
         birthdate = patient.fetch("birthdate")
         dr_id = patient.fetch("dr_id").to_i()
         patients.push(Patient.new({:name => name, :birthdate => birthdate, :dr_id => dr_id}))
       end
       patients
     end

  def save
    # grabs the instance info and saves it into the table in the database
      result = DB.exec("INSERT INTO patients (name, birthdate) VALUES ('#{@name}', '#{@birthdate}') RETURNING id;")
      @id = result.first().fetch("id").to_i()
    end

  def ==(another_patient)
    self.name().==(another_patient.name()).&(self.dr_id().==(another_patient.dr_id()))end


end
