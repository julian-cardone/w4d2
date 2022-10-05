class Employee
    attr_reader :salary

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if self.is_a?(Manager)
            return self.total_salary_of_employees * multiplier
        else
            return self.salary * multiplier
        end
    end
end