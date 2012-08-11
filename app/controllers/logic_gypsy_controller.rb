class LogicGypsyController < ApplicationController
  def index
  end
   
  def show
     age=params[:txt_age]
    # intreasts=params[:txt_inter]
     destination=params[:txt_from]
     t=Place.where("place_name like '#{destination}'")
     places=""
     answer=""
     puts "t= #{t}"
     answer=t.first[:tags]
     @results=[]
     answer.split(",").each do |intreasts|
       @results << BlrPlace.where("tags like '%#{intreasts}%'")
     end
  end

end
