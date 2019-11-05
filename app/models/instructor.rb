class Instructor
    
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        exist = ""
        BoatingTest.all.each do |instance|
            if(instance.student == student && instance.test_name == test_name)
                instance.test_status = "passed"
                exist = true
                return instance
            else
                exist = false
            end
        end
        
        if(!exist)
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        exist = ""
        BoatingTest.all.each do |instance|
            if(instance.student == student && instance.test_name == test_name)
                instance.test_status = "failed"
                exist = true
                return instance
            else
                exist = false
            end
        end
        
        if(!exist)
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

    
    
end
