class Student

    attr_reader :first_name

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

    def self.find_student(name)
        self.all.find do |instance|
            instance.first_name == name
        end
    end

    def grade_percentage
        tests = BoatingTest.all.select do |instance|
            instance.student == self
        end
        
        total_tests_taken = tests.length
        passed_test = 0

        tests.each do |test|
            if test.test_status == "passed"
                passed_test += 1
            end
        end

        total_tests_taken

        (passed_test/total_tests_taken.to_f * 100).round(2)
        
    end

end
