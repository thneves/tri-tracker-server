class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    tracks = current_user.tracks.to_json

    render json: {data: tracks, status: :ok }
  end

  def create
    render json: {status: "Create new track"}
  end

  def destroy
    render json: {status: "Destroy a track"}
  end
end
