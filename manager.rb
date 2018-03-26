require_relative 'employee'


class Manager < Employee
  def initialize(name, title, salary)
    super(name, title, salary)
    @employees = []
  end
  def assign_empoyee(person)
   @employees << person
   person.boss = self
  end

  def get_total_sal(employees)
    return 0 if employees.nil? || employees.empty?
    tol_sal = 0
    if employees.first.employees
      tol_sal += employees.first.salary + employees.first.get_total_sal(employees.first.employees)
    else
      tol_sal += employees.first.salary + get_total_sal(employees.drop(1))
    end
    tol_sal
  end

  def bonus(multiplier)
    get_total_sal(@employees) * multiplier
  end

end
