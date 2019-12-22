class ProfilesController < ApplicationController
before_action :set_user    
    def show
    end
private
    def set_user
        @User = User.find(params[:id])
    end    
  end
  