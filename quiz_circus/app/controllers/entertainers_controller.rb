class EntertainersController < ApplicationController
  def index
    @entertainers = Entertainer.all
  end

  def show
    @entertainer = Entertainer.find(params[:id])
  end

  def new
    @entertainer = Entertainer.new
  end

  def create
    @circus = Circus.find(params[:circus_id])
    @entertainer = @circus.entertainers.new(entertainer_params)
    if @entertainer.save
      redirect_to @entertainer
    else
      render 'new'
    end
  end

  def edit
    @entertainer = Entertainer.find(params[:id])
  end

  def update
    @entertainer = Entertainer.find(params[:id])
    if @entertainer.save
      redirect_to @entertainer
    else
      render 'edit'
    end
  end

  def destroy
    @entertainer = Entertainer.find(params[:id])
  end

  private
  def entertainer_params
    params.require(:entertainer).permit(:name, :specialty, :circus_id)
  end
end
