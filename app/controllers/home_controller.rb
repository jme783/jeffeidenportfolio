class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.all
    @skills = Skill.all.includes(:known_technologies)
    @projects = Project.all
    fresh_when last_modified: @testimonials.maximum(:updated_at)
    fresh_when last_modified: @skills.maximum(:updated_at)
    fresh_when last_modified: @projects.maximum(:updated_at)
  end
end
