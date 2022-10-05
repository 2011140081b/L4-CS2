class ApplicationController < ActionController::Base
    def main
        if session[:login_uid] != nil then
            render "main"
        else
            render "login"
        end
        
    end
    def login 
        id = params[:uid]
        pass = params[:pass]
        if id =="kindai" && pass == "sanriko" then
            session[:login_uid] = id
            redirect_to root_path
    
            
        else
            render "error"
        end
            
        
    end
    
    def logout
        session.delete(:login_uid)
        
        render "login"
    end
end
