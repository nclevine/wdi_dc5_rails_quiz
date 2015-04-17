class CircusesController < ApplicationController
  def index
    @circuses = Circus.all
  end

  def show
    @circus = Circus.find(params[:id])
  end

  def new
    @circus = Circus.new
  end

  def create
    @circus = Circus.new(circus_params)
    if @circus.save
      redirect_to @circus
    else
      render 'new'
    end
  end

  def edit
    @circus = Circus.find(params[:id])
  end

  def update
    @circus = Circus.find(params[:id])
    if @circus.update(circus_params)
      redirect_to @circus
    else
      render 'edit'
    end
  end

  def destroy
    @circus = Circus.find(params[:id])
    @circus.destroy
    redirect_to circuses_path
  end

  private
  def circus_params
    params.require(:circus).permit(:name, :image_url)
  end
end
