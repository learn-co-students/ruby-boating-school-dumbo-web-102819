require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#create new student instance
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

#create new instructor instance
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

#create new boating test instance
boat_test1 = BoatingTest.new(spongebob, "Don't Crash 102", "passed", puff)

#add new boating test
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

#pass student
# puff.pass_student(patrick, "Power Steering 202")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

