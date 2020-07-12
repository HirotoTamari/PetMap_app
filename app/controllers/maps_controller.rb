class MapsController < ApplicationController

  def index
  end

  #mapアクション
  def map
    respond_to do |format|
      format.js
    end
  end

  def about
  end
end
