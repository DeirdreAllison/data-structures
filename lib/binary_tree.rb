class Team
  class Employee
    attr_reader :manager, :emp1, :emp2

    def initialize(manager, _emp1 = nil, _emp2 = nil)
      @manager = manager
      @left = left
      @right = right
    end

    def insert(_manager)
    end

    def lonely_manager
      @emp1.nil? && @emp2.nil?
    end
  end
end
