class TwiclonesController < ApplicationController
  # def index
  # end

  def new
    @twiclones = Twiclone.all
    @twiclone = Twiclone.new
  end

  def create
    Twiclone.create(content: params[:twiclone][:content])
    if params[:back]
    render :new
  else
      if @twiclone.save
        redirect_to '/twiclones/new'
      else
        render 'new'
      end
    end
  end

  def confirm
    @twiclone = Twiclone.new(content: params[:twiclone][:content])
  end


  def edit
  end
  
  private
  # def content_params
  #   params.require(:twiclone).permit(:content)
  # end
end
