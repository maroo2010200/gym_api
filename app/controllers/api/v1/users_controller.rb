class Api::V1::UsersController < ApplicationController
  def index
    users = User.all

    if users
      render json: { status: "SUCCESS", message: "Fetched all the users", data: users }, status: :ok
    else
      render json: users.errors, status: :bad_request
    end
  end
end