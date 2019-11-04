class Student
    attr_accessor :first_name
    
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end

    def self.find_student(first_name)
        all.find { |student| student.first_name == first_name }
    end

    def tests 
        BoatingTest.all.select { |test| test.student == self }
    end

    def grade_percentage
        passed_tests = 0.0
        total_tests = tests.length
        tests.each do |test|
            test.test_status == "passed" ? passed_tests += 1 : passed_tests 
        end
        percentage = passed_tests / total_tests * 100
        percentage
    end
end
