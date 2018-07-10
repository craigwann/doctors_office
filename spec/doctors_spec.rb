require("spec_helper")

describe(Doctor) do
  describe("#==") do
    it("is the same doctor if it has the same name") do
      doctor1 = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      doctor2 = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      expect(doctor1).to(eq(doctor2))
    end
  end

  describe(".all") do
    it("starts off with no lists") do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("lets you save doctors to the database") do
      doctor = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end

  describe("#name") do
    it("tells you the doctor name") do
      doctor = Doctor.new({:name => "Dr. Bob", :specialty =>"dermatology", :id => nil})
      expect(doctor.name()).to(eq("Dr. Bob"))
    end
  end

  describe("#id") do
    it("sets its ID when you save it") do
      doctor = Doctor.new({:name => "Dr. Bob", :specialty =>"dermatology", :id => nil})
      doctor.save()
      expect(doctor.id()).to(be_an_instance_of(Integer))
    end
  end



end
