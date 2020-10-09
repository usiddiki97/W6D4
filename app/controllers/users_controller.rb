class UsersController < ApplicationController

    def index
        user = User.all
        render json: user
        # render plain: "I'm in the index action!"
    end

    def create
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 422
        end
    end
    
    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            redirect_to user_url(user)
        else
            render json: user.errors.full_messages, status: 422
        end    
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_url
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end

end