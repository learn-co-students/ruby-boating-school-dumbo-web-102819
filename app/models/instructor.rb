class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        find_and_change_student_grade(student, test_name, 'passed')
    end

    def fail_student(student, test_name)
        find_and_change_student_grade(student, test_name, 'failed')
    end





    
    private
    #DRY's out pass_student and fail_student methods
    def find_and_change_student_grade(student, test_name, status)
        test_found = BoatingTest.all.find{|test|
            test.test_name == test_name && test.student == student
        }
        if test_found
            test_found.test_status = status
            return test_found
        else
            BoatingTest.new(student, test_name, status, self)
        end
    end
end
