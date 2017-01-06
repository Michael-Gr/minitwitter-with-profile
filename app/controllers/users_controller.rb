class UsersController < ApplicationController
  def index
    user_id = params["user_id"]

    if user_id
      @tweets = Tweet.all.where(id: user_id)
    # # More user dropdown code
    # elsif user
    #   @tweets = user.tweets
    else
      @tweets = Tweet.all.order("created_at DESC")
    end
  end
end
