class TracksController < ApplicationController
  before_action :authenticate_user!

  def index
    binding.pry
    render json: {status: "All tracks"}
  end

  def create
    binding.pry
    render json: {status: "Create new track"}
  end

  def destroy
    render json: {status: "Destroy a track"}
  end
end
