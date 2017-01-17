class MatchesController < ApplicationController

  def index
    matches = Match.where({ team: params[:team_id]})
    render :json => matches.as_json({
      include: :pitch
      })
  end

  def create
    match = Match.create({
      date: params[:date],
      team_id: params[:team_id],
      pitch_id: params[:pitch_id]
      })
    render :json => match
  end

end