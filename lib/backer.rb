require 'pry'

class Backer
  attr_accessor :name, :backed_projects, :project

  @@all_backers = []

  def self.all
    @@all_backers
  end

  def initialize(name)
    @name = name
    @backed_projects = []
    @@all_backers << self
  end

  def save
   @@all_backers << self
  end

  def backed_projects
    @backed_projects
  end

  def self.create(name)
    backer = Backer.new(name)
    backer.save
    backer
  end

   def back_project(project)
    Project.find_or_create_by_title = project.name

    # self.project.add_backer(self)
   end

  def self.find_or_create_by_name(name)
    if !self.all.detect {|backer| backer.name == name}
      backer = self.create(name)
    else
      self.all.detect {|backer| backer.name == name}
    end
  end

end
