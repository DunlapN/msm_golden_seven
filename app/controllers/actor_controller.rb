class ActorController < ApplicationController

  def new_form
    render("/actor/new_form")
  end

  def create_row
    actor = Actor.new
    actor.name = params[:name]
    actor.dob = params[:dob]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save
    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find(params[:id])
    render("/actor/edit_form")
  end

  def update_row
    actor = Actor.find(params[:id])
    actor.name = params[:name]
    actor.dob = params[:dob]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save
    redirect_to("http://localhost:3000/actors")
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.delete
    # @actor.save
    redirect_to("http://localhost:3000/actors")
  end

  def index
    @list_of_actors = Actor.all
    render("/actor/index")
  end

  def show
    @actor = Actor.find(params[:id])
    render("/actor/show")
  end

end
