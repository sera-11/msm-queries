class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  

  def youngest
    records = Director.where.not({ :dob => nil })
    records = records.order(:dob)
    records = records.reverse_order

    @youngest_director = records.at(0)
    @format_youngest_birthday = @youngest_director.dob.strftime("%B %e, %Y")

    

    render({ :template => "director_templates/youngest" })
  end

  def eldest
    records = Director.where.not({ :dob => nil })
    records = records.order(:dob)

    @oldest_director = records.at(0)
    @format_oldest_birthday = @oldest_director.dob.strftime("%B %e, %Y")



    render({ :template => "director_templates/eldest" })
  end

  def show
    the_id = params.fetch("id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details" })
  end
end
