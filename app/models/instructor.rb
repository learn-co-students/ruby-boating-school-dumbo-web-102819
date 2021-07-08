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

    def find_student(first_name)
        self.all.find { |student| student.first_name == self.name }
    end

    def find_test(student,test_name)
        BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
    end

    def pass_student(student,test_name)
        test = find_test(student,test_name)
        if test
            test.test_status = "passed"
        else
            BoatingTest.new(student,test_name,"passed",self)
        end
    end

    def fail_student(student,test_name)
        test = find_test(student,test_name)
        if test
            test.test_status = "failed"
        else
            BoatingTest.new(student,test_name,"failed",self)
        end
    end
end
