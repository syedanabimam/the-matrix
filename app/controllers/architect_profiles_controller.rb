class ArchitectProfilesController < ApplicationController
before_action :authenticate_architect!
before_action :only_current_architect

def new
  # form where a user can fill out their own profile.
  @architect = Architect.find(params[:architect_id])
  @architect_profile = ArchitectProfile.new
end

def create
  @architect = Architect.find(params[:architect_id])
  @architect_profile = @architect.build_architect_profile(architect_profile_params)
  if @architect_profile.save
    flash[:success] = "Architect Profile Created!"
    redirect_to architect_path(params[:architect_id])
  else
    render action: :new
  end
end

def edit
  @architect = Architect.find(params[:architect_id])
  @architect_profile = @architect.architect_profile
end

def update
  @architect = Architect.find(params[:architect_id])
  @architect_profile = @architect.architect_profile
  if @architect_profile.update_attributes(architect_profile_params)
    flash[:success] = "Architect Profile Updated!"
    redirect_to architect_path(params[:architect_id])
  else
    render action: :edit
  end
end

private

  def architect_profile_params
    params.require(:architect_profile).permit(:architect_name, :architect_phone, :architect_avatar, :architect_bio, :architect_work)
  end

  def only_current_architect
    @architect = Architect.find(params[:architect_id])
    redirect_to(root_url) unless @architect == current_architect
  end
end
