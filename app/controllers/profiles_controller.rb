class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show]
	before_action :authenticate_user!
  def show
  end

  def edit
  end

  def new
  	unless current_user.profile.present?
  		@profile = current_user.build_profile
  		@bullying = @profile.build_bullying
		else
			redirect_to profile_path(current_user.profile)
  	end
  end

  def create
  	@profile = current_user.build_profile(profile_params)
  	if @profile.save
  		redirect_to @profile, notice: "Has realizado exitosamente tu bullying.  Erick te odiará por siempre..."
  	else 
  		render :new
  	end
  end

  private

  def profile_params
		params.require(:profile).permit(:name, :photo, bullying_attributes: [:message])
  end

  def set_profile
  	@profile = Profile.find_by(user_id: current_user.id)
  end
end
