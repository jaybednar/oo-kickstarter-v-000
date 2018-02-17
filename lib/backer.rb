class Backer
  attr_accessor :name, :backed_projects

  @@all_backers = []

  def self.all
    @@all_backers
  end

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    self.project = Project.find_or_create_by_title(title)
    self.project.backer = self 
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
