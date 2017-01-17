class MatchesController < ApplicationController

  def index
    matches = Match.where({ team: params[:team_id]})
    render :json => matches.as_json
  end

end