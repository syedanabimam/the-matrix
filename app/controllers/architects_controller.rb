class ArchitectsController < ApplicationController
  before_action :authenticate_architect!
  # before_action :set_user, only: %i[show edit update]

  # GET /users
  def index
    # @users = User.all.order('id asc')
    @architects = Architect.includes(:architect_profile)
  end

  # GET /users/1
  def show
    @architect = Architect.find(params[:id])
  end
end
