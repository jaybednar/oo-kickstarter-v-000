require 'pry'

class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end

   def back_project(project)
    @backed_projects << project
    project.add_backer(self) if !project.backers.include?(self)
   end

end
