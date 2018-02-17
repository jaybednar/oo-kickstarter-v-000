class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|backer| backer.name == name}
      self.all.detect {|backer| backer.name == name}
    else
      project = Backer.new(name)
      project
    end
  end

end
