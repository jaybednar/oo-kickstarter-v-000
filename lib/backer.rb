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
    if self.all.detect {|project| project.title == title}
      self.all.detect {|project| project.title == title}
    else
      project = Project.new(title)
      project
    end
  end

end
