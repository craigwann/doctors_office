require("spec_helper")

describe(Doctor) do
  describe("#==") do
    it("is the same doctor if it has the same name") do
      doctor1 = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      doctor2 = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      expect(doctor1).to(eq(doctor2))
    end
  end
  describe("#save") do
    it("lets you save doctors to the database") do
      doctor = Doctor.new({:name => "Dr. Craig", :specialty =>"dermatology", :id => nil})
      doctor.save()
      expect(Doctor.all()).to(eq([doctor]))
    end
  end


#   describe(".all") do
#     it("starts off with no lists") do
#       expect(List.all()).to(eq([]))
#     end
#   end
#
#   describe("#name") do
#     it("tells you its name") do
#       list = List.new({:name => "Epicodus stuff", :id => nil})
#       expect(list.name()).to(eq("Epicodus stuff"))
#     end
#   end
#
#   describe("#id") do
#     it("sets its ID when you save it") do
#       list = List.new({:name => "Epicodus stuff", :id => nil})
#       list.save()
#       expect(list.id()).to(be_an_instance_of(Integer))
#     end
#   end
#
#

end
