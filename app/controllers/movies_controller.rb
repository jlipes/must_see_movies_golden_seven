class MoviesController < ApplicationController

  def directors
    @data=Director.all
  end

  def details
    @s = Director.find(params["id"])
  end

  def delete
    @s=Director.find(params["id"])
    @s.destroy
    redirect_to("/directors.html")
  end

  def new_form
  end

  def add
    p = Director.new
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @p=Director.find(params["id"])
  end

  def update_form
    p = Director.find(params["id"])
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

end
