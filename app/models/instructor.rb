class Instructor
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name 
        @@all << self
    end 
    def self.all
        @@all
    end 
    def boating_tests
        BoatingTest.all.select do |instance|
            instance.instructor == self 
        end 
    end 
    def add_boating_test(test_name, status, student)
        BoatingTest.new(test_name, status, student, self)
    end 
    def pass_student(student_instance, test_name)
        BoatingTest.all.each do |instance|
            if instance.student == student_instance && instance.test_name == test_name
                instance.status = "passed"
                return instance
            else 
                return add_boating_test(test_name, "passed", student_instance)
            end 
        end    
    end 
    def fail_student(student_instance, test_name) 
        BoatingTest.all.each do |instance|
            if instance.student == student_instance && instance.test_name == test_name
                instance.status = "failed"
                return instance
            else 
                return add_boating_test(test_name, "failed", student_instance)
            end 
        end    
    end 
end
