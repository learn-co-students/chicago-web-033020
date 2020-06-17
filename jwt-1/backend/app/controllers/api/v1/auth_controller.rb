
class Api::V1::AuthController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # create a jwt 
      render json: { id: user.id, username: user.username }
    else
      render json: { error: 'Invalid username or password'}
    end


    # find the user based on the username
    # if the user exists 
    #   then check if it has the right password
    #      if thats tru then return the user as json
    #
    # if user name is invalid or pw does not match
    #    return an error message
    #
  end
end
























































  # def create
    # user = User.find_by(username: params[:username])
    # if user && user.authenticate(params[:password])
      # token = JWT.encode({user_id: user.id}, 'secret', 'HS256')
      # render json: { id: user.id, username: user.username, token: token}
    # else
      # render json: { error: 'Not Authorized'}, status: 401
    # end
  # end

  # def show
    # token = request.headers[:Authorization]
    # decoded_token = JWT.decode token, 'secret', true, { algorithm: 'HS256' }
    # user_id = decoded_token.first['user_id']
    # user = User.find(user_id)
    # if user
      # render json: { id: user.id, username: user.username, token: token }
    # else
      # render json: { error: 'Not Authorized'}, status: 401
    # end
  # end
