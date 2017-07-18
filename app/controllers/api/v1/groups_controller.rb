class Api::V1::GroupsController < ApplicationController
  def index
    @groups = Group.all
    json_response(@groups)
  end

  def show
    @group = Group.find(params[:id])
    json_response(@group)
  end

  def create
    @group.create!(group_params)
    json_response(@group, :created)
  end
  

  private
    def group_params
      params.permit(:subject)
    end
end
