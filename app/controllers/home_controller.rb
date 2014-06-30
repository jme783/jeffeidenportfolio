class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.all
    @skills = Skill.all
    @projects = Project.all
  end
end
