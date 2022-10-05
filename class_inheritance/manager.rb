require_relative "employee"

class Manager < Employee
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def total_salary_of_employees
        total_salary = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                total_salary += employee.salary + employee.total_salary_of_employees
            else
                total_salary += employee.salary
            end
        end
        total_salary
    end
end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

darren.add_employee(shawna)
darren.add_employee(david)

ned.add_employee(darren)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000