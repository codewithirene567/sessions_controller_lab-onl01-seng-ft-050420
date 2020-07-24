class SessionsController < ApplicationController
    
    def new

    end

    def create
        if #session[:name] = nil?
            session[:name] =! params[:name]
            redirect_to '/login'
        elsif params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to "/"
        end
    end

    def destroy
        session.clear
    end

end