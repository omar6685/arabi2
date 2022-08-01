class RegisrtationsController < Devise::RegisrtationsController

    private
  
    def sign_up_params
        params.require(:user).perimt(:username, :email, :password_confirmation)
    end
  
    def account_update_params
        params.require(:user).perimt(:username, :email, :password_confirmation, :current_password, :age, :gender, :bio)
    end
    
  end