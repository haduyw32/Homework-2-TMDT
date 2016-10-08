class LoginController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def login
        render 'login'
    end

    def loginp
        if params[:submit] == 'Register'
            redirect_to '/signup'
            return
        end
        if User.find_by(username: params[:_id]) == nil
            @showCaution = 1
            render 'login'
        else
            redirect_to '/'
        end

    end

    def signup
        render 'signup'
    end

    def signupp
        if params[:submit] == 'Login'
            redirect_to '/login'
            return
        end
        if User.find_by(username: params[:username]) != nil
            @showCaution = 1
            render 'signup'
            return
        end
        User.create!(name: params[:name], username: params[:username], password: params[:password])
        redirect_to '/login'
    end
end
