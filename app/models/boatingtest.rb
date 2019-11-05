class BoatingTest
    # initialize with Student (Object),
    # a boating test name (String),
    # a boating test status (String), and an Instructor (Object)
    
    attr_reader :student, :test_name, :instructor
    attr_accessor :test_status

    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor

        @@all << self
    end

    def self.all
        @@all
    end

end
