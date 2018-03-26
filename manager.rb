require_relative 'employee'

class Manager < Employee
  def initialize(name, title, salary)
    super(name, title, salary)
    @employees = []
  end
   def assign_empoyee(person)
     @employee << person
     person.boss = self
   end
end
