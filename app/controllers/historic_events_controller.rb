class HistoricEventsController < ApplicationController
  def index
    @q = HistoricEvent.ransack(params[:q])
    @historic_events = @q.result
  end
end
