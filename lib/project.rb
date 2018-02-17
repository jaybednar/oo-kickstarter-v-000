class Project
  attr_accessor :title, :backers

  @@all_projects = []

  def initialize(title)
    @title = title
    @backers = []
    @@all_projects << self 
  end

  def add_backer(backer)
    @backers << backer
  end

  def find_or_create(project)
    if !@backers
end
