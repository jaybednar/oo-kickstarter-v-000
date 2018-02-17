require 'pry'

class Backer
  attr_accessor :name, :backed_projects, :project

  @@allb = []

  def self.all
    @@allb
  end

  def initialize(name)
    @name = name
    @backed_projects = []
    @@allb << self
  end

  def save
   @@allb << self
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
    self.backed_projectst << Project.find_or_create_by_title

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
