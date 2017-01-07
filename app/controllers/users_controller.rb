class UsersController < ApplicationController
  def index
    user_id = params["user_id"]

    if user_id
      @tweets = Tweet.all.order("created_at DESC").where(user_id: user_id)
      split_name = @tweets[0].user.email.split("@")
      @user_name = split_name[0]
    # # More user dropdown code
    # elsif user
    #   @tweets = user.tweets
    else
      @tweets = Tweet.all.order("created_at DESC")
    end
  end
end
