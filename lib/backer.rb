class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = backer_name
    @backed_projects = []
  end

end
