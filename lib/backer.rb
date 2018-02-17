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
    @backed_projects << project
    project.add_backer(self) if !project.backers.include?(self)
   end

  # def self.find_or_create(backer)
  #   if !self.all.detect(backer)
  #     binding.pry
  #     backer = self.create(name)
  #   else
  #     self.all.detect {|backer| backer.name == name}
  #   end
  # end

end
