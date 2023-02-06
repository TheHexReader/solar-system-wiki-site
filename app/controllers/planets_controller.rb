class PlanetsController < ApplicationController
  def index
    @planets = AstronomicalObject.all
  end

  def show
    @planet = AstronomicalObject.find(params[:id])
  end
end
