class BoatingTest
    attr_reader :student, :test_name, :status, :instructor
    @@all = []
    def initialize(test_name, status, student, instructor)
        @student = student
        @test_name = test_name
        @status = status
        @instructor = instructor 
        @@all << self
    end 
    def self.all
        @@all
    end 

end
