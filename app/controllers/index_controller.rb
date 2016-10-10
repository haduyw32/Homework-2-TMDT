class IndexController < ApplicationController
    def index
        render 'index'
    end

    def searchF
        @getList = User.where(username: params[:search]).or(User.where(name: params[:search]))
    end  

    def saveF
        Friend.create!(ower: params[:ower], friend: params[:friend])
    end  
end
