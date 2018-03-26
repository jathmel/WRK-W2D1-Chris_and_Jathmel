class Employee
  attr_reader :name, :title, :boss, :salary
  def initialize (name, title, salary)
    @name, @title, @salary = name, title, salary
  end

  def boss=(boss)
    @boss = boss
  end

end
