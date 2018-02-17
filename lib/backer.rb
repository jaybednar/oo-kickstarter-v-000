class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    project = Project.find_or_create_by_title(title)
    @backed_projects << project
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|backer| backer.name == name}
      self.all.detect {|backer| backer.name == name}
    else
      backer = Backer.new(name)
      backer
    end
  end

end
