class Api::V1::UsersController < ApplicationController
  respond_to :json
  def show
    respond_with User.find(params[:id])
  end

  def create

  end

  def destroy

  end
end
