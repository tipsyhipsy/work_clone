class TwiclonesController < ApplicationController
  # def index
  # end

  def new
    @twiclones = Twiclone.all
    @twiclone = Twiclone.new
  end

  def create
    Twiclone.create(content: params[:twiclone][:content])
    redirect_to '/twiclones/new'
  end

  def edit
  end
  private
  # def content_params
  #   params.require(:twiclone).permit(:content)
  # end
end
