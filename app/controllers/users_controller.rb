class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end
    
    def show
        user = User.find(params[:id])
        render json: user.styles
    end

    def create
        user = User.create(user_params)
       
        render json: user
    end

    def searchUser
        user = User.find_by(username: params[:username])
        render json: {user: user, styles: user.styles}
    end

    private 
   
    def user_params
        params.require(:user).permit(:username, :password)
    end
end
