class IndexController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def index
        render 'index'
    end

    def searchF
        @getList = User.where(username: params[:search]).or(User.where(name: params[:search]))
    end  

    def saveF
        Friend.create!(ower: params[:ower], friend: params[:friend])
    end

    def saveC
        Content.create!(ower: params[:ower], content: params[:content])
        
    end
end
