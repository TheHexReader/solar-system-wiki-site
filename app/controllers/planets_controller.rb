class PlanetsController < ApplicationController
  def index
    @planets = []
    for planet in AstronomicalObjectCharacteristic.all.where(status: AstronomicalObjectDesignation.all.find_by(designation: 'planet').id)
      @planets.append(planet.astronomical_object)
    end
  end

  def show
    @planet = AstronomicalObject.find_by(slug: params[:slug])
    @historic_events = @planet.historic_events
  end
end
