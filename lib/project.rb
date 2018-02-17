class Project
  attr_accessor :name, :backers

  def initialize(project_name)
    @name = project_name
    @backers = []
  end

end
