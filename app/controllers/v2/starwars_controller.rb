class Api::V2::StarwarsController < ApplicationController
  def index
    @starwars = StarWar.all
  end

  def show
    @starwar = StarWar.find_by(id: params[:id])
  end

  def create
    @starwar = StarWar.create(
    character: params[:character],
    droid: params[:droid],
    planet: params[:planet],
    vehicle: params[:vehicle],
    quote: params[:quote]
    )
    render 'show'
  end

  def edit
    @starwar = StarWar.find_by(id: params[:id])
    @starwar.update(
    character: params[:character],
    droid: params[:droid],
    planet: params[:planet],
    vehicle: params[:vehicle],
    quote: params[:quote]
    )
    render 'show'
  end

  def destroy
    @starwar = StarWar.find_by(id: params[:id])
    @starwar.destroy
    render 'deleted.html.erb'
  end

end
