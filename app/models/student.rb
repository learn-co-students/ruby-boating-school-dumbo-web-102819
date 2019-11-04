class Student
    @@all = []
    attr_reader :first_name
    def initialize(first_name)
        @first_name = first_name 
        @@all << self
    end 
    def self.all
        @@all
    end 
    def self.find_student(first_name)
        @@all.find do |instance|
            instance.first_name == first_name 
        end 
    end 
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(test_name, status, self, instructor)
    end 
    def boating_tests 
        BoatingTest.all.select do |instance|
            instance.student == self
        end 
    end 

    def grade_percentage
        count = 0
       boating_tests.each do |instance|
        if instance.status == "passed"
            count += 1
        end 
       end 
       count * 1.00 / boating_tests.count
    end 
end
