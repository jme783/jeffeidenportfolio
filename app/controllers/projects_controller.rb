class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @known_technologies = @project.known_technologies.order(skill_id: :asc, id: :asc).group_by{|t| t.skill.name}
    respond_to do |format|
      format.js #renders show.js.erb
    end
    fresh_when @project
  end
end
