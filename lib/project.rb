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

  def add_backer(name)
    @backers << name 
  end

  # def add_project(title)


  # def self.find_or_create(project)
  #   if !self.all.detect {|project| project.title == title}
  #     project = self.create(title)
  #   else
  #     self.all.detect {|project| project.title == title}
  #   end
  # end
end
