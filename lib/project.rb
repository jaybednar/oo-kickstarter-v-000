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
    artist
  end

  def backers
    @backers
  end

  def add_backer(backer)
    # backer = Backer.find_or_create_by_name(name)
    # self.backers.backed_projects << self
    # self.backers << backer
    # else

  end

  def self.find_or_create_by_title(title)
    if self.all.detect {|project| project.title == title}
      self.all.detect {|project| project.title == title}
    else
      project = Project.new(title)
      project
    end
  end
end
