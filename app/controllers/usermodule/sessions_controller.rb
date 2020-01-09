module Usermodule
  class SessionsController < Devise::SessionsController
    respond_to :json
    skip_before_action :verify_authenticity_token
    before_action :authorize_request, except: :create

    def create
      myuser = User.find_by(email: params[:user][:email].downcase)
      myuserexist = myuser.valid_password?(params[:user][:password])
      if myuserexist
        token = JsonWebToken.encode(user_id: myuser.id)
        render json: { token: token, status: :Created }
      else
        render json: { status: 401 }
      end
    end

    def new
      render json: { status: :Autorizado }
    end

    private

    def respond_with(resource, _opts = {})
      render json: resource
    end

    def respond_to_on_destroy
      head :no_content
    end
  end
end
