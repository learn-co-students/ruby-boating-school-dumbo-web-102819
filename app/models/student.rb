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

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        @@all.find{|student|
            student.first_name == first_name
        }
    end

    def grade_percentage
    #used each instead of two selects here to 
    #avoid parsing through array twice when once is sufficient
    passed_tests = 0
    all_tests = 0
    BoatingTest.all.each{|test|
        if test.student == self
            all_tests += 1
            test.test_status == 'passed' ? passed_tests += 1 : nil
        end
    }
    (passed_tests.to_f/all_tests.to_f)*100
    end
end
