class HomeController < ApplicationController
  def index
    @testimonials = Testimonial.all
    @skills = Skill.all
  end
end
