class V1::UsersController < ApplicationController
  
  def index
    @user = User.all
    render json: @user, each_serializer: UsersSerializer
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user, status: :created
  end

  def destroy
    @user = User.where(id: params[:id]).first
    if @user.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end
  private

  def user_params
    params.require(:contact).permit(:first_name, :last_name, :email)
  end
end
