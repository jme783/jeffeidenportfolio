class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.js #renders show.js.erb
    end
  end
end
