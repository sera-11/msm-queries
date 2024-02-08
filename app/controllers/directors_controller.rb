class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  

  def youngest
    records = Director.where.not({ :dob => nil })
    

    @youngest_director = records.at(0)

    

    render({ :template => "director_templates/youngest" })
  end

  def eldest
    render({ :template => "director_templates/eldest" })
  end

  def show
    the_id = params.fetch("id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details" })
  end
end
