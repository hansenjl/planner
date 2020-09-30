class UsersController < ApplicationController

    def create
        u = User.find_or_create_by(user_params)
        render json: u.to_json
    end

    def index
        render json: User.all.to_json
    end

    private
    def user_params
        params.require(:user).permit(:email)
    end
end
