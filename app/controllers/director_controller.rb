class DirectorController < ApplicationController

  def new_form
    render("/director/new_form")
  end

  def create_row
    director = Director.new
    director.name = params[:name]
    director.dob = params[:dob]
    director.bio = params[:bio]
    director.image_url = params[:image_url]
    director.save
    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find(params[:id])
    render("/director/edit_form")
  end

  def update_row
    director = Director.find(params[:id])
    director.name = params[:name]
    director.dob = params[:dob]
    director.bio = params[:bio]
    director.image_url = params[:image_url]
    director.save
    redirect_to("http://localhost:3000/directors")
  end

  def destroy
    @director = Director.find(params[:id])
    @director.delete
    # @director.save
    redirect_to("http://localhost:3000/directors")
  end

  def index
    @list_of_directors = Director.all
    render("/director/index")
  end

  def show
    @director = Director.find(params[:id])
    render("/director/show")
  end

end
