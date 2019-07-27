class TwiclonesController < ApplicationController
  before_action :set_twiclone, only:[:show, :edit, :update, :destroy]

  def index
    @twiclones = Twiclone.all
  end

  def new
    if params[:back]
      @twiclone = Twiclone.new(content_params)
    else
      @twiclone = Twiclone.new
    end
  end

  def confirm
    @twiclone = Twiclone.new(content_params)
    render :new if @twiclone.invalid?
  end

  def create
    @twiclone = Twiclone.new(content_params)
    if @twiclone.save
      redirect_to twiclones_path
    else
        render 'new'
    end
  end

  def edit
  end

  def update
    if @twiclone.update(content_params)
      redirect_to twiclones_path
    else
      render 'edit'
    end
  end

  def destroy
    @twiclone.destroy
    redirect_to twiclones_path
  end

  private

  def content_params
    params.require(:twiclone).permit(:content)
  end

  def set_twiclone
    @twiclone = Twiclone.find(params[:id])
  end
end
