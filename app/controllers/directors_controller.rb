class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list" })
  end

  def show
    the_id = params.fetch("id")

    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details" })
  end

  def youngest
    records = Director.where.not({ :dob => nil })

    render({ :template => "directors/youngest" })
  end

  def oldest
    render({ :template => "directors/oldest" })
  end
end
