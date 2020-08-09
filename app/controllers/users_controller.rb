class UsersController < ApplicationController
    def index
        render json: User.all 
    end


    def create
        user = User.create(user_params)
        if user.save
            render json: { id: user.id, name: user.name, email: user.email }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end


    def login
        user = User.find_by(email: user_params[:email])
        render json: user
    end

    def show
        user = User.find_by(email: user_params[:email])
        render json: user
    end

    def logout
    end

    private
    def user_params
        puts params
        params.require(:user).permit(:name, :password, :email)
    end

end
