class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user == nil
            redirect_to 'new'
        else
            return head(:forbidden) unless @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to '/users/show'
        end
    end

    def destroy_all
    end

end