class Project
  attr_accessor :title, :backers

  @@all_projects = []

  def self.all 
    @@all_projects
  end 
  
  def initialize(title)
    @title = title
    @backers = []
    @@all_projects << self
  end

  def add_backer(backer)
    @backers << backer
  end

  def self.find_or_create(project)
    if !self.
end
