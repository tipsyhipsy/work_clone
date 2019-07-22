class TwiclonesController < ApplicationController
  def index
  end

  def new
    @twiclone = Twiclone.new
  end

  def create
    Twiclone.create(content:[:content])
    redirect_to '/twiclones/new'
  end

  def edit
  end

  private
  def contact_params
  end
end
