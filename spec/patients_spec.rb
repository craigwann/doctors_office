require("spec_helper")

describe(Patient) do

  describe(".all") do
      it("is empty at first") do
        expect(Patient.all()).to(eq([]))
      end
    end

    describe("#==") do
      it("1-is the same patient if they have the same id") do
        patient1 = Patient.new({:name => "Bob", :birthdate => "1979-08-09", :dr_id => 1, :id => nil})
        patient2 = Patient.new({:name => "Bob", :birthdate => "1979-08-09", :dr_id => 1, :id => nil})
        expect(patient1).to(eq(patient2))
      end
    end


  end


  # describe("#save") do
  #   it("2-adds a patient to the array of saved patients") do
  #     test_patient = Patient.new({:name => "Joey", :birthdate =>"1970-01-01", :dr_id => nil, :id => nil})
  #     test_patient.save()
  #     expect(Patient.all()).to(eq([test_patient]))
  #   end
  # end

#   describe("#description") do
#       it("lets you read the description out") do
#         test_task = Task.new({:description => "learn SQL", :list_id => 1})
#         expect(test_task.description()).to(eq("learn SQL"))
#       end
#     end
#
#     describe("#list_id") do
#       it("lets you read the list ID out") do
#         test_task = Task.new({:description => "learn SQL", :list_id => 1})
#         expect(test_task.list_id()).to(eq(1))
#       end
#     end
#
#
# end
