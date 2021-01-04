class HomeController < ApplicationController
  before_action :common, :only => [:index,:team]

  def common
    @hero_name = Faker::Superhero.name #able to access this instance variable through the methods
    @power =  Faker::Superhero.power #in the before_action
    @food = Faker::Food.dish 
    @job = Faker::Job.title
    @job_power = Faker::Company.bs
    @job_power = @job_power.titleize 
    @random_number = rand(1..1000)
    @set_num = rand(1..3)
    @background = rand(1..2)

    if @set_num == 1
    	@set = "set1"
    elsif @set_num == 2
    	@set = "set2"
    else 
      @set = "set3"
    
    end

    
    if @background == 1
    	@bg = "bg1"
    else
    	@bg = "bg2"
    
    end




    @avatar = Faker::Avatar.image(slug: @random_number , size: "300x300", format: "bmp", set: @set, bgset: @bg)

  end
  
  def index
  end

  def team
    @team_number = params[:team_number].to_i
  end

end
