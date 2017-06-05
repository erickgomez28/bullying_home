class BullyingsController < ApplicationController
  def index
  	@bullyings = Bullying.all
  end

  def show
  end

  def edit
  end
end
