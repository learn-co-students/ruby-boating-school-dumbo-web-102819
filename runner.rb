require 'pry'

require_relative 'app/models/boatingtest.rb'
require_relative 'app/models/instructor.rb'
require_relative 'app/models/student.rb'

i1 = Instructor.new("jim")
s1 = Student.new('Isabelle')

s1.add_boating_test('one', 'passed', i1)
s1.add_boating_test('two', 'failed', i1)
s1.add_boating_test('three', 'passed', i1)
s1.add_boating_test('four', 'failed', i1)
s1.add_boating_test('five', 'failed', i1)
s1.add_boating_test('six', 'failed', i1)
s1.add_boating_test('seven', 'failed', i1)

binding.pry
0
