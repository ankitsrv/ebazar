class RestaurentsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    if current_user.type == "Owner"
      @restaurents =  current_user.restaurents
    else
      @restaurents = Restaurent.all
    end

  end

  def create
    if current_user && current_user.type == "Owner"
      @restaurent = Restaurent.new(params_require)
      @restaurent.owner = current_user
      @restaurent.save!
      redirect_to restaurent_path(@restaurent)
    else
      redirect_to new_session_path
    end
  end

  def show
    @restaurent = Restaurent.find(params[:id])
  end

  private

  def params_require
    params.require(:restaurent).permit(:name, :address, :phone, :avatar)
  end
end
