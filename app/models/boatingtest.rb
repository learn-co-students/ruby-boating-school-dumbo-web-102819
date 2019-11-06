#
# `BoatingTest` class:
class BoatingTest

  attr_reader :student, :test_name, :instructor
  attr_accessor  :test_status

# * `BoatingTest.all` returns an array of all boating tests
  @@all = []
  def self.all
    @@all
  end

  # * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def initialize(student, test, status, teacher)
    @student = student
    @test_name = test
    @test_status = status
    @instructor = teacher
    self.class.all << self
  end

end
