class Employee
  attr_reader :name, :title, :boss, :salary, :employees
  def initialize (name, title, salary)
    @name, @title, @salary = name, title, salary
  end

  def boss=(boss)
    @boss = boss
  end
  def bonus (multiplier)
    @salary * multiplier
  end


end
