class Project
  attr_accessor :name, :backers

  def initialize(name_of_project)
    @name = name_of_project
    @backers = []
  end
  
end
