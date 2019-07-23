class TwiclonesController < ApplicationController
  before_action :set_twiclone, only:[:show, :edit, :update, :destroy]

  def index
    @twiclones = Twiclone.all
  end

  def new
    @twiclone = Twiclone.new
    if params[:back]
      @twiclone = Twiclone.new(content_params)
    else
      @twiclone = Twiclone.new
    end
  end

  def create
    @twiclone = Twiclone.new(content_params)
    if @twiclone.save
      redirect_to twiclones_path
    else
        render 'new'
    end
  end

  def show
  end

  def updata
    if @twiclone.update(content_params)
      redirect_to twiclones_path
    else
      render 'edit'
    end
  end

  def destroy
    @twiclone.destroy
    redirect_to new_twiclone_path
  end

  def confirm
    @twiclone = Twiclone.new(content_params)
    render :new if @twiclone.invalid?
  end

  def edit
  end

  private

  def content_params
    params.require(:twiclone).permit(:content)
  end

  def set_twiclone
    @twiclone = Twiclone.find(params[:id])
  end
end
