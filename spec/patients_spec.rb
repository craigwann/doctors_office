# require("spec_helper")
#
# describe(Patients) do
#
#   describe(".all") do
#       it("is empty at first") do
#         expect(Patients.all()).to(eq([]))
#       end
#     end
#   end
#
#   describe("#save") do
#     it("2-adds a task to the array of saved tasks") do
#       test_task = Task.new({:description => "learn SQL", :list_id => 1})
#       test_task.save()
#       expect(Task.all()).to(eq([test_task]))
#     end
#   end
#
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
#   describe("#==") do
#     it("1-is the same task if it has the same description") do
#       task1 = Task.new({:description => "learn SQL", :list_id => 1})
#       task2 = Task.new({:description => "learn SQL", :list_id => 1})
#       expect(task1).to(eq(task2))
#     end
#   end
#
# end
