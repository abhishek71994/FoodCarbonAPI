module Api
  module V1
    class UsersController < ApplicationController
      
      def index
        puts "hitting here"
        @user = User.all
        render json: @user, status: :ok
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
  end
end
