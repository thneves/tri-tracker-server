class StaticController < ApplicationController
  def home
    render json: { status:  "it's working my friend!" }
  end
end
