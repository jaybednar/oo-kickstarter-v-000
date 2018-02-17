class Project
  attr_accessor :title, :backers

  @@allp = []

  def self.all
    @@allp
  end

  def initialize(title)
    @title = title
    @backers = []

  end

  def save
   @@allp << self
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
    @backers << backer
    backer.backed_projects << self
  end
end
