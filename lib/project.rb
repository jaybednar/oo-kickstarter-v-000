class Project
  attr_accessor :title, :backers

  @@all_projects = []

  def self.all
    @@all_projects
  end

  def initialize(title)
    @title = title
    @backers = []

  end

  def save
   @@all_projects << self
  end

  def self.create(title)
    project = Project.new(title)
    project.save
    project
  end

  def backers
    @backers
  end

  def add_backer(backer)
    backer = Backer.find_or_create_by_name(name)
    self.backers.backed_projects << self
    self.backers << backer
  end

  def self.find_or_create_by_title(title)
    if !self.all.detect {|project| project.title == title}
      project = self.create(title)
    else
      self.all.detect {|project| project.title == title}
    end
  end
end
