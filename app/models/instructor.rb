
# `Instructor` class:
class Instructor

  attr_reader :name
   # * `Instructor.all` should return all instructors
   @@all = []
   def self.all
     @@all
   end

  # * initialize with a name
  def initialize (name)
    @name = name

    self.class.all << self
  end

  # * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
  def pass_student(student, test)
    test_check = BoatingTest.all.find{|test| test.student == student && test.test_name == test}

    if test_check == true
      test_check.test_status = "passed"
    else
      BoatingTest.new( student, test, "passed", self)
    end
  end

  # * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
  def fail_student (student, test)
    test_check = BoatingTest.all.find{|test| test.student == student && test.test_name == test}

    if test_check == true
      test_check.test_status = "failed"
    else
      BoatingTest.new( student, test, "failed", self)
    end
  end


  end
