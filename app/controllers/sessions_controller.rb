class SessionsController < ApplicationController

    def create
        if params[:name].nil? || params[:name].blank?
            redirect_to '/session/new'
        else
            session[:name] = params[:name]
            redirect_to '/secrets/show'
        end
    end
    def destroy
        session.delete :name
    end
end